Include("\\script\\library\\worldlibrary.lua");


function OnDeath(Launcher)
PlayerIndex1 = NpcIdx2PIdx(Launcher);
OrgPlayer = PlayerIndex;
die_name = GetName()

if PlayerIndex1 > 0 then
	PlayerIndex = PlayerIndex1
end
giet = GetName()

Msg2SubWorld("§¹i hiÖp <color=yellow>"..giet.." <color=red>®· ®¸nh b¹i <color=yellow>"..die_name.." <color=red>trong khu vùc thi ®Êu !")

PlayerIndex = OrgPlayer;
SetDeathScript("");
SetCurCamp(GetCamp());
SetCamp(chinhphai)
SetFightState(0)
SetPKMode(0)
SetLogoutRV(0);

end

function OnDrop()
end