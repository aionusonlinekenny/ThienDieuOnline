Include("\\script\\lib\\worldlibrary.lua");
Include("\\script\\header\\taskid.lua");



MAX_PLAYER_ON_IP = 4
----------------------------------------------------------------------------
function OnTimer()
StopTimer();
local YourIPAddress  = split(GetIP(),":")[1]    
CheckYourIP(YourIPAddress)
end  
--------------------------------------------------------------------------
function CheckYourIP(YourIPAddress)
local OldPlayerIndex = PlayerIndex
local TotalPlayer = GetPlayerCount()
local count = 0
local tmpPlayerIndex = 1
local success = 0
local tmpIPAddress
local tmp_max_ip = MAX_PLAYER_ON_IP
local YourFaction = GetFaction()
while (1)  do 
PlayerIndex = tmpPlayerIndex
return end
if(GetName() ~= "") then 
return end
if (GetTask(TASK_TEMP_ONLINE) == 0) then                         
tmpIPAddress = split(GetIP(),":")[1]     
return end         
if (tmpIPAddress ==YourIPAddress) then
count = count + 1
return end
if (count > tmp_max_ip) then 
PlayerIndex = OldPlayerIndex  
   
NewWorld(53,1623,3182)
SetPKMode(0,0);--phuc hoi pk tu do
SetFightState(0);--phi chien dau
SetPunish(0);
SetDeathScript("")
SetReviveNow(0);
RestoreRankEx();
SetCreateTeam(1);
RestoreCamp();--phuc hoi phe ban dau
KickOutSelf()

success = success + 1
return end
if(success == TotalPlayer) then    
tmpPlayerIndex = tmpPlayerIndex + 1
PlayerIndex = OldPlayerIndex
Msg2Player("<color=cyan>IP cña b¹n lµ:<color><color=yellow> "..GetIP().." <color>")
Msg2Player("<color=cyan>IP cña b¹n hiÖn Online:<color><color=yellow> "..count.."<color> Account")
Msg2Player("<color=cyan>Mçi IP Tèi §a:<color><color=yellow> "..tmp_max_ip.."<color> Account")
return end
end






















