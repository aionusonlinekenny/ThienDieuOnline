function OnDeath(nDesNpcIndex)
	SetPunish(0)
	SetPKMode(0,0)
	SetLogoutRV(0);
	SetDeathScript("")
	local nPlayerDataIdx = PIdx2MSDIdx(1,PlayerIndex);
	SetPMParam(1,nPlayerDataIdx,0,0);
end;