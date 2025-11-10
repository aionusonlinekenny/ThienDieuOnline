Include("\\script\\header\\taskid.lua");
Include("\\script\\header\\liendau.lua");
Include("\\script\\lib\\worldlibrary.lua");
function OnDeath(nDesNpcIdx)
	local nP1 = MSDIdx2PIdx(1, 1);
	local nP2 = MSDIdx2PIdx(1, 2);
	if(PlayerIndex == nP1) then
		nP1 = nP2;
		nP2 = PlayerIndex;
	end
	Msg2Player("debug P1 P2 : "..nP1.." "..nP2.." ----log")
	local nRest = floor(GetMSRestTime(2)/18);
	-----------------------nguoi thu 1
	PlayerIndex = nP1;
	Msg2Player("debug P1 : "..nP1.." ----log")
	local nGroup = GetTask(TASK_LIENDAU) - 1;
	Msg2Player("debug nGroup : "..nGroup.." ----log")
	local n1,n2,n3,n4,n5,Name1,Name2 = GetDataGr(nGroup);
	Msg2Player("debug nGroup : "..nGroup.." ----log")
	winname = Name1;
	n2 = SetNumber(3,n2,1,GetNumber(3,n2,1)+1);
	n3 = n3 + LIENDAU_THANG;
	if(nRest > 0) then
		n4 = n4 + 480 - nRest;
	end
	Msg2Player("debug n1 : "..n1.." ----log")
	Msg2Player("debug n2 : "..n2.." ----log")
	Msg2Player("debug n3 : "..n3.." ----log")
	Msg2Player("debug n4 : "..n4.." ----log")
	Msg2Player("debug n5 : "..n5.." ----log")
	Msg2Player("debug Name1 : "..Name1.." ----log")
	Msg2Player("debug Name2 : "..Name2.." ----log")
	Msg2Player("debug Winname	: "..winname.." ----log")
	SetDataGr(nGroup, n1,n2,n3,n4,n5,Name1,Name2);
	AddHonor(LIENDAU_THANG);
	RestoreCamp()
	SetPunish(0)
	SetFightState(0)
	SetPKMode(0,0)
	LockMoveItem(0)
	NewWorld(396,1540,3050);
	Msg2Player(LIENDAU_MSGWIN)
	-----------------------nguoi thu 2
	PlayerIndex = nP2;
	Msg2Player("debug P2 : "..nP2.." ----log")
	nGroup = GetTask(TASK_LIENDAU) - 1;
	Msg2Player("debug nGroup : "..nGroup.." ----log")
	local n1,n2,n3,n4,n5,Name1,Name2 = GetDataGr(nGroup);
	losename = Name1;
	n2 = SetNumber(3,n2,3,GetNumber(3,n2,3)+1);
	if(nRest > 0) then
		n4 = n4 + 480 - nRest;
	end
	Msg2Player("debug n1 : "..n1.." ----log")
	Msg2Player("debug n2 : "..n2.." ----log")
	Msg2Player("debug n3 : "..n3.." ----log")
	Msg2Player("debug n4 : "..n4.." ----log")
	Msg2Player("debug n5 : "..n5.." ----log")
	Msg2Player("debug Name1 : "..Name1.." ----log")
	Msg2Player("debug Name2 : "..Name2.." ----log")
	Msg2Player("debug losename	: "..losename.." ----log")
	SetDataGr(nGroup, n1,n2,n3,n4,n5,Name1,Name2);
	RestoreCamp()
	SetPunish(0)
	SetFightState(0)
	SetPKMode(0,0)
	LockMoveItem(0)
	Msg2MSAll(1,format("<color=cyan>Liªn ®Êu : [%s] chiÕn th¾ng [%s] trong trËn nµy !",winname, losename));
	CloseMission(1)
	SaveDataFile()
end;

function OnDamage(nDamage)
	local nP1 = MSDIdx2PIdx(1, 1);
	local nP2 = MSDIdx2PIdx(1, 2);
	local nTotalDmg;
	if(PlayerIndex == nP1) then
		nTotalDmg = GetPMParam(1,1,1)+nDamage;
		SetPMParam(1,1,1,nTotalDmg)
	else
		nTotalDmg = GetPMParam(1,2,1)+nDamage;
		SetPMParam(1,2,1,nTotalDmg)
	end
	Msg2Player(format("B¹n bÞ s¸t th­¬ng %d",nTotalDmg));
end;