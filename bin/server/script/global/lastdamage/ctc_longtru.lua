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
local checkbang = GetTask(TASK_LONGTRU)
 if GetTask(TASK_LONGTRU) < 10 then
 for i=1,2000 do
PlayerIndex = i
w,x,y = GetWorldPos()
if w == 221 then
 SetTask(TASK_LONGTRU,GetTask(TASK_LONGTRU) + 1)
Msg2SubWorld("<color=yellow>C¶nh B¸o: 1 long trô ®· bÞ ph¸ vì<color>");
check()

                      break
                     end
             end
       end
end

----------------------------------------------------------------------------------------------------------
function check()
 if GetTask(TASK_LONGTRU) >= 3 then
 for i=1,2000 do
PlayerIndex = i
w,x,y = GetWorldPos()
if w == 221 then
SetTask(TAK_CONGTHANH,GetTask(TAK_CONGTHANH) + 1)
SetTask(TASK_LONGTRU,0)
StopTimer();
NewWorld(53,200*8,200*16)
SetFightState(0)
SetPKMode(0,0);--phuc hoi pk tu do
		DSCTC[vitrictc()][2][1] = DSCTC[vitrictc()][1][1]
		DSCTC[vitrictc()][2][2] = DSCTC[vitrictc()][1][2]
		DSCTC[vitrictc()][2][3] = DSCTC[vitrictc()][1][3] 
		DSCTC[vitrictc()][2][4] = DSCTC[vitrictc()][1][4]

                            DSCTC[vitrictc()][1][1] = ""
		DSCTC[vitrictc()][1][2] = 0
		DSCTC[vitrictc()][1][3] = ""
		DSCTC[vitrictc()][1][4] = 0
			SetTongMap(18,mang_daugiakcl[bangnhat][1],mang_daugiakcl[bangnhat][3],mang_daugiakcl[bangnhat][4],mang_daugiakcl[bangnhat][5],10,10)
			SetTongMap(17,mang_daugiakcl[bangnhat][1],mang_daugiakcl[bangnhat][3],mang_daugiakcl[bangnhat][4],mang_daugiakcl[bangnhat][5],10,10)
			SetTongMap(9,mang_daugiakcl[bangnhat][1],mang_daugiakcl[bangnhat][3],mang_daugiakcl[bangnhat][4],mang_daugiakcl[bangnhat][5],10,10)
			SetTongMap(15,mang_daugiakcl[bangnhat][1],mang_daugiakcl[bangnhat][3],mang_daugiakcl[bangnhat][4],mang_daugiakcl[bangnhat][5],10,10)
			SetTongMap(53,mang_daugiakcl[bangnhat][1],mang_daugiakcl[bangnhat][3],mang_daugiakcl[bangnhat][4],mang_daugiakcl[bangnhat][5],10,10)
			SetTongMap(66,mang_daugiakcl[bangnhat][1],mang_daugiakcl[bangnhat][3],mang_daugiakcl[bangnhat][4],mang_daugiakcl[bangnhat][5],10,10)
			SetTongMap(3,mang_daugiakcl[bangnhat][1],mang_daugiakcl[bangnhat][3],mang_daugiakcl[bangnhat][4],mang_daugiakcl[bangnhat][5],10,10)
		
save()
Msg2Player("Bªn C«ng giµnh chiÕn th¾ng, CTC ®· kÕt thóc ")
 break
                       end
               end
        end
end






























