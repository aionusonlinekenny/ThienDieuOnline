Include("\\script\\lib\\worldlibrary.lua")
Include("\\script\\header\\taskid.lua");
Include("\\script\\maps\\tongkim\\trap\\kim.lua");
Include("\\script\\maps\\tongkim\\trap\\tong.lua");
Include("\\script\\header\\vuotai.lua");
Include("\\script\\header\\liendau.lua");
Include("\\script\\header\\phonglangdo.lua");
Include("\\script\\header\\tongkim.lua");

function OnTimer()
	if(SubWorld == SubWorldID2Idx(380)) then	--day la gio hen tu dong day~ ra ngoai chien truong khi o trong doanh trai qua lau
	local nPlayerDataIdx = PIdx2MSDIdx(1,PlayerIndex);
		if((GetPMParam(1, nPlayerDataIdx, 0) == 1) and (GetPMParam(1, nPlayerDataIdx, 1) == 1)) then --neu co online va dang trong chien dau
			if(GetMSIdxGroup(1, nPlayerDataIdx) ==  0) then --tong
				if (NewWorld(325,floor(48928/32), floor(102272/32)) == 1) then--bao danh tong kim cao cap--phe Tong
					StopTimer();
					local szName = GetName();
					local szLeaveRank = GetRankEx();
					RestoreCamp()
					RestoreRankEx();
					SetPunish(0)
					SetFightState(0)
					SetPKMode(0,0)
					SetDeathScript("")
					Msg2MSAll(1, format("%s <color=yellow>%s<color> rêi khái chiÕn tr­êng", szLeaveRank,szName)); --thong bao roi khoi~
					local nPlayerDataIdx = PIdx2MSDIdx(1,PlayerIndex);
					if(nPlayerDataIdx > 0) then
						SetPMParam(1,nPlayerDataIdx,0,0)--setoffline
						SetPMParam(1,nPlayerDataIdx,9,0);--lien tram hien tai
						--SetPMParam(1,nPlayerDataIdx,10,0);--tich luy LT hien tai
					end			
				end
			else	--kim
				if (NewWorld(325,floor(50944/32), floor(98400/32)) == 1) then--bao danh tong kim cao cap--phe Kim
					StopTimer();
					local szName = GetName();
					local szLeaveRank = GetRankEx();
					RestoreCamp()
					RestoreRankEx();
					SetPunish(0)
					SetFightState(0)
					SetPKMode(0,0)
					SetDeathScript("")
					Msg2MSAll(1, format("%s <color=yellow>%s<color> rêi khái chiÕn tr­êng", szLeaveRank,szName)); --thong bao roi khoi~
					local nPlayerDataIdx = PIdx2MSDIdx(1,PlayerIndex);
					if(nPlayerDataIdx > 0) then
						SetPMParam(1,nPlayerDataIdx,0,0)--setoffline
						SetPMParam(1,nPlayerDataIdx,9,0);--lien tram hien tai
						--SetPMParam(1,nPlayerDataIdx,10,0);--tich luy LT hien tai
					end			
				end
			end
		end
	end
end;

function OnMissionTimer(nIndex)
	if(SubWorld == SubWorldID2Idx(380)) then
		ontime_tongkim(nIndex)
	elseif(SubWorld == SubWorldID2Idx(337)) then
		ontime_phonglangdo(nIndex)
	else
		for i=1,getn(MAP_VUOTAI) do
			if(SubWorld == SubWorldID2Idx(MAP_VUOTAI[i])) then
			ontime_vuotai(nIndex)
			return end
		end
		for i=1,getn(MAP_LIENDAU) do
			if(SubWorld == SubWorldID2Idx(MAP_LIENDAU[i])) then
			ontime_dautruongliendau(nIndex)
			return end
		end
	end
end;

function ontime_tongkim(nIndex)
	StopMissionTimer(nIndex,2);
	--tong soai
	local nNpcIdx;
	nNpcIdx = AddNpcNew(636,100,380,1332*32,3443*32,"\\script\\feature\\tongkim\\die_nguyensoai.lua",
		nil,nil,1,RANDOMC(0,1,2,3,4),0,5000000,100,8000,1000,nil,nil,nil,nil,90,nil,nil);
	AddMSNpc(nIndex,nNpcIdx);
	SetNpcDmgEx(nNpcIdx,0,0,0,1500,0,0);
	--kim soai
	nNpcIdx = AddNpcNew(642,100,380,1571*32,3197*32,"\\script\\feature\\tongkim\\die_nguyensoai.lua",
		nil,nil,1,RANDOMC(0,1,2,3,4),0,5000000,100,8000,1000,nil,nil,nil,nil,90,nil,nil);
	AddMSNpc(nIndex,nNpcIdx);
	SetNpcDmgEx(nNpcIdx,0,0,0,1500,0,0);
	Msg2MSAll(1,"Nguyªn so¸i ®· xuÊt hiÖn vµ trùc tiÕp chiÕn ®Êu!!!")
end;

function ontime_vuotai(nIndex)
	StopMissionTimer(nIndex,2);--tat hen gio so 2
	local nCount = GetMSPlayerCount(1); -- mac dinh = 1
	for i=1,nCount do
		if(GetPMParam(1, i, 0) == 1) then --dang online thi tinh diem
			PlayerIndex = MSDIdx2PIdx(1, i);
			RestoreCamp()
			SetFightState(0)
			SetPunish(0)
			SetDeathScript("")
			local nTask = GetNumber(1,GetTask(TASK_NVST),9);
			NewWorld(THANHTHI_RETURN[nTask][1],
			THANHTHI_RETURN[nTask][2],THANHTHI_RETURN[nTask][3])
			Msg2Player("Thêi gian ®· hÕt! NhiÖm vô thÊt b¹i!")
		end
	end
	SetMission(0,0);
	SetMission(1,0);
	CloseMission(nIndex)
