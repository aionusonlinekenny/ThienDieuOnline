--Author: Kinnox
--Name Tool: Manager Player
--Date:25/10/2020

function Manager()
--dofile("script/header/admin/char.lua")
vaoGM100()
end

function vaoGM100()
local nW,nX,nY = GetWorldPos();
Tab_inSert = {
	"<color=red>HÖ Thèng:<color> <color=orange>Cuéc sèng nµy biÕt bao ®iÒu tu¬i ®Ñp, Minh Qu©n xin h·y b×nh tÜnh suy xÐt<color>",
	"Th«ng tin ng­êi ch¬i/infoall",
	"Chøc n¨ng ®iÒu khiÓn player/inputname",
	"Ta kh«ng cÇn ng¬i d¹y b¶o/no"
	}
	Say(Tab_inSert[1],getn(Tab_inSert),
	Tab_inSert[2],
	Tab_inSert[3],
	Tab_inSert[4]
	)
end

function infoall()
local nW,nX,nY = GetWorldPos();
Tab_inSert = {
	"<color=red>HÖ Thèng:<color> <color=orange>Cuéc sèng nµy biÕt bao ®iÒu tu¬i ®Ñp, Minh Qu©n xin h·y b×nh tÜnh suy xÐt<color>",
	"001 - 050/Show",	
	"051 - 100/Show",
	"101 - 150/Show",
	"151 - 200/Show",	
	"201 - 250/Show",	
	"251 - 300/Show",
	"301 - 350/Show",
	"351 - 400/Show",	
	"401 - 450/Show",
	"451 - 500/Show",	
	"Ta kh«ng cÇn ng¬i d¹y b¶o/no"
	}
	Say(Tab_inSert[1],getn(Tab_inSert),
	Tab_inSert[2],
	Tab_inSert[3],
	Tab_inSert[4],
	Tab_inSert[5],
	Tab_inSert[6],
	Tab_inSert[7],
	Tab_inSert[8],
	Tab_inSert[9],
	Tab_inSert[10],
	Tab_inSert[11],
	Tab_inSert[12]
	)
end;

function Show(nSel)
	local nRow = nSel+1;
	local TAB_TT =
	{
	{1	,50 },
	{51 ,100},
	{101,150},
	{151,200},
	{201,250},	
	{251,300},	
	{301,350},	
	{351,400},	
	{401,450},
	{451,500},		
	};
		for i = TAB_TT[nRow][1],TAB_TT[nRow][2] do
			local nName = GetName(i);
			local TK = GetAccount(i);
				if (nName ~= "") then
				Msg2Player(""..i.." # "..nName.." # "..TK..".");
				end
		end
end;

function inputname()
	Input("StrName");
end;
function StrName()
	local nStr = GetInput();
		for i = 1, 1000 do
			local nName = GetName(i);
				if (nName == "") then
					Msg2Player("Tµi kho¶n kh«ng cã nh©n vËt online");
					return
				end
			if GetAccount(i) == nStr then	
				local nPlayer = FindNamePlayer(nName);
				SetTaskTemp(TEMP_INDEX_PLAYER,nPlayer);
				managerPlayer()
				return
			end;
		end;
end;
function managerPlayer()
local nW,nX,nY = GetWorldPos();
	Tab_inSert = {
		"<color=red>HÖ Thèng:<color> <color=orange>Cuéc sèng nµy biÕt bao ®iÒu tu¬i ®Ñp, Minh Qu©n xin h·y b×nh tÜnh suy xÐt\n<color=green>Täa ®é hiÖn t¹i: B¶n ®å: "..nW.." - X: "..nX.."-Y: "..nY.."",
		"Th«ng tin Player/info_player",
		"T¾t cöa sæ Player/ExitWindows",
		"Di chuyÓn vÒ Ba L¨ng HuyÖn/MovetoBLH",
		"Di chuyÓn ®Õn gÇn Player/MoveToPlayer",
		"Di chuyÓn Player ®Õn gÇn m×nh/MoveToMe",
		"Di chuyÓn Player ®Õn Thien Lao/MoveToThienLao",
		"T¨ng cÊp ®é Player/UpLevel",
		"T¨ng phóc duyªn Player/UpPD",
		"T¨ng danh väng Player/UpDV",
		"T¨ng tiÒn Xu Player/GiveExtP",
		"T¨ng tiÒn Vµng PLayer/GiveMoney",
		"Ta kh«ng cÇn ng¬i d¹y b¶o/no"
		}
	Say(Tab_inSert[1],getn(Tab_inSert),
	Tab_inSert[2],
	Tab_inSert[3],
	Tab_inSert[4],
	Tab_inSert[5],
	Tab_inSert[6],
	Tab_inSert[7],
	Tab_inSert[8],
	Tab_inSert[9],
	Tab_inSert[10],
	Tab_inSert[11],
	Tab_inSert[12],
	Tab_inSert[13]
)
end;

