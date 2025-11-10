--nguoi choi danh quai' cuoi cung` khi chet
-- Include("\\script\\header\\taskid.lua");
Include("\\script\\lib\\worldlibrary.lua")
Include("\\script\\header\\taskid.lua");
Include("\\script\\header\\vuotai.lua");
Include("\\script\\header\\event_head.lua");
Include("\\script\\global\\lastdamage\\Deathlib.lua");

THANHTHI_RETURN={
{1  ,1510,3188},
{11 ,3214,4986},
{162,1587,3228},
{37 ,1638,3051},
{78 ,1514,3216},
{80 ,1697,2950},
{176,1372,2996}
};

function LastDamage(NpcIndex)
	--tinh kinh nghiem cho toan doi
	local nOldPlayer = PlayerIndex;--nguoi giet quai
	local nCount = GetMSPlayerCount(1);
	local szName = GetName();
	for i=1,nCount do
		if(GetPMParam(1, i, 0) == 1) then --dang online thi tinh diem
			PlayerIndex = MSDIdx2PIdx(1, i);
			if(PlayerIndex == nOldPlayer) then
				AddOwnExp(10000000)
			else
				AddOwnExp(floor(10000000*80/100))
			end
			SetCurCamp(GetCamp())
			SetFightState(0)
			SetDeathScript("")
			SetPunish(0)			
			local nTask = GetNumber(1,GetTask(TASK_NVST),9);
			NewWorld(THANHTHI_RETURN[nTask][1],
			THANHTHI_RETURN[nTask][2],THANHTHI_RETURN[nTask][3])
                                          SetTask(TAK_VUOTAI ,GetTask(TAK_VUOTAI ) + 1)
			for i=1,RANDOM(1,3) do
			AddItemIDStack(AddItem(0,6,3360,0,0,5,0,0));
                                          AddItemID(AddItem(0,2,34,0,0,5,0,0));    ---- r­¬ng ho¹t ®éng
			end
			AddRespect(10)
		--event----------------
		----addevent(10);
		-----------------------------	
			if(CheckRoom(1,1) == 1) then
			local TTL = AddItem(0,6,71,0,0,5,0)
			LockItem(TTL)
			AddItemID(TTL)
			end
		end
	end
	--x - floor(x/y)
	if(szName ~= " ") then
	local nRestTime = GetMSRestTime(1,2);
	local nRemainSec = 30*60 - floor(nRestTime/18);
	local nMin = floor(nRemainSec/60);
	nRemainSec = nRemainSec - nMin*60;
	AddCountNews(format("§éi ngò %s ®· hoµn thµnh nhiÖm vô ®óng thêi gian: %d phót %d gi©y",szName, nMin,nRemainSec),3);
	PlayerIndex = FindPlayer(szName);
	if(PlayerIndex>0) then
	SetValue(10,nRestTime/18);
	end;
	PlayerIndex = nOldPlayer;
	end
	SetMission(0,0);
	SetMission(1,0);
	-- CloseMission(1);
	StartMissionTimer(1,3, 5*18);
end

--khi hoi sinh
function Revive(NpcIndex)
	local Series = GetNpcSer(NpcIndex);--
	local nSTVL, nDoc, nBang, nHoa, nLoi = 0,0,0,0,0;
	if(Series==0) then		--KIM
		SetNpcSkill(NpcIndex, 321, 50, 1);
		SetNpcSkill(NpcIndex, 319, 50, 2);
		SetNpcSkill(NpcIndex, 322, 50, 3);
		SetNpcSkill(NpcIndex, 325, 50, 4);
		nSTVL = 300;
	elseif(Series==1) then	--MOC
		SetNpcSkill(NpcIndex, 339, 50, 1);
		SetNpcSkill(NpcIndex, 342, 50, 2);
		SetNpcSkill(NpcIndex, 302, 50, 3);
		SetNpcSkill(NpcIndex, 390, 50, 4);
		nDoc = 50;
	elseif(Series==2) then	--THUY
		SetNpcSkill(NpcIndex, 328, 50, 1);
		SetNpcSkill(NpcIndex, 380, 50, 2);
		SetNpcSkill(NpcIndex, 336, 50, 3);
		SetNpcSkill(NpcIndex, 337, 50, 4);
		nBang = 300; 
	elseif(Series==3) then	--HOA
		SetNpcSkill(NpcIndex, 357, 50, 1);
		SetNpcSkill(NpcIndex, 359, 50, 2);
		SetNpcSkill(NpcIndex, 361, 50, 3);
		SetNpcSkill(NpcIndex, 362, 50, 4);
		nHoa = 300;
	elseif(Series==4) then	--THO
		SetNpcSkill(NpcIndex, 365, 50, 1);
		SetNpcSkill(NpcIndex, 368, 50, 2);
		SetNpcSkill(NpcIndex, 372, 50, 3);
		SetNpcSkill(NpcIndex, 375, 50, 4);
		nLoi = 300;
	else					--KHONG CO HE, truong hop nay la add sai hay sao do
		nSTVL = 300;
	end
	
	SetNpcDmgEx(NpcIndex,nSTVL, nDoc, nBang, nHoa, nLoi ,0);--
end
--Khi chet
function DeathSelf(NpcIndex)
end;
