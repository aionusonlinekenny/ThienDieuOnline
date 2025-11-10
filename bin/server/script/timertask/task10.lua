Include("\\script\\lib\\worldlibrary.lua")
Include("\\script\\header\\taskid.lua");

function OnTimer()
StopTimer();
end;

function OnMissionTimer(nIndex)
	StopMissionTimer(nIndex,10);
end;