end;

function ontime_dautruongliendau(nIndex)
	StopMissionTimer(nIndex,2);--tat hen gio so 2
	local nP1 = MSDIdx2PIdx(1, 1);
	local nP2 = MSDIdx2PIdx(1, 2);
	local nDmg1 = GetPMParam(1,1,1);
	local nDmg2 = GetPMParam(1,2,1);
	CloseMission(nIndex)
	if(nDmg1 > nDmg2) then
		PlayerIndex = nP2;
		local nGroup = GetTask(TASK_LIENDAU) - 1;
		local n1,n2,n3,n4,n5,Name1,Name2 = GetDataGr(nGroup);
		n2 = SetNumber(3,n2,1,GetNumber(3,n2,1)+1);
		n3 = n3 + LIENDAU_THANG;
		n4 = n4 + 480;
		local winname = Name1
		SetDataGr(nGroup, n1,n2,n3,n4,n5,Name1,Name2);
		AddHonor(LIENDAU_THANG);
                            SetTask(TAK_LIENDAU,GetTask(TAK_LIENDAU) + 1)
		reset_state()
		NewWorld(396,1540,3050);
		Msg2Player(LIENDAU_MSGWINTIME)
		--------------------
		PlayerIndex = nP1;
		nGroup = GetTask(TASK_LIENDAU) - 1;
		n1,n2,n3,n4,n5,Name1,Name2 = GetDataGr(nGroup);
		n2 = SetNumber(3,n2,3,GetNumber(3,n2,3)+1);
		n4 = n4 + 480;
		local losename=Name1
		SetDataGr(nGroup, n1,n2,n3,n4,n5,Name1,Name2);
		reset_state();
		NewWorld(396,1540,3050);
		Msg2Player("B¹n ®· thua trong trËn liªn ®Êu lÇn nµy !")
		Msg2MSAll(1,format("<color=cyan>Liªn ®Êu : [%s] chiÕn th¾ng [%s] trong trËn nµy !",winname, losename));
	elseif(nDmg1 < nDmg2) then
		--------------player 1
		PlayerIndex = nP1;
		local nGroup = GetTask(TASK_LIENDAU) - 1;
		local n1,n2,n3,n4,n5,Name1,Name2 = GetDataGr(nGroup);
		n2 = SetNumber(3,n2,1,GetNumber(3,n2,1)+1);
		n3 = n3 + LIENDAU_THANG;
		n4 = n4 + 480;
		local winname=Name1
		SetDataGr(nGroup, n1,n2,n3,n4,n5,Name1,Name2);
		AddHonor(LIENDAU_THANG);
                            SetTask(TAK_LIENDAU,GetTask(TAK_LIENDAU) + 1)
		reset_state()
		NewWorld(396,1540,3050);
		Msg2Player(LIENDAU_MSGWINTIME)
		-- player 2
		PlayerIndex = nP2;
		nGroup = GetTask(TASK_LIENDAU) - 1;
		n1,n2,n3,n4,n5,Name1,Name2 = GetDataGr(nGroup);
		n2 = SetNumber(3,n2,3,GetNumber(3,n2,3)+1);
		n4 = n4 + 480;
		local losename=Name1
		SetDataGr(nGroup, n1,n2,n3,n4,n5,Name1,Name2);
		reset_state()
		NewWorld(396,1540,3050);
		Msg2Player("B¹n ®· thua trong trËn liªn ®Êu lÇn nµy !")
		Msg2MSAll(1,format("<color=cyan>Liªn ®Êu : [%s] chiÕn th¾ng [%s] trong trËn nµy !",winname, losename));
	else
		----------player 1
		PlayerIndex = nP1;
		local nGroup = GetTask(TASK_LIENDAU) - 1;
		local n1,n2,n3,n4,n5,Name1,Name2 = GetDataGr(nGroup);
		n2 = SetNumber(3,n2,2,GetNumber(3,n2,2)+1);
		n3 = n3 + LIENDAU_HOA;
		n4 = n4 + 480;
		local hoa1=Name1
		SetDataGr(nGroup, n1,n2,n3,n4,n5,Name1,Name2);
		AddHonor(LIENDAU_HOA);
		reset_state()
		NewWorld(396,1540,3050);
		Msg2Player(LIENDAU_MSGSAME)
		-------------------player 2
		PlayerIndex = nP2;
		nGroup = GetTask(TASK_LIENDAU) - 1;
		n1,n2,n3,n4,n5,Name1,Name2 = GetDataGr(nGroup);
		n2 = SetNumber(3,n2,2,GetNumber(3,n2,2)+1);
		n3 = n3 + LIENDAU_HOA;
		n4 = n4 + 480;
		local hoa2=Name1
		SetDataGr(nGroup, n1,n2,n3,n4,n5,Name1,Name2);
		AddHonor(LIENDAU_HOA);
		reset_state()
		NewWorld(396,1540,3050);
		Msg2Player(LIENDAU_MSGSAME)
		Msg2MSAll(1,format("<color=cyan>Liªn ®Êu : [%s] vµ [%s] kh«ng thÓ ph©n th¾ng b¹i trong trËn nµy !",hoa1, hoa2));
	end
	SaveDataFile()
end;

function ontime_phonglangdo(nIndex)
	StopMissionTimer(nIndex,2);
	release_phonglangboss();
end;

function reset_state()
	RestoreCamp()
	SetPunish(0)
	SetFightState(0)
	SetPKMode(0,0)
	LockMoveItem(0)
	SetReviveNow(0);
	ForbidEnmity(0);
	ForbidTrade(0);
	SetCreateTeam(1);
end
