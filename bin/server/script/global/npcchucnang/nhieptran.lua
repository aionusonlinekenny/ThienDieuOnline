--hoangnhk
Include("\\script\\header\\taskid.lua");
Include("\\script\\header\\vuotai.lua");
Include("\\script\\header\\openclose.lua");
BOSS_SATTHU={
	{"V¹n Hå Tinh",321,35663,82248},
	{"B¶o TriÖt S¬n",321,41339,83846},
	{"Phan Ng¹t Nh¹n",321,39942,96050},
	{"Liªn H×nh Th¸i",321,47900,87972},
	
	{"Cam Ch¸nh C«",319,57888,113728},
	{"D­¬ng Phong DËt",319,61184,115584},
	{"Vò NhÊt ThÕ",319,60992,118240},
	{"Hµ Sinh Vong",319,63680,116064},
	
	{"Gi¶ Giíi Nh©n",9,78848,184256},
	{"TrÞnh Cöu NhËt",9,71264,182944},
	{"Chu Së B¸",9,71808,190272},
	{"Trang Minh Trung",9,79904,188192},
	
	{"T¨ng ChØ O¸n",320,36800,91392},
	{"VÖ Biªn Thµnh",320,46872,88608},
	{"Cè Thñ §»ng",320,47840,91552},
	{"Gia C¸t Kinh Hång",320,42208,85696},
	
	{"Trö Thiªn MÉn",340,39137,87692},
	{"§o¹n L¨ng NguyÖt",340,55493,88554},
	{"NhËm Th­¬ng Khung",340,61636,88584},
	{"T¶ DËt Minh",340,40792,87600}
};

CLOSE_SAY = "KÕt thóc ®èi tho¹i/no";
FIGHT_TIME = "Th¸ch thøc thêi gian/thachthuc"
BUILD_ITEM = "Hîp thµnh s¸t thñ gi¶n/htsatthugian"
MAX_PERDAY = 1000
FTIME_MINPLAYER = 1
FTIME_MAXTIMES = 2
FTIME_MONEY = 150000
GETMISS_MONEY = 20000
function main(NpcIndex)
	if(SERVER_MODE == 1) then
		Talk(1,"",SERVER_NOTICE)
	return end
	if (GetLevel() < 90) then
	Talk(1, "",13900)
	return end
	local bHave = GetNumber(2,GetTask(TASK_NVST),1)
	if(bHave > 0) then
	Say("LINK:<npc>",0,format("NÕu ai cã ®ñ 160 s¸t thñ gi¶n trong tay th× giÊc méng trë thµnh ®Ö nhÊt s¸t thñ ®· xem nh­ hoµn thµnh. Mçi ngµy chØ cÇn hoµn thµnh <color=yellow>%d nhiÖm vô<color> lµ ®­îc. <enter>H·y tiÕp nhËn nhiÖm vô “th¸ch thøc thêi gian” ®Ó thÓ nghiÖm søc m¹nh ®ång ®éi vµ kh¶ n¨ng s¸t thñ cña m×nh.",MAX_PERDAY),4,
	FIGHT_TIME,
	"§i ®Õn n¬i lµm nhiÖm vô [3000 l­îng]/gotomap",
	"Hñy nhiÖm vô s¸t thñ/huynhiemvu",
	BUILD_ITEM,
	CLOSE_SAY)
	return end
	Say("LINK:<npc>",0,format("NÕu ai cã ®ñ 160 s¸t thñ gi¶n trong tay th× giÊc méng trë thµnh ®Ö nhÊt s¸t thñ ®· xem nh­ hoµn thµnh. Mçi ngµy chØ cÇn hoµn thµnh <color=yellow>%d nhiÖm vô<color> lµ ®­îc. <enter>H·y tiÕp nhËn nhiÖm vô “th¸ch thøc thêi gian” ®Ó thÓ nghiÖm søc m¹nh ®ång ®éi vµ kh¶ n¨ng s¸t thñ cña m×nh.",MAX_PERDAY),4,
	FIGHT_TIME,
	"NhiÖm vô s¸t thñ cÊp 90/nhannv",
	BUILD_ITEM,
	CLOSE_SAY)
