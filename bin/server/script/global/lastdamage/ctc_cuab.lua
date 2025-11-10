--nguoi choi danh quai' cuoi cung` khi chet
Include("\\script\\feature\\congthanh\\npccongthanh.lua")
Include("\\datascript\\congthanh\\danhsachKCL.lua")
Include("\\datascript\\congthanh\\DauGiaKCL.lua")
Include("\\datascript\\congthanh\\danhsachcongthanh.lua")
Include("\\script\\header\\taskid.lua");

function LastDamage(NpcIndex)
	local nKind = GetNpcValue(NpcIndex);
	local nTaskValue = GetTask(TASK_DUNGCHUNG);
	local nTask = GetNumber(1,nTaskValue,7);
	local nTime = GetNumber(2,nTaskValue,3);


		if(nKind == nTask) then	--trung khop
			if(nTime < 50) then
			SetTask(TASK_DUNGCHUNG, SetNumber(2,nTaskValue,3,nTime+1))
			end
		end
end

--khi hoi sinh
function Revive(NpcIndex)
SetNpcCurCamp(1)
end

--Khi chet
function DeathSelf(NpcIndex)
DelNpc(NpcIndex)

local checkbang = GetTask(TASK_CUACTC2)

if GetTask(TASK_CUACTC2) < 10 then
 for i=1,2000 do
PlayerIndex = i
w,x,y = GetWorldPos()
if w == 221 then
 SetTask(TASK_CUACTC2,GetTask(TASK_CUACTC2) + 1)
Msg2SubWorld("<color=yellow>Cöa ctc: TÞnh D­¬ng M«n ®· bÞ ph¸ vì<color>");

                      break
                     end
             end
       end
end



































