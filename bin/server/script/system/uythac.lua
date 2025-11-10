
--------========================================================================================----------
--------========================================================================================----------
--------=======================================ANHVIETDONGNAI=====================================-----------
--------========================================================================================----------
--------========================================================================================----------
Include("\\script\\header\\taskid.lua");
Include("\\script\\lib\\worldlibrary.lua");
Include("\\script\\header\\forbidmap.lua");

---------------------------------------------------------------------------------
function main()
dofile("script/system/uythac.lua")
if GetTask(TaskUyThacOffline) == 0 then
	Say("<color=red>H÷ ThËng<color>:Bπch C«u Hoµn cÒa bπn cﬂn: <color=red><color=blue>"..GetTask(TaskBCH).."<color>.",2,
		"Bæt Æ«u Òy th∏c rÍi mπng mi‘n ph›/startut",
		"Tho∏t/no")
else
	Talk(1,"","Ng≠¨i Æ∑ k›ch hoπt Òy th∏c, h∑y mau tho∏t nh©n vÀt.")
end
end
----------------------------------------------------------------------------------------
function nhanexputoff()
               if GetTask(TaskUyThacOffline) >= 10 then
               dlg_offlineaward()
               SetTask(TaskUyThacOffline,0)
               SetTask(TaskBCH,GetTask(TaskBCH) - 1)
      else	
      end
end


--------------------------
function no()
end
----------------------------------
function startut()
if GetTask(TaskBCH) >= 1 then
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
nam = tonumber(date("%y"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
SetTask(TaskUyThacOffline,10)
Talk(1,"Uythac","Bπn Æ∑ Òy th∏c vµo lÛc: "..gio.." giÍ "..phut.." phÛt, ngµy "..ngay.."/"..thang.."/"..nam..", b©y giÍ bπn c„ th” rÍi mπng")
else
Talk(1,"","Bπn Æ∑ <color=red>h’t Bπch C«u Hoµn<color>, vui lﬂng ki”m tra vµ quay lπi sau.")
end
end
-------------------------------------------------------------------
function dlg_offlineaward()
	local nLvSec = GetTask(TASK_LVGAMESEC);
	local nLgSec = GetCurServerSec();
	if (nLgSec < nLvSec) then
		nLgSec = nLvSec
	end
	if (nLvSec == 0) then
		nLvSec = nLgSec
	end
	if(nLgSec- nLvSec<=0 ) then
	return end;
	local nOffSec = floor((nLgSec - nLvSec) / 60)
	CountExp(nOffSec,
			GetLevel(),
			GetTranslife());
	local nCurExp=GetTask(TASK_LVGAMEEXP);
	Say("LINK:<nil>",0,format("RÍi mπng l«n tr≠Ìc: <color=red>%s<color><enter>Hi÷n tπi Æ®ng nhÀp vµo: <color=red>%s<color>\nThÍi gian rÍi mπng: <color=red>%d<color> phÛt\nMi‘n ph› nhÀn Æ≠Óc Æi”m kinh nghi÷m <color=red>%d<color> (ChÛ ˝: Chuy”n b∂n ÆÂ sœ bﬁ m t)",
					GetTimeDate("%Y/%m/%d %H:%M:%S", nLvSec),
					GetTimeDate("%Y/%m/%d %H:%M:%S", nLgSec),
					nOffSec,
					nCurExp), 2,
		"Mi‘n ph› nhÀn ph«n th≠Îng kinh nghi÷m/action_takefreeexp",
		"Tho∏t ra/no")
end

function action_takefreeexp()
	if (GetLevel() < 5 and GetTranslife() <=0 ) then
                                 Msg2Player("Kh´ng phÔ hÓp vÌi Æi÷u ki÷n nhÀn th≠Îng ")
		return
	end
	local nCurExp=GetTask(TASK_LVGAMEEXP);
	if (nCurExp <= 0) then
                                 Msg2Player("ß∑ sˆ dÙng h’t thÍi gian rÍi mπng ")
		return
	end

	SetTask(TASK_LVGAMEEXP,0);
	AddStackExp(nCurExp);
end

function CountExp(itr, level, tran_count)
	local LIST_EXP = {15000,30000,40000,40000,60000,72000,86400,103680};
	if (itr <= 0) then
		return 0
	end
	local index = 1
	if (level >= 151) then
		index = tran_count + 3
	elseif (level >= 131) then
		index = 2
	elseif (level >= 50) then
		index = 1
	else
		return 0
	end
	SetTask(TASK_LVGAMEEXP,GetTask(TASK_LVGAMEEXP)+ LIST_EXP[index] * itr);
end




