Include( "\\script\\header\\taskid.lua" );
Include("\\script\\lib\\worldlibrary.lua");
Include("\\script\\header\\factionhead.lua");

function point()
nW,nX,nY = GetWorldPos()
	Tab_inSert = {
	"<color=red>HÖ Thèng:<color> <color=orange>Cuéc sèng nµy biÕt bao ®iÒu tu¬i ®Ñp, Minh Qu©n xin h·y b×nh tÜnh suy xÐt\n<color=green>Täa ®é hiÖn t¹i: B¶n ®å: "..nW.." - X: "..nX.."-Y: "..nY.."",
	"LÖnh Bµi GM/lenhbaigm",
              "§iÓm kinh nghiÖm/func_exp",
	"§iÓm Danh väng/func_dv",
	"§iÓm Tèng Kim/func_tk",
	"§iÓm Phóc Duyªn/func_pd",
	"§iÓm L·nh §¹o/func_leader",
	"§iÓm Liªn §Êu Uy Danh/func_ud",
	"§iÓm Liªn §Êu Vinh Dù/func_vd",
	"TiÒn v¹n/func_goldmoney",
	"TiÒn Xu/func_extmoney",
	"Kü N¨ng 9x-12x/func_kynang",
	"Ta kh«ng cÇn ng¬i d¹y b¶o/no"
	}
Say(Tab_inSert[1],getn(Tab_inSert),
		Tab_inSert[2],
		Tab_inSert[3],
		Tab_inSert[4],
		Tab_inSert[5],
		Tab_inSert[6],
		Tab_inSert[7],
		Tab_inSert[8],
		Tab_inSert[9],
		Tab_inSert[10],
		Tab_inSert[11],
		Tab_inSert[12],
		Tab_inSert[13]
		)	
end

function point2()
nW,nX,nY = GetWorldPos()
	Tab_inSert = {
	"<color=red>HÖ Thèng:<color> <color=orange>Cuéc sèng nµy biÕt bao ®iÒu tu¬i ®Ñp, Minh Qu©n xin h·y b×nh tÜnh suy xÐt\n<color=green>Täa ®é hiÖn t¹i: B¶n ®å: "..nW.." - X: "..nX.."-Y: "..nY.."",
              "§iÓm kinh nghiÖm/func_exp",
	"§iÓm Danh väng/func_dv",
	"§iÓm Tèng Kim/func_tk",
	"§iÓm Phóc Duyªn/func_pd",
	"§iÓm L·nh §¹o/func_leader",
	"§iÓm Liªn §Êu Uy Danh/func_ud",
	"§iÓm Liªn §Êu Vinh Dù/func_vd",
	"TiÒn v¹n/func_goldmoney",
	"TiÒn Xu/func_extmoney",
	"Kü N¨ng 9x-12x/func_kynang",
	"Ta kh«ng cÇn ng¬i d¹y b¶o/no"
	}
Say(Tab_inSert[1],getn(Tab_inSert),
		Tab_inSert[2],
		Tab_inSert[3],
		Tab_inSert[4],
		Tab_inSert[5],
		Tab_inSert[6],
		Tab_inSert[7],
		Tab_inSert[8],
		Tab_inSert[9],
		Tab_inSert[10],
		Tab_inSert[11],
		Tab_inSert[12],
		Tab_inSert[13]
		)	
end
--------------------------lenhbaigm--------------------
function lenhbaigm()
	AddMagicScript(4826)
end
--------------------------------------------
---------Diem Kinh Nghiem---------------
--------------------------------------------
function func_exp()
nW,nX,nY = GetWorldPos()
	Tab_inSert = {
	"<color=red>HÖ Thèng:<color> <color=orange>Cuéc sèng nµy biÕt bao ®iÒu tu¬i ®Ñp, Minh Qu©n xin h·y b×nh tÜnh suy xÐt\n<color=green>Täa ®é hiÖn t¹i: B¶n ®å: "..nW.." - X: "..nX.."-Y: "..nY.."",
	"Thªm 1 cÊp/func_expSel",
	"Thªm 5 cÊp/func_expSel",
	"Thªm 10 cÊp/func_expSel",
	"Thªm 50 cÊp/func_expSel",
	"Thªm 100 cÊp/func_expSel",
	"Thªm 200 cÊp/func_expSel",
	"Ta kh«ng cÇn ng¬i d¹y b¶o/no"
	}
Say(Tab_inSert[1],getn(Tab_inSert),
		Tab_inSert[2],Tab_inSert[3],Tab_inSert[4],Tab_inSert[5],Tab_inSert[6],Tab_inSert[7])	
end

