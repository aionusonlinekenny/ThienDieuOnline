--------========================================================================================----------
--------========================================================================================----------
--------=======================================ANHVIETDONGNAI=====================================-----------
--------========================================================================================----------
--------========================================================================================----------
Include("\\script\\lib\\worldlibrary.lua");
Include("\\script\\header\\taskid.lua");

function main()
duangua321()
end

function duangua321()
if(GetLevel() < 80) then
Talk(1,"","<color=cyan>Quan Viªn : <color>®¼ng cÊp d­íi 80 kh«ng ®­îc tham gia")	
return end
if GetTask(TASK_CHECKDUANGUA) >= 1 then
Talk(1,"","<color=cyan>Quan Viªn : <color>b¹n ®· tham gia ®ua vµ giµnh tèp lÇn nµy råi")
return end
batdau12()
end;

function batdau12()
if GetTask(TASK_DUANGUA) == 0 then
batdau123()
return end
if GetTask(TASK_DUANGUA) == 1 then
batdau123()
return end
if GetTask(TASK_DUANGUA) == 2 then
batdau123()
return end
if GetTask(TASK_DUANGUA) == 3 then
batdau123()
return end
if GetTask(TASK_DUANGUA) == 4 then
batdau123()
return end
if GetTask(TASK_DUANGUA) == 5 then
batdau123()
return end
if GetTask(TASK_DUANGUA) == 6 then
batdau123()
return end
if GetTask(TASK_DUANGUA) == 7 then
batdau123()
return end
if GetTask(TASK_DUANGUA) == 8 then
batdau123()
return end
if GetTask(TASK_DUANGUA) == 9 then
batdau123()
return end
if GetTask(TASK_DUANGUA) >= 10 then
Talk(1,"","<color=cyan>Quan Viªn : <color>®· trao th­ëng hÕt 10 tèp råi, lÇn sau quay l¹i nhÐ ")
return end
end;


function batdau123()
	gio = tonumber(date("%H"))
	phut = tonumber(date("%M"))
	if gio == 12 or 19 then
		if phut >= 00 and phut < 55 then
			Say("<color=yellow> Quan Viªn Tr­êng §ua:<color>diÔn ra vµo 12h , 19h.",10,
			"Tham Gia §ua Ngùa/dkduangua",
			"Tho¸t./no")
		else
			Talk(1,"","<color=cyan>Quan Viªn : <color>diÔn ra vµo 12h , 19h.")
		end
	else
		Talk(1,"","<color=cyan>Quan Viªn : <color>diÔn ra vµo 12h , 19h. ")
	end
end

function dkduangua()
	if (gio == 12 or gio == 19) and (phut >= 00) and (phut < 55) then
		if GetLevel() >= 80 and GetCash() >= 10000 then
                                          StopTimer()
			NewWorld(388,1563,3116)
			SetFightState(1)
                                          LeaveTeam()
                                       	SetTempRevPos(53,1623*32,3182*32) --set ve thanh duong suc ngay doanh trai.
	                            SetLogoutRV(1)--dung diem phuc sinh dang nhap
			Pay(10000)
			Msg2Player("täa ®é vÒ ®Ých :<color=yellow> 163,160.<color>")
			if(GetLevel() > 250) then	
			end
		else
			Talk(1,"","<color=cyan>Quan Viªn : <color>§iÒu kiÖn tham gia: <color=blue>nh©n vËt trªn cÊp ®é 80 vµ lÖ phÝ 1 van l­îng.")
		end
	else
		Talk(1,"","<color=cyan>Quan Viªn : <color>§· hÕt thêi gian ®¨ng ký.")
	end
end

function no()
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------



































