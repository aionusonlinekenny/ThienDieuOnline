Include("\\script\\lib\\worldlibrary.lua")
Include("\\script\\header\\tongkim.lua");
Include("\\script\\header\\vuotai.lua");
Include("\\script\\header\\liendau.lua");
Include("\\script\\header\\phonglangdo.lua");
Include("\\script\\header\\taskid.lua");
function OnTimer()
	StopTimer();
end;

function OnMissionTimer(nIndex) --nIndex la so id nhiem vu, TongKim la mission 1
	--SubWorld la bien' toan` cau` luu chi so map, phai doi ra mapid
	if(SubWorld == SubWorldID2Idx(380)) then
		ontime_tongkim()
	elseif(SubWorld == SubWorldID2Idx(337)) then
		ontime_phonglangdo()
	else
		for i=1,getn(MAP_VUOTAI) do
			if(SubWorld == SubWorldID2Idx(MAP_VUOTAI[i])) then
			ontime_vuotai()
			return end
		end
	end
end;

function ontime_tongkim()
		StopMissionTimer(1, 3);
		local nCount = GetMSPlayerCount(1);
		local nTongAcc,nKimAcc,nPlayerCamp = 0,0,0;
		for i=1,nCount do
			if(GetMSIdxGroup(1, i) == 0) then
				nTongAcc = nTongAcc + GetPMParam(1, i, 2);
				print("log debug nTongAcc value : "..nTongAcc.." ")
			else
				nKimAcc = nKimAcc + GetPMParam(1, i, 2);
				print("log debug nKimAcc value : "..nKimAcc.." ")
			end
		end
		
		if(nTongAcc > nKimAcc) then
			nPlayerCamp = 1;
		elseif(nTongAcc < nKimAcc) then
			nPlayerCamp = 2;
		else
			nPlayerCamp = 0;
		end
	for i=1, nCount do
		if(GetPMParam(1, i, 0) == 1) then --dang online thi tinh diem
			PlayerIndex = MSDIdx2PIdx(1, i);
			print("log debug Idx value : "..PlayerIndex.." ")
			SetPKMode(0,0);--phuc hoi pk tu do
			SetFightState(0);--phi chien dau
			SetPunish(0);
			RestoreRankEx();
			local nTotalAccum = GetPMParam(1, i, 2);
			local nCamp = GetCurCamp();
			if(nPlayerCamp == nCamp) then --nam trong phe chien thang, thuong them tich luy
			local nAccum = TICHLUY_THUONG * GetPMParam(1, i, 15);
			nTotalAccum = nTotalAccum + nAccum;
				if (nTotalAccum > 3000) then
						AddOwnExp(10000000);
						Msg2Player("Xin chÛc mıng! Phe chi’n thæng nhÀn Æ≠Óc ph«n th≠Îng <color=yellow>"..nAccum.."<color> Æi”m t›ch lÚy\n vµ <color=yellow>10 tri÷u<color> kinh nghi÷m !");
					end
			else	
						Talk(1,"","L«n nµy k’t qu∂ kh´ng nh≠ mong ÆÓi! Thæng bπi lµ chuy÷n th≠Íng t◊nh cÒa binh gia, t≠Ìng s‹ Æıng n∂n lﬂng! L«n sau sœ quy’t 1 trÀn th≠ hÔng")
			end
			if(nCamp == 1) then --tong
				AddValue(4,nTotalAccum);
			else	--kim
				AddValue(5,nTotalAccum);
			end
			AddAccum(nTotalAccum);
			if (nTotalAccum > 3000) then
			thuongchung()
			else
						Talk(1,"","ßi”m t›ch lÚy cÒa c∏c hπ  kh´ng ÆÒ <color=yellow>3000<color> kh´ng th” nhÀn th≠Îng !")
			end
			
			if(nCamp == 1) then --tong
			NewWorld(325,RANDOM(1537,1548), RANDOM(3160, 3195));
			SetRevPos(325,1)
			else	--kim
			NewWorld(325,RANDOM(1566,1588), RANDOM(3079, 3096));
			SetRevPos(325, 2)
			end
			reset_stateTK()
		end
		end
		if(nPlayerCamp == 1) then
		AddNews(format("ßπi chi’n TËng Kim Æ∑ k’t thÛc. T›ch lÚy TËng %d : %d Kim. Phe TËng giµnh Æ≠Óc thæng lÓi!",nTongAcc,nKimAcc));
		elseif(nPlayerCamp == 2) then
		AddNews(format("ßπi chi’n TËng Kim Æ∑ k’t thÛc. T›ch lÚy TËng %d : %d Kim. Phe Kim giµnh Æ≠Óc thæng lÓi!",nTongAcc,nKimAcc));
		else
		AddNews(format("ßπi chi’n TËng Kim Æ∑ k’t thÛc. T›ch lÚy TËng %d : %d Kim. TrÀn nµy Æ∑ hﬂa!",nTongAcc,nKimAcc));
		end
		for i=0,21 do
			SetMission(i, 0);
		end
		CloseMission(1);	--dong mission
end;

function reset_stateTK()
				SetRevPos(GetCurRev())
				SetReviveNow(0);
				SetCreateTeam(1);
				SetCurCamp(GetCamp());--phuc hoi phe ban dau
				SetDeathScript("") --set script khi chet
				ForbidEnmity(0)
end

function thuongchung()
		local exptk = 10000000 
		local nRes = 10
		local nCount = RANDOMC(3,4,5)
		for i=1, nCount do
                             SetTask(TAK_TONGKIM,GetTask(TAK_TONGKIM) + 1)
		AddItemIDStack(AddItem(0,6,4839,0,0,5,0,0));
		end
		AddOwnExp(exptk*2);
		AddRespect(nRes*2)
		Msg2Player("Bπn nhÀn Æ≠Óc <color=yellow>20<color> Æi”m Uy Danh.")	
		Msg2Player("Bπn nhÀn Æ≠Óc <color=yellow>20 tri÷u<color> kinh nghi÷m.")	
		Msg2Player("ßπi hi÷p Æ∑ nhÀn Æ≠Óc <color=yellow>"..nCount.." <color> B∂o R≠¨ng TËng Kim. ")
end

function ontime_phonglangdo(nIndex)
	StopMissionTimer(1,3);
	local nCount = GetMSPlayerCount(1);
	for i=1,nCount do
		if(GetPMParam(1, i, 0) == 1) then --dang online
			PlayerIndex = MSDIdx2PIdx(1, i);
			SetDeathScript("") --set script khi chet
			SetLogoutRV(0);
			SetPKMode(0,0);--phuc hoi pk tu do
			SetPunish(0);
			local nPlayerDataIdx = PIdx2MSDIdx(1,PlayerIndex); -- KICK KHOI MISSION
			SetPMParam(1,nPlayerDataIdx,0,0);	-- KICK KHOI MISSION
			NewWorld(336,RANDOM(1333,1349),RANDOM(2850,2861));
                                          SetTask(TAK_PHONGLANGDO,GetTask(TAK_PHONGLANGDO) + 1)
			SetTask(TASK_DUNGCHUNG,SetNumber(1,GetTask(TASK_DUNGCHUNG),2,1));
		end
	end
	CloseMission(1);	--dong mission
end;

function ontime_vuotai(nIndex)
	StopMissionTimer(1,3);--tat hen gio so 2
	CloseMission(1)
end;
