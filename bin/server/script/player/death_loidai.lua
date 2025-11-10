Include("\\script\\header\\loidai.lua");

function OnDeath(nDesNpcIndex)
	local nDesPlayerIdx = NpcIdx2PIdx(nDesNpcIndex);
	local szDieName = GetName();
	SetDeathScript("")
              SetLogoutRV(0);	
	LeaveGame();
              KickOutSelf()
	if (nDesPlayerIdx > 0) then
		PlayerIndex = nDesPlayerIdx;
		local szName = GetName();
		local nDestCamp = GetCurCamp();
		if (nDestCamp == 2 or nDestCamp == 3) then
			Msg2MSAll(BW_MISSIONID, GetMissionS(CITYID).." L«i ®µi tranh tµi ®ang diÔn ra, <color=yellow>"..szName.."<color> ë l«i ®µi ®¸nh b¹i <color=yellow>"..szDieName.."<color>.");
		end
	end;
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
