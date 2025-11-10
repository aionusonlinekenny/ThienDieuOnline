Include("\\script\\lib\\worldlibrary.lua")
Include("\\script\\header\\taskid.lua");
Include("\\script\\item\\camnangtanthu.lua")

function OnTimer()
StopTimer();
goibosspk3(nNpcIndex) 
end;


function OnMissionTimer(nIndex)
	StopMissionTimer(nIndex,6);
end;
