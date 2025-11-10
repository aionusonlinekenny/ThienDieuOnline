Include("\\script\\header\\taskid.lua");
Include("\\script\\header\\repute_head.lua");


USELESS_LETTER=242

THANH_DICHTRAM={
{1,		{176,11,162,37,78,80},	{252,254,255,256,257,258}},--pt->la/tdo/dl/bk/td/dc
{11,	{176,1,162,37,78,80},	{262,263,265,266,267,268}},--tdo->la/pt/dl/bk/td/dc
{162,	{176,1,11,37,78,80},	{272,273,274,276,277,278}},--dl->la/pt/tdo/bk/td/dc
{37,	{176,1,11,162,78,80},	{282,283,284,285,287,288}},--bk->la/pt/tdo/dl/td/dc
{78,	{176,1,37,162,37,80},	{292,293,294,295,296,298}},--td->la/pt/tdo/dl/bk/dc
{80,	{176,1,11,162,37,78},	{302,303,304,305,306,307}},--dc->la/pt/tdo/dl/bk/td
{176,	{1,11,162,37,78,80},	{243,244,245,246,247,248}}--la->pt/tdo/dl/bk/td/dc
};

THANHTHI_DICHUYEN = {
{1,"Thµnh §«","§¹i Lý",11,162,1674,3132},
{2,"§¹i Lý","Thµnh §«",162,11,3021,5090},
}

MAX_RESTTIME = 60*60	--60 phut lam 1 lan



function main(nIndex)
--dofile("script/global/npcchucnang/dichquan.lua")
dichquan()
end;

function dichquan()
	Say("<npc>: §· l©u ta kh«ng mµng ®Õn chuyÖn trªn giang hå, thêi cuéc lóc nµy qu¸ hçn lo¹n, ¾t h¼n triÒu ®×nh sÏ cã nhiÒu viÖc ph¶i lµm",4,
	"Ta muèn gióp ngµi ®­a th­/duathu",
               "Thiªn B¶o Khè/thienbao",
	"Ta chØ tiÖn ®­êng ghÐ qua/no");
end;

function duathu()
	local nValue = GetTask(TASK_NVDANHVONG);
	local nEnd = GetNumber(1,nValue, 4);
	local nBegin = GetNumber(1,nValue, 5);
	local w,x,y = GetWorldPos();
	if(nEnd == 0) then --chua co nhan
		local nTaskTime = GetTask(TASK_THOIGIAN2);
		if(GetCurServerSec() - nTaskTime < MAX_RESTTIME) then
		Talk(1,"",10092)
		return end
		Say(10094,2,
		"NhËn giao c«ng v¨n/nhannv",
		"HiÖn ta ®ang bËn/no")
	return end
	if(w == THANH_DICHTRAM[nBegin][1]) then
		local nItemIdx,Pos,X,Y=FindItem(4,THANH_DICHTRAM[nBegin][3][nEnd]);
		if(nItemIdx) then
				Say(10096,2,
				"Nép tiÒn/noptien",
				"Ta kh«ng cã tiÒn/kotien")
		else
			nItemIdx,Pos,X,Y=FindItem(4,USELESS_LETTER);
			if(nItemIdx) then
				if(Pos==3) then
				Say(10096,2,
				"Nép tiÒn/noptienvahuy",
				"Ta kh«ng cã tiÒn/kotien")
				else
					Talk(1,"","Ng­¬i ph¶i mang theo hµm th­ ta míi cã thÓ gióp ng­¬i hñy ®­îc");
				end
			else
				Say(10096,2,
				"Nép tiÒn/noptien",
				"Ta kh«ng cã tiÒn/kotien")
			end;
		end;
	elseif(w == THANH_DICHTRAM[nBegin][2][nEnd]) then
		if(GetItemCount(0,4,THANH_DICHTRAM[nBegin][3][nEnd]) > 0) then
		DelItem(1,0,4,THANH_DICHTRAM[nBegin][3][nEnd]);
		SetTask(TASK_THOIGIAN2,GetCurServerSec());
		SetTask(TASK_NVDANHVONG, SetNumber(1,GetTask(TASK_NVDANHVONG),4,0));
		AddRepute(5);
		Earn(500);
		Msg2Player("Giao c«ng v¨n hoµn thµnh, b¹n nhËn ®­îc 5 ®iÓm danh väng");
		Talk(1,"",10318);
		else
		Talk(1,"",10319);
		end
	else
		Talk(1,"",10092);		
	end
end