function func_expSel(nSel)
local nSel = nSel +1
	 if nSel == 1 then
		LevelLoop = 1
		elseif nSel == 2 then
		LevelLoop = 5
		elseif nSel == 3 then
		LevelLoop = 10
		elseif nSel == 4 then
		LevelLoop = 50
		elseif nSel == 5 then
		LevelLoop = 100
		elseif nSel == 6 then
		LevelLoop = 200
	 end
		local nLevel = (GetLevel()+LevelLoop)
		SetLevel(nLevel)
		Msg2Player("Ng­¬i võa nhËn "..LevelLoop.." cÊp")
end

--------------------------------------------
---------Diem Danh Vong---------------
--------------------------------------------
function func_dv()
nW,nX,nY = GetWorldPos()
	Tab_inSert = {
	"<color=red>HÖ Thèng:<color> <color=orange>Cuéc sèng nµy biÕt bao ®iÒu tu¬i ®Ñp, Minh Qu©n xin h·y b×nh tÜnh suy xÐt\n<color=green>Täa ®é hiÖn t¹i: B¶n ®å: "..nW.." - X: "..nX.."-Y: "..nY.."\n §iÓm Danh Väng : "..GetRepute().."",
	"Thªm 1 ®iÓm/func_dvSel",
	"Thªm 10 ®iÓm/func_dvSel",
	"Thªm 50 ®iÓm/func_dvSel",
	"Thªm 100 ®iÓm/func_dvSel",
	"Thªm 500 ®iÓm/func_dvSel",
	"Ta kh«ng cÇn ng¬i d¹y b¶o/no"
	}
Say(Tab_inSert[1],getn(Tab_inSert),
		Tab_inSert[2],Tab_inSert[3],Tab_inSert[4],
		Tab_inSert[5],Tab_inSert[6],Tab_inSert[7])	
end

function func_dvSel(nSel)
local nSel = nSel +1
	 if nSel == 1 then
		PointLoop = 1
		elseif nSel == 2 then
		PointLoop = 10
		elseif nSel == 3 then
		PointLoop = 50
		elseif nSel == 4 then
		PointLoop = 100
		elseif nSel == 5 then
		PointLoop = 500
	 end
		AddRepute(PointLoop)
		Msg2Player("Ng­¬i võa nhËn "..PointLoop.." ®iÓm Danh väng")
end

--------------------------------------------
---------Diem Tong Kim---------------
--------------------------------------------
function func_tk()
nW,nX,nY = GetWorldPos()
	Tab_inSert = {
	"<color=red>HÖ Thèng:<color> <color=orange>Cuéc sèng nµy biÕt bao ®iÒu tu¬i ®Ñp, Minh Qu©n xin h·y b×nh tÜnh suy xÐt\n<color=green>Täa ®é hiÖn t¹i: B¶n ®å: "..nW.." - X: "..nX.."-Y: "..nY.."\n §iÓm tÝch lòy Tèng Kim : "..GetAccum().."",
	"Thªm 100 ®iÓm/func_tkSel",
	"Thªm 500 ®iÓm/func_tkSel",
	"Thªm 1000 ®iÓm/func_tkSel",
	"Thªm 5000 ®iÓm/func_tkSel",
	"Thªm 10000 ®iÓm/func_tkSel",
	"Ta kh«ng cÇn ng¬i d¹y b¶o/no"
	}
Say(Tab_inSert[1],getn(Tab_inSert),
		Tab_inSert[2],Tab_inSert[3],Tab_inSert[4],
		Tab_inSert[5],Tab_inSert[6],Tab_inSert[7])	
end

function func_tkSel(nSel)
local nSel = nSel +1
	 if nSel == 1 then
		PointLoop = 100
		elseif nSel == 2 then
		PointLoop = 500
		elseif nSel == 3 then
		PointLoop = 1000
		elseif nSel == 4 then
		PointLoop = 5000
		elseif nSel == 5 then
		PointLoop = 10000
	 end
		AddAccum(PointLoop)
		Msg2Player("Ng­¬i võa nhËn "..PointLoop.." ®iÓm tèng kim")
end

--------------------------------------------
---------Diem Phuc Duyen---------------
--------------------------------------------
function func_pd()
nW,nX,nY = GetWorldPos()
	Tab_inSert = {
	"<color=red>HÖ Thèng:<color> <color=orange>Cuéc sèng nµy biÕt bao ®iÒu tu¬i ®Ñp, Minh Qu©n xin h·y b×nh tÜnh suy xÐt\n<color=green>Täa ®é hiÖn t¹i: B¶n ®å: "..nW.." - X: "..nX.."-Y: "..nY.."\n §iÓm Phóc duyªn : "..GetFuYuan().."",
	"Thªm 100 ®iÓm/func_pdSel",
	"Thªm 500 ®iÓm/func_pdSel",
	"Thªm 1000 ®iÓm/func_pdSel",
	"Thªm 5000 ®iÓm/func_pdSel",
	"Thªm 10000 ®iÓm/func_pdSel",
	"Ta kh«ng cÇn ng¬i d¹y b¶o/no"
	}
