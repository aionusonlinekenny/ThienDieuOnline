Include("\\script\\library\\worldlibrary.lua")
Include("\\script\\header\\taskid.lua")
Include("\\script\\header\\event_endtime.lua");
--------------------------------------------------------------------------------
BOSS_EXP = 10000000
function DropRate(NpcIndex)
    local nNum = GetNumber(2, GetTask(TASK_NVBH), 1);
    if (nNum == GetNpcValue(NpcIndex)) then
	SetTask(TASK_NVBH, SetNumber(2, GetTask(TASK_NVBH), 1, 0));
	local szlan = GetTask(TASK_NVBH1)
	SetTask(TASK_NVBH1, szlan+1);
                    AddOwnExp(BOSS_EXP)
                    AddRespect(5)
                    Msg2Player("<color=green>Bπn nhÀn Æ≠Óc <color=yellow>10 tri÷u<color> Æi”m kinh nghi÷m vµ <color=yellow>5<color> Æi”m Uy Danh.")
SetTask(TAK_BOSSERVER,GetTask(TAK_BOSSERVER) + 1)
 return end
end;














