--------========================================================================================----------
--------========================================================================================----------
--------=======================================ANHVIETDONGNAI=====================================-----------
--------========================================================================================----------
--------========================================================================================----------
Include("\\script\\lib\\worldlibrary.lua");
Include("\\script\\header\\taskid.lua");
Include("\\script\\feature\\songbac\\chusongbac.lua");


function main(NpcIndex)
Say("Chñ sßng b¹c : ng­¬i cã muèn ch¬i trß g× kh«ng?", 10,
"Tµi - XØu/taixiu100",
"BÇu Cua T«m C¸/baucuatomca",
"Tho¸t/no")
end

function taixiu100()
Say("Chñ sßng b¹c : ng­¬i cã muèn ch¬i trß g× kh«ng?", 10,
"Ch¬i lu«n/batdau",
"T×m hiÓu/timhieusongbac",
"Tho¸t/no")
end


function batdau()
Say("Chñ sßng b¹c : Mêi b¹n ®Æt - Tµi hay XØu", 10,
"§¹i/batdauDAI",
"TiÓu/batdauTIEU",
"Tho¸t/no")
end;

function batdauDAI(nsel)
SetTaskTemp(TASK_SONGBAC,1)
Say("Chñ sßng b¹c : H·y lùa chän tiÒn ®Æt c­îc", 10,
"1 v¹n/money",
"5 v¹n/money",
"10 v¹n/money",
"Tho¸t/no")
end;

function batdauTIEU(nsel)
SetTaskTemp(TASK_SONGBAC,2)
Say("Chñ sßng b¹c : H·y lùa chän tiÒn ®Æt c­îc", 10,
"1 v¹n/money",
"5 v¹n/money",
"10 v¹n/money",
"Tho¸t/no")
end;

listmoney = {10000,50000,100000}

function money(id)
id = id+1
if GetCash() >= listmoney[id] then
SetTaskTemp(TASK_SONGBAC2,id)
playgame()
else
Talk(1,"no","<color=cyan>Chñ Sßng B¹c:<color> B¹n Kh«ng ®ñ tiÒn råi... !!!!")
end
end;

function playgame()
local xingau = random(001,999)
local checktienvan = listmoney[GetTaskTemp(TASK_SONGBAC2)]/5000
Pay(listmoney[GetTaskTemp(TASK_SONGBAC2)])
	if xingau < 500 then
		if GetTaskTemp(TASK_SONGBAC) == 2 then
			Earn(listmoney[GetTaskTemp(TASK_SONGBAC2)]*2)
                                          Msg2Player("Sè cña b¹n: <color=yellow>"..xingau.."<color> ")
			Talk(1,""," Chóc mõng b¹n ®· chiÕn th¾ng ")
                                          Msg2SubWorld("®¹i hiÖp <color=wood>"..GetName().."<color> ®· ®¸nh b¹c     chiÕn th¾ng<color=wood> "..checktienvan.." <color>v¹n l­îng")
                                          Msg2Player("B¹n nhËn ®­îc <color=wood> "..checktienvan.." <color>v¹n l­îng")
			no()
		else
		              Talk(1,"","Sè <color=yellow>"..xingau.."<color> TiÕc qu¸ b¹n thua råi")
                                       Msg2Player("Sè cña b¹n: <color=yellow>"..xingau.." <color>TiÕc qu¸ b¹n thua råi ")
		      no()
		end
	elseif xingau == 500 then
		Earn(listmoney[GetTaskTemp(TASK_SONGBAC2)])
		Talk(1,"","Sè <color=yellow>"..xingau.."<color> KÕt qu¶ Hoµ")
                            Msg2Player("Sè cña b¹n<color=yellow>"..xingau.."<color> ")
		no()
	elseif xingau > 500 then
		if GetTaskTemp(TASK_SONGBAC) == 1 then
			Earn(listmoney[GetTaskTemp(TASK_SONGBAC2)]*2)
			Talk(1,""," Chóc mõng b¹n ®· chiÕn th¾ng ")
                                          Msg2Player("Sè cña b¹n: <color=yellow>"..xingau.."<color> ")
                                          Msg2SubWorld("®¹i hiÖp <color=wood>"..GetName().."<color> ®· ®¸nh b¹c     chiÕn th¾ng<color=wood> "..checktienvan.." <color>v¹n l­îng")
                                          Msg2Player("B¹n nhËn ®­îc <color=wood> "..checktienvan.." <color>v¹n l­îng")
			no()
		else
			Talk(1,"","Sè <color=yellow>"..xingau.."<color> TiÕc qu¸ b¹n thua råi")
                                          Msg2Player("Sè cña b¹n<color=yellow>"..xingau.." <color>TiÕc qu¸ b¹n thua råi ")
			no()
		end	
	end
end;


function timhieusongbac()
Talk(1,"","Random 1000 sè. Tµi lµ 500 trë lªn, XØu lµ 500 trë xuèng, b»ng 500 lµ hoµ kh«ng mÊt tiÒn c­îc")
end


function no()
SetTaskTemp(TASK_SONGBAC,0)
SetTaskTemp(TASK_SONGBAC2,0)
end

