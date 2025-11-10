--------========================================================================================----------
--------========================================================================================----------
--------=======================================ANHVIETDONGNAI=====================================-----------
--------========================================================================================----------
--------========================================================================================----------

Include("\\script\\lib\\worldlibrary.lua");
Include("\\script\\header\\taskid.lua");



function main(sel)
nhiemvuphongky()
end

function nhiemvuphongky()
if(GetLevel() < 80) then
	Talk(1,"","H·y ®¹t ®Õn <color=red>cÊp 80<color> míi cã thÓ tham gia nhiÖm vô nµy!");
	return end

UTask_fzq = GetTask(TASK_PHONGKY);
if (UTask_fzq < 1) then
Say("NhiÖm vô TÝn Sø, Vâ L©m CTC", 10,	
	"NhËn NhiÖm Vô TÝn Sø./yes", 
	"Thoat./no")

elseif (UTask_fzq >= 1) then
Say("NhiÖm vô TÝn Sø, Vâ L©m CTC", 10,	
	"KÕt Thóc NhiÖm Vô/yes1", 
	"Thoat./no");


else
Talk(1,"","b¹n ®· hoµn thµnh mau trë vÒ");
end;
end

function yes()
if GetCash() < 50000 then
Talk(1,"","B¹n kh«ng ®ñ 5 v¹n phÝ tham gia");
return end
Msg2Player("Toa do 10 tieu chi :")
Msg2Player("Tieu chi 1 : 193/193");
Msg2Player("Tieu chi 2 : 197/174");
Msg2Player("Tieu chi 3 : 197/160");
Msg2Player("Tieu chi 4 : 178/160");
Msg2Player("Tieu chi 5 : 188/181");
Msg2Player("Tieu chi 6 : 186/196");
Msg2Player("Tieu chi 7 : 186/187");
Msg2Player("Tieu chi 8 : 164/196");
Msg2Player("Tieu chi 9 : 174/175");
Msg2Player("Tieu chi 10: 169/160");
NewWorld(389,1563,3116)
SetFightState(1);
SetLogoutRV(1)--dung diem phuc sinh dang nhap
Pay(50000)
end;


function yes1()
SetTask(TASK_PHONGKY, 0)
NewWorld(53, 1582, 3237);
SetFightState(0);
end;

function no()
end