Say(Tab_inSert[1],getn(Tab_inSert),
		Tab_inSert[2],Tab_inSert[3],Tab_inSert[4],
		Tab_inSert[5],Tab_inSert[6],Tab_inSert[7])	
end

function func_pdSel(nSel)
local nSel = nSel +1
	 if nSel == 1 then
		PointLoop = 100
		elseif nSel == 2 then
		PointLoop = 500
		elseif nSel == 3 then
		PointLoop = 1000
		elseif nSel == 4 then
		PointLoop = 5000
		elseif nSel == 5 then
		PointLoop = 10000
	 end
		AddFuYuan(PointLoop)
		Msg2Player("Ng­¬i võa nhËn "..PointLoop.." ®iÓm phóc duyªn")
end

--------------------------------------------
---------Diem Lanh Dao---------------
--------------------------------------------
function func_leader()
nW,nX,nY = GetWorldPos()
	Tab_inSert = {
	"<color=red>HÖ Thèng:<color> <color=orange>Cuéc sèng nµy biÕt bao ®iÒu tu¬i ®Ñp, Minh Qu©n xin h·y b×nh tÜnh suy xÐt\n<color=green>Täa ®é hiÖn t¹i: B¶n ®å: "..nW.." - X: "..nX.."-Y: "..nY.."\n §iÓm L·nh ®¹o: "..GetLeadExp().."",
	"Thªm 100 ®iÓm/func_leaderSel",
	"Ta kh«ng cÇn ng¬i d¹y b¶o/no"
	}
Say(Tab_inSert[1],getn(Tab_inSert),
		Tab_inSert[2],Tab_inSert[3])	
end

function func_leaderSel()
	for i=1,50 do
		AddLeadExp(9E9)
		-- Msg2Player("Tµi l·nh ®¹o cña ng­¬i b©y giê lµ: "..GetLeadExp.."")
	end
end

--------------------------------------------
---------Them Diem Lien Dau UY DANH---------------
--------------------------------------------
function func_ud()
nW,nX,nY = GetWorldPos()
	Tab_inSert = {
	"<color=red>HÖ Thèng:<color> <color=orange>Cuéc sèng nµy biÕt bao ®iÒu tu¬i ®Ñp, Minh Qu©n xin h·y b×nh tÜnh suy xÐt\n<color=green>Täa ®é hiÖn t¹i: B¶n ®å: "..nW.." - X: "..nX.."-Y: "..nY.."\n §iÓm liªn ®Êu Uy Danh: "..GetRespect().."",
	"Thªm 10 ®iÓm/func_udSel",
	"Thªm 100 ®iÓm/func_udSel",
	"Thªm 500 ®iÓm/func_udSel",
	"Thªm 5000 ®iÓm/func_udSel",
	"Thªm 10000 ®iÓm/func_udSel",
	"Ta kh«ng cÇn ng¬i d¹y b¶o/no"
	}
Say(Tab_inSert[1],getn(Tab_inSert),
		Tab_inSert[2],Tab_inSert[3],Tab_inSert[4],
		Tab_inSert[5],Tab_inSert[6],Tab_inSert[7])	
end

function func_udSel(nSel)
local nSel = nSel +1
	 if nSel == 1 then
		Point = 10
		elseif nSel == 2 then
		Point = 100
		elseif nSel == 3 then
		Point = 500
		elseif nSel == 4 then
		Point = 5000
		elseif nSel == 5 then
		Point = 10000
	 end
		AddRespect(Point)
		Msg2Player("Ng­¬i võa nhËn "..Point.." ®iÓm liªn ®Êu Uy Danh")
end
--------------------------------------------
---------Them lien Dau VINH DU---------------
--------------------------------------------
function func_vd()
nW,nX,nY = GetWorldPos()
	Tab_inSert = {
	"<color=red>HÖ Thèng:<color> <color=orange>Cuéc sèng nµy biÕt bao ®iÒu tu¬i ®Ñp, Minh Qu©n xin h·y b×nh tÜnh suy xÐt\n<color=green>Täa ®é hiÖn t¹i: B¶n ®å: "..nW.." - X: "..nX.."-Y: "..nY.."\n§iÓm liªn ®Êu danh dù: "..GetHonor().." ",
	"Thªm 10 ®iÓm/func_vdSel",
	"Thªm 100 ®iÓm/func_vdSel",
	"Thªm 500 ®iÓm/func_vdSel",
	"Thªm 5000 ®iÓm/func_vdSel",
	"Thªm 10000 ®iÓm/func_vdSel",
	"Ta kh«ng cÇn ng¬i d¹y b¶o/no"
	}