function nhannv()
	local nTaskValue = GetTask(TASK_NVDANHVONG);
	local w,x,y = GetWorldPos();
	for i=1,getn(THANH_DICHTRAM) do
		if(THANH_DICHTRAM[i][1] == w) then
			local nRand = RANDOM(1,getn(THANH_DICHTRAM[i][2]));
			AddItemID(AddItem(0,4,THANH_DICHTRAM[i][3][nRand],0,0,5,0,0));
			nTaskValue = SetNumber(1,nTaskValue,4,nRand);
			nTaskValue = SetNumber(1,nTaskValue,5,i);
			SetTask(TASK_NVDANHVONG,nTaskValue);
			Msg2Player("NhËn nhiÖm vô giao hµm th­ tõ "..GetWorldName(w).." ®Õn "..GetWorldName(THANH_DICHTRAM[i][2][nRand])..".");
			AddNote(13,1,"NhËn nhiÖm vô giao hµm th­ tõ "..GetWorldName(w).." ®Õn "..GetWorldName(THANH_DICHTRAM[i][2][nRand])..".");
			Talk(1,"",10097);			
		end
	end
end;

function noptien()
	if(GetCash() >= 2000) then
	Pay(2000);
	Repute_Reduce(1);
	SetTask(TASK_THOIGIAN2,GetCurServerSec());
	SetTask(TASK_NVDANHVONG, SetNumber(1,GetTask(TASK_NVDANHVONG),4,0));
	Talk(1,"",10098);
	return end
	kotien();
end;

function noptienvahuy()
	if(DelItem(1,0,4,USELESS_LETTER)==1) then
	if(GetCash() >= 2000) then
	Pay(2000);
	Repute_Reduce(1);
	SetTask(TASK_THOIGIAN2,GetCurServerSec());
	SetTask(TASK_NVDANHVONG, SetNumber(1,GetTask(TASK_NVDANHVONG),4,0));
	Talk(1,"",10098);
	return end
	kotien();
	else
	Msg2Player("KhÊu trõ ®¹o cô thÊt b¹i");
	end;
end;

function kotien()
	Talk(1,"",10099);
end;

function huyhamthu()
	local nValue = GetTask(TASK_NVDANHVONG);
	local nEnd = GetNumber(1,nValue, 4);
	local nBegin = GetNumber(1,nValue, 5);
	if(nEnd~= 0) then
	local nTaskValue = GetTask(TASK_NVDANHVONG);
	local nItemIdx,Pos,X,Y=FindItem(4,THANH_DICHTRAM[nBegin][3][nEnd]);
	if(nItemIdx)then
		RemoveItem(nItemIdx,1);
		AddItemID(AddItem(0,4,USELESS_LETTER,0,0,5,0,0),Pos,X,Y);
	end;
	end;
end;

function thienbao()
	local nFinish = GetNumber(2, GetTaskTemp(NVTHIENBAOKHO), 1);
	SetTaskTemp(NVTHIENBAOKHO, 0);
	if(nFinish > 12) then
	phanthuong();
	Talk(1,"","Tèt l¾m! Ng­¬i ®· cã c«ng lín víi quèc gia, ®©y lµ phÇn th­ëng cña ng­¬i!")
	return end
	Say(15663,2,
	"§i vµo Thiªn B¶o Khè /gothienbao",
	"§Ó ta suy nghÜ /no")
end;

function gothienbao()
	if(GetLevel() < 120) then
	Talk(1,"","H·y ®¹t ®Õn <color=red>cÊp 120<color> míi cã thÓ ®ñ søc tham gia nhiÖm vô nµy!");
	return end
	LeaveTeam();
	SetFightState(0);
	SetLogoutRV(1);
	local w,x,y = GetWorldPos();
	local nMapNo = 1;
	if(w == 11) then
	nMapNo = 2;
	elseif(w == 162) then
	nMapNo = 3;
	elseif(w == 37) then
	nMapNo = 4;
	elseif(w == 78) then
	nMapNo = 5;
	elseif(w == 80) then
	nMapNo = 6;
	elseif(w == 176) then
	nMapNo = 7;
	end
	SetTask(TASK_NVST, SetNumber(1, GetTask(TASK_NVST), 9, nMapNo));
	NewWorld(393,1415,3197);
end;

function phanthuong()
	AddOwnExp(15000000)
	for i=1,RANDOM(2,3) do
	AddItemIDStack(AddItem(0,6,4837,0,0,5,0,0));
	end
	AddRespect(10)
	Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=yellow> "..GetName().." <color> ®· hoµn thµnh nhiÖm vô Thiªn B¶o Khè !")
end;


function no()
end;