end;

function thachthuc()
	Say("LINK:<npc>",0,12267,4,
	"Tham gia khiªu chiÕn/khieuchien",
	"KiÓm tra ®iÒu kiÖn tæ ®éi/checknhom",
	"Liªn quan ®Õn khiªu chiÕn/timhieu",
	"M¸u ch¶y ®Çu r¬i, tèt nhÊt nªn tr¸nh xa/no")
end;

function khieuchien()
	local nMapNo = 0;
	
	for i=1,getn(MAP_VUOTAI) do
		if(GetGlbMissionV(i-1) == 0) then
		nMapNo = i;
		end
	end
	
	if(nMapNo == 0) then
		Talk(1,"",10246)
	return end
	
	local nSubWorldId = SubWorldID2Idx(MAP_VUOTAI[nMapNo])
	if nSubWorldId < 0 then	--chua mo map, ngung ham`
	return end
	SubWorld = nSubWorldId;
	local nRestTime = GetMSRestTime(1,1);
	if(IsMission(1) == 0 or nRestTime <= 0) then
		Talk(1,"",12308)--thoi gian chua toi hoac qua gio`
	return end
	if(IsCaptain() ~= 1) then
		Talk(1,"",10244)
	return end
	if(GetTeamSize() < FTIME_MINPLAYER) then ---khong du nguoi toi thieu
		Talk(1,"",10245)
	return end;
	local nTeamId = GetTeam();
	local nCaptain = PlayerIndex;
	local nIndex;
	local nTaskValue;
	--local nPlayerDataIdx;
	for i=0,7 do
		nIndex = GetTeamMem(nTeamId, i );
		if(nIndex > 0) then
			PlayerIndex = nIndex;
			if(GetLevel() < 80) then
			PlayerIndex = nCaptain;
			Talk(1,"",10245)
			return end
			local nSTG = GetItemCount(0,6,399,-1,0) + GetItemCount(0,6,399,-1,1) + GetItemCount(0,6,399,-1,2) +
			GetItemCount(0,6,399,-1,3) + GetItemCount(0,6,399,-1,4);
			if(nSTG < 1) then
			PlayerIndex = nCaptain;
			Talk(1,"",10245)
			return end
			nTaskValue = GetNumber(1,GetTask(TASK_RESET),3) - GetNumber(1,GetTask(TASK_RESET),4);
			if(nTaskValue > 3) then
			PlayerIndex = nCaptain;
			Talk(1,"",10245)
			return end
			if(i == 0 and GetCash() < FTIME_MONEY)	then--doi truong
			Talk(1,"",10245)
			return end
		end
	end
	local nMapAR = 1;
	local w,x,y = GetWorldPos();
	if(w == 11) then
		nMapAR = 2;
		elseif(w == 162) then
		nMapAR = 3;
		elseif(w == 37) then
		nMapAR = 4;
		elseif(w == 78) then
		nMapAR = 5;
		elseif(w == 80) then
		nMapAR = 6;
		elseif(w ==176) then
		nMapAR = 7;
	end
	local count = 0;
	local nTotalTask;
	local nLonghuyet;
	local PlayerTab = {};
	for i=0,7 do
		nIndex = GetTeamMem(nTeamId, i );
		if(nIndex > 0) then
			PlayerTab[count+1] = nIndex;
			count = count + 1;
			PlayerIndex = nIndex;
			nTotalTask = GetTask(TASK_NVST);
			nTotalTask = SetNumber(1,nTotalTask,9, nMapAR);
			SetTask(TASK_NVST, nTotalTask);
			
			nTotalTask = GetTask(TASK_RESET);
			nTaskValue = GetNumber(1,nTotalTask,3);--so lan
			nLonghuyet = GetNumber(1,nTotalTask,4);
			if(nTaskValue > 1) then
				SetTask(TASK_RESET, SetNumber(1,nTotalTask,4,nLonghuyet-1));
				else
				SetTask(TASK_RESET, SetNumber(1,nTotalTask,3,nTaskValue+1));
			end
			
			if(i == 0)	then--doi truong
			Pay(FTIME_MONEY)
			SetMission(0,GetUUID())--ID doi truong param 0
			end
			AddMSPlayer(1,0)
			StopTimer()	--ngung hen gio dang chay bat ky
			SetLogoutRV(1)--dung diem phuc sinh dang nhap
			SetDeathScript("\\script\\player\\death_vuotai.lua") --set script khi chet
			NewWorld(MAP_VUOTAI[nMapNo],1560,3216) --di chuyen vao vuot ai
			SetPunish(1)	--bat tinh nang chet khong mat' gi`
			SetCreateTeam(0)
			SetFightState(1)
			ForbidEnmity(1)
		end
	end
	--set phe phai' chung de khoi danh trung nhau
	PlayerIndex = nCaptain;
	LeaveTeam()	--giai tan nhom
	if(count > 0) then
		for i=1,count do
			PlayerIndex = PlayerTab[i];
			SetCurCamp(1)
			if(GetItemCount(0,6,399,-1,0) > 0) then
			DelItem(1,0,6,399,-1,0)
			elseif(GetItemCount(0,6,399,-1,1) > 0) then
			DelItem(1,0,6,399,-1,1)
			elseif(GetItemCount(0,6,399,-1,2) > 0) then
			DelItem(1,0,6,399,-1,2)
			elseif(GetItemCount(0,6,399,-1,3) > 0) then
			DelItem(1,0,6,399,-1,3)
			else
			DelItem(1,0,6,399,-1,4)
			end
		end
	end
	------------------------------------------------------------
	Msg2MSAll(1,format("Cßn %d gi©y sÏ chÝnh thøc tÝnh thêi gian nhiÖm vô.",floor(nRestTime/18)));
	SetGlbMission(nMapNo-1,1);--set map nay` da co nguoi dang ky
end;

function checknhom()
	if(IsCaptain() ~= 1) then
		Talk(1,"",12299)
	return end
	if(GetLevel() < 80) then
		Talk(1,"",10217)
	return end
	if(GetTeamSize() < FTIME_MINPLAYER) then
		Talk(1,"",12307)
	return end;
	local nSTG = GetItemCount(0,6,399,-1,0) + GetItemCount(0,6,399,-1,1) + GetItemCount(0,6,399,-1,2) +
	GetItemCount(0,6,399,-1,3) + GetItemCount(0,6,399,-1,4);
	if(nSTG < 1) then
		Talk(1,"",12321)
	return end
	if(GetCash() < FTIME_MONEY) then
		Talk(1,"",10218)
	return end
	local nTaskValue = GetNumber(1,GetTask(TASK_RESET),3) - GetNumber(1,GetTask(TASK_RESET),4);
	if(nTaskValue > 3) then
		Talk(1,"",10219)
	return end
	local nTeamId = GetTeam();
	local nCaptain = PlayerIndex;
	local nIndex;
	for i=1,7 do
		nIndex = GetTeamMem(nTeamId, i );
		if(nIndex > 0) then
			PlayerIndex = nIndex;
			local szName = GetName();
			if(GetLevel() < 80) then
			PlayerIndex = nCaptain;
			Talk(1,"",format("Thµnh viªn %s ch­a ®ñ 80 cÊp!",szName))
			return end
			nSTG = GetItemCount(0,6,399,-1,0) + GetItemCount(0,6,399,-1,1) + GetItemCount(0,6,399,-1,2) +
			GetItemCount(0,6,399,-1,3) + GetItemCount(0,6,399,-1,4);
			if(nSTG < 1) then
			PlayerIndex = nCaptain;
			Talk(1,"",format("Thµnh viªn %s kh«ng cã S¸t thñ gi¶n!",szName))
			return end
			nTaskValue = GetNumber(1,GetTask(TASK_RESET),3) - GetNumber(1,GetTask(TASK_RESET),4);
			if(nTaskValue > 1) then
			PlayerIndex = nCaptain;
			Talk(1,"",format("Thµnh viªn %s kh«ng cßn sè lÇn tham gia!",szName))
			return end
		end
	end
	PlayerIndex = nCaptain;
	Talk(1,"",10220);
end;

function timhieu()
	Say("LINK:<npc>",0,12268,1,
	CLOSE_SAY)
end;

function nhannv()
	if(GetCash() < GETMISS_MONEY) then
	Talk(1,"","Ng­¬i cÇn cã < 2 v¹n ng©n l­îng> ®Ó nhËn nhiÖm vô!")
	return end
	local nValue = GetTask(TASK_NVST);
	local nDone = GetNumber(2,GetTask(TASK_RESET),4);
	if(nDone >= MAX_PERDAY) then
		Talk(1,"","H«m nay ®¹i hiÖp ®· hÕt <color=yellow>%s<color> l­ît tham gia V­ît ¶i råi !",FTIME_MAXTIMES)
	return end
	Pay(GETMISS_MONEY);
	local nNum = RANDOM(1,getn(BOSS_SATTHU));
	SetTask(TASK_NVST, SetNumber(2,nValue,1,nNum));
	local str = format("%s ®ang ë %s %d/%d. Bµn tay h¾n nhuém ®Çy m¸u t­¬i. Ta kh«ng tin lµ ng­¬i giÕt ®­îc h¾n.", BOSS_SATTHU[nNum][1], GetWorldName(BOSS_SATTHU[nNum][2]), floor(BOSS_SATTHU[nNum][3]/256), floor(BOSS_SATTHU[nNum][4]/512));
	Talk(1,"",str);
	local str1 = format("B¹n nhËn nhiÖm vô h¹ s¸t <color=Yellow>%s<color> %s <color=Red>%d,%d<color>.", BOSS_SATTHU[nNum][1], GetWorldName(BOSS_SATTHU[nNum][2]), floor(BOSS_SATTHU[nNum][3]/256), floor(BOSS_SATTHU[nNum][4]/512));
	AddNote(14,1,str1);
end;

function htsatthugian()
	GiveItemUI("Giao diÖn hîp thµnh s¸t thñ gi¶n", "5 s¸t thñ lÖnh cïng ®¼ng cËp sÏ hîp thµnh mét s¸t thñ gi¶n cÊp t­¬ng øng, thuéc tÝnh cña s¸t thñ gi¶n ®­îc t¹o thµnh cã liªn quan ®Õn thuéc tÝnh cña 5 s¸t thñ lÖnh","ht");
end

function ht()
	local nCnt=0;
	for i=0,4 do
	if(GetItemCount(0,6,398,0,i,14) >= 5) then
		nItemIdx=AddItemID(AddItem(0,6,399,0,0,i,0,0));
		DelItem(5,0,6,398,0,i,14);
		Msg2Player("B¹n ®· hîp thµnh mét "..GetNameItem(nItemIdx).."")
		nCnt=nCnt+1;
	end;
	end;
	if(nCnt <=0) then
		Talk(1,"","B¹n ch­a cho vµo, viÖc quan s¸t rÊt quan träng");
	return end;
end;

function gotomap()
	local nNum = GetNumber(2,GetTask(TASK_NVST),1)
	if GetCash() < 3000 then
		Msg2Player("Ta chØ xin ng­¬i Ýt tiÒn trµ n­íc, h·y mang cho ta <color=yellow>3000<color> l­îng b¹c");
	return
	end
	Pay(3000);
	local nX = BOSS_SATTHU[nNum][3]/32;
	local nY = BOSS_SATTHU[nNum][4]/32;
	if GetFightState() > 0 then
	NewWorld(BOSS_SATTHU[nNum][2],nX,nY);
	else
	NewWorld(BOSS_SATTHU[nNum][2],nX,nY);
	SetFightState(1);
	end;
end

function huynhiemvu()
	Say("LINK:<npc>",0,13909, 2,
	"§óng ta kh«ng muèn giÕt ng­êi n÷a./xacnhanhuy",
	"§Ó ta suy nghÜ l¹i./no")
end;

function xacnhanhuy()
	local nValue = GetTask(TASK_NVST);
	SetTask(TASK_NVST, SetNumber(2,nValue,1,0));
	Msg2Player("NhiÖm vô s¸t thñ hiÖn t¹i ®· ®­îc hñy bá.")
end;

function no()

end;