Say(Tab_inSert[1],getn(Tab_inSert),
		Tab_inSert[2],Tab_inSert[3],Tab_inSert[4],
		Tab_inSert[5],Tab_inSert[6],Tab_inSert[7])	
end

function func_vdSel(nSel)
local nSel = nSel +1
	 if nSel == 1 then
		Point = 10
		elseif nSel == 2 then
		Point = 100
		elseif nSel == 3 then
		Point = 500
		elseif nSel == 4 then
		Point = 5000
		elseif nSel == 5 then
		Point = 10000
	 end
		AddHonor(Point)
		Msg2Player("Ng­¬i võa nhËn "..Point.." ®iÓm liªn ®Êu Vinh Dù")
end

--------------------------------------------
---------Them Tien Van---------------
--------------------------------------------
function func_goldmoney()
nW,nX,nY = GetWorldPos()
	Tab_inSert = {
	"<color=red>HÖ Thèng:<color> <color=orange>Cuéc sèng nµy biÕt bao ®iÒu tu¬i ®Ñp, Minh Qu©n xin h·y b×nh tÜnh suy xÐt\n<color=green>Täa ®é hiÖn t¹i: B¶n ®å: "..nW.." - X: "..nX.."-Y: "..nY.."",
	"Thªm 1 v¹n l­îng/func_goldmoneySel",
	"Thªm 10 v¹n l­îng/func_goldmoneySel",
	"Thªm 50 v¹n l­îng/func_goldmoneySel",
	"Thªm 500 v¹n l­îng/func_goldmoneySel",
	"Thªm 1000 v¹n l­îng/func_goldmoneySel",
	"Ta kh«ng cÇn ng¬i d¹y b¶o/no"
	}
Say(Tab_inSert[1],getn(Tab_inSert),
		Tab_inSert[2],Tab_inSert[3],Tab_inSert[4],
		Tab_inSert[5],Tab_inSert[6],Tab_inSert[7])	
end

function func_goldmoneySel(nSel)
local nSel = nSel +1
	 if nSel == 1 then
		Money = 1E4
		elseif nSel == 2 then
		Money = 1E5
		elseif nSel == 3 then
		Money = 5E5
		elseif nSel == 4 then
		Money = 5E6
		elseif nSel == 5 then
		Money = 1E7
	 end
		Earn(Money)
		Msg2Player("Ng­¬i võa nhËn "..Money.." v¹n l­îng")
end
--------------------------------------------
---------Them Tien Xu---------------
--------------------------------------------
function func_extmoney()
SetTask(TASK_NAPTHE999, GetTask(TASK_NAPTHE999) + 1000)
AddExtPoint(1000);
Msg2Player("Ng­¬i võa nhËn 1000 Xu")
end
--------------------------------------------
---------Them Ky Nang--------------
--------------------------------------------
function func_kynang()
	local nTaskValue = GetTask(TASK_TANTHU);
	if(GetNumber(1,nTaskValue,2) > 0) then
		Talk(1, "", "B¹n ®· nhËn hç trî nµy råi!")
	return end
	local nCurFac = GetFactionNo();
	if(nCurFac < 0 or nCurFac > 10) then
	Msg2Player("B¹n ch­a gia nhËp m«n ph¸i!")
	return end
	nCurFac = nCurFac +1;
	for i =1,getn(SKILL90_ARRAY[nCurFac]) do
		if(SKILL90_ARRAY[nCurFac][i][3] > 0) then
		AddMagic(SKILL90_ARRAY[nCurFac][i][2],20);
		else
		AddMagic(SKILL90_ARRAY[nCurFac][i][2],0);
		end
	end
	for i =1,getn(SKILL150_ARRAY[nCurFac]) do
		if(SKILL150_ARRAY[nCurFac][i][3] > 0) then
		AddMagic(SKILL150_ARRAY[nCurFac][i][2],20);
		else
		AddMagic(SKILL150_ARRAY[nCurFac][i][2],0);
		end
	end
	AddMagic(SKILL120AR[nCurFac],20);
	AddMagic(210,1);
	SetTask(TASK_TANTHU, SetNumber(1,nTaskValue,2,1));
	Talk(1,"","Vâ c«ng ®· ®­îc truyÒn thô, h·y thö vËn c«ng xem sao!");
end;
function no()
end
