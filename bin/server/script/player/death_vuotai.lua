function OnDeath(nDesNpcIndex)
	SetDeathScript("");
	SetPunish(0);
	RestoreCamp();
	SetCreateTeam(1)
	local nPlayerDataIdx = PIdx2MSDIdx(1,PlayerIndex);
	SetPMParam(1,nPlayerDataIdx,0,0);
end;