function info_player()
	local tempid = PlayerIndex;
	PlayerIndex = GetTaskTemp(TEMP_INDEX_PLAYER);
	local nW,nX,nY = GetWorldPos();
	local nAccName = GetAccount();
	--local nMapName= GetWorldName(nW);
	local nName = GetName();
	local nLevel = GetLevel();
	local nExtPoint = GetExtPoint();
	local nCash  = GetCash(2);
	local nPwruong = GetSavePw();
	local nIp = GetIP();
	local nPD	= GetFuYuan();
	local nDV	= GetRepute();
	PlayerIndex = tempid;
	Talk(1,"","IP:"..nIp.."\nAccount:"..nAccName.."-Name:"..nName.."\n"..nW.."-"..floor(nX/8).."-"..floor(nY/16).."\nLevel:"..nLevel.."-PD:"..nPD.."-DV:"..nDV.."\nXu:"..nExtPoint.."-Tien:"..nCash.."--Pass:"..nPwruong.."");
	SetTaskTemp(TEMP_INDEX_PLAYER,0);
end;

function ExitWindows()
	local tempid = PlayerIndex;
	PlayerIndex = GetTaskTemp(TEMP_INDEX_PLAYER);
	OfflineLive();
	PlayerIndex = tempid;
	SetTaskTemp(TEMP_INDEX_PLAYER,0);
end;
 
function MovetoBLH()
	local tempid = PlayerIndex;
	PlayerIndex = GetTaskTemp(TEMP_INDEX_PLAYER);
	NewWorld(53,1600,3200);
	SetFightState(0);
	PlayerIndex = tempid;
	SetTaskTemp(TEMP_INDEX_PLAYER,0);
end;

function MoveToPlayer()
	local tempid = PlayerIndex;
	local nPLayer = GetFightState();
	PlayerIndex = GetTaskTemp(TEMP_INDEX_PLAYER);
	local nW,nX,nY = GetWorldPos();
	PlayerIndex = tempid;
	NewWorld(nW,nX,nY);
	KickOutSelf();
	SetFightState(nPLayer);
	SetTaskTemp(TEMP_INDEX_PLAYER,0);
end;

function MoveToMe()
	local nMe = GetFightState();
	local nW,nX,nY = GetWorldPos();
	local tempid = PlayerIndex;
	PlayerIndex = GetTaskTemp(TEMP_INDEX_PLAYER);
	NewWorld(nW,nX,nY);
	KickOutSelf();
	SetFightState(nMe);
	PlayerIndex = tempid;
	SetTaskTemp(TEMP_INDEX_PLAYER,0);
end;

function MoveToThienLao()
	local nW,nX,nY = GetWorldPos();
	local tempid = PlayerIndex;
	PlayerIndex = GetTaskTemp(TEMP_INDEX_PLAYER);
	NewWorld(197,1600,3200);
	KickOutSelf();
	SetFightState(0);
	PlayerIndex = tempid;
	SetTaskTemp(TEMP_INDEX_PLAYER,0);
end;



function UpLevel()
Input("ExUplevel",200);
end;

function ExUplevel(nNum)
	local nNum = GetInput();
	local tempid = PlayerIndex;
	PlayerIndex = GetTaskTemp(TEMP_INDEX_PLAYER);
	SetLevel(nNum);
	KickOutSelf();
	PlayerIndex = tempid;
	SetTaskTemp(TEMP_INDEX_PLAYER,0);

end;

function UpPD()
Input("ExUpPD",9999);
end;

function ExUpPD(nNum)
	local nNum = GetInput();
	local tempid = PlayerIndex;
	PlayerIndex = GetTaskTemp(TEMP_INDEX_PLAYER);
	AddFuYuan(nNum);
	KickOutSelf();
	PlayerIndex = tempid;
	SetTaskTemp(TEMP_INDEX_PLAYER,0);
end;

function UpDV()
Input("ExUpDV",9999);
end;

function ExUpDV(nNum)
	local nNum = GetInput();
	local tempid = PlayerIndex;
	PlayerIndex = GetTaskTemp(TEMP_INDEX_PLAYER);
	AddRepute(nNum);
	KickOutSelf();
	PlayerIndex = tempid;
	SetTaskTemp(TEMP_INDEX_PLAYER,0);
end;

function GiveExtP()
Input("ExGiveExtP",9999);
end;

function ExGiveExtP(nNum)
	local nNum = GetInput();
	local tempid = PlayerIndex;
	PlayerIndex = GetTaskTemp(TEMP_INDEX_PLAYER);
	AddExtPoint(nNum);
	KickOutSelf();
	PlayerIndex = tempid;
	SetTaskTemp(TEMP_INDEX_PLAYER,0);
end;

function GiveMoney()
Input("ExGiveMoney",9999);
end;

function ExGiveMoney(nNum)
	local nNum = GetInput();
	local tempid = PlayerIndex;
	PlayerIndex = GetTaskTemp(TEMP_INDEX_PLAYER);
	Earn(nNum*1E4);
	KickOutSelf();
	PlayerIndex = tempid;
	SetTaskTemp(TEMP_INDEX_PLAYER,0);
end;





