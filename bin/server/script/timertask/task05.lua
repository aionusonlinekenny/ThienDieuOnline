Include("\\script\\lib\\worldlibrary.lua")
Include("\\script\\header\\loidai.lua");
Include("\\script\\header\\tongkim.lua");
function OnTimer()
	StopTimer();
end;

function OnMissionTimer(nIndex)
	StopMissionTimer(nIndex,5);
	if(SubWorld == SubWorldID2Idx(380)) then
		local nCount = GetMSPlayerCount(1);
		local nTongAcc,nKimAcc,nPlayerCamp = 0,0,0;
		local i;
		for i=1,nCount do
			if(GetMSIdxGroup(1, i) == 0) then
				nTongAcc = nTongAcc + GetPMParam(1,i,2);
			else
				nKimAcc = nKimAcc + GetPMParam(1,i,2);
			end
		end
	AddNews(format("ßπi chi’n TËng Kim. T›ch lÚy TËng<color=red> %d:%d <color>Kim hi÷n tπi.",nTongAcc,nKimAcc));
	Msg2MSAll(1,"<color=orange>ßπi chi’n TËng Kim.\n-------------------\nT›ch lÚy TËng<color=red> "..nTongAcc.." : "..nKimAcc.." <color>Kim hi÷n tπi.\n-------------------")
	end
end;
