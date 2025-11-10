-- Author: Kinnox
-- NameTool: Lenh Bai Gm
-- Option: Move Maps

---Toa do boss
POSITION_ARRAY_BOSS={
{78,1740,3323}, -- vi tri 1 tuong duong
{78,1677,3541}, -- vi tri 2 tuong duong	
{1,1550,2790},
{1,1550,2790},
{80,1389,3410},
{80,1389,3410},
{37,1559,3449},
{37,1655,2627},
};
---Toa do Tong Kim
POSITION_ARRAY_TONGKIM={
{380,1444,3333}, -- Giua ban do
{380,1567,3205}, -- Ben ngoai doanh trai Kim
{380,1330,3445}, -- Ben ngoai doanh trai Tong
{380,1688,3072}, -- Ben trong doanh trai Kim
{380,1242,3549}, -- Ben trong doanh trai Tong
};
---Toa do Cong Thanh 
POSITION_ARRAY_CTC={
{221, 1538,3218}, --  Thu
{221, 1897,3569}, -- Cong
{221,1590,3412}, -- Binh Giang
{221,1655,3347}, -- Lap Duong
{221,1723,3281}, -- Dinh Xuyen
};

------------Vuot Ai
ARRAY_VUOTAI={
{480,1560,3216}, 
{481,1560,3216}, 
{482,1560,3216}, 
{483,1560,3216}, 
{484,1560,3216}, 
{485,1560,3216}, 
{486,1560,3216}, 
{487,1560,3216}, 
{488,1560,3216}, 
{489,1560,3216}
};

ARRAY_LIENDAU={
{397,1622,3196}, {399,1622,3196}, 
{401,1622,3196}, {403,1622,3196}, {405,1622,3196}, {407,1622,3196}, {409,1622,3196}, 
{411,1622,3196}, {413,1622,3196}, {415,1622,3196}, {435,1622,3196}, 
{436,1622,3196}, {437,1622,3196}, {438,1622,3196}, 
{441,1622,3196}, {443,1622,3196}, {445,1622,3196}, {447,1622,3196}, {449,1622,3196}, 
{451,1622,3196}, {453,1622,3196}, {455,1622,3196}, {457,1622,3196}, {459,1622,3196}
};



function MoveMaps()
nW,nX,nY = GetWorldPos()
	Tab_inSert = {
	"<color=red>HÖ Thèng:<color> <color=orange>Cuéc sèng nµy biÕt bao ®iÒu tu¬i ®Ñp, Minh Qu©n xin h·y b×nh tÜnh suy xÐt\n<color=green>Täa ®é hiÖn t¹i: B¶n ®å: "..nW.." - X: "..nX.."-Y: "..nY.."",
	"Di chuyÓn vµo Tèng Kim/MoveTK",
	"Di chuyÓn ®Õn Boss Hoµng Kim/MoveBoss",
	"Di chuyÓn ®Õn b¶n ®å V­ît ¶i(480-489)/MoveVuotAi",
	"Di chuyÓn ®Õn b¶n ®å Liªn ®Êu/MoveLienDau",
	"Di chuyÓn ®Õn b¶n ®å Phong L¨ng §é/MovePLD",
	--"Di chuyÓn ®Õn Ba l¨ng huyÖn/MoveBLH",
	"Di chuyÓn ®Õn ChiÕn Tr­êng C«ng Thµnh/MoveCTC",
	"Ta kh«ng cÇn ng¬i d¹y b¶o/no"
	}
Say(Tab_inSert[1],getn(Tab_inSert),
Tab_inSert[2],
Tab_inSert[3],
Tab_inSert[4],
Tab_inSert[5],
Tab_inSert[6],
Tab_inSert[7],
Tab_inSert[8]
)	
end;
--------------------Di chuyen den ban do cong thanh chien--------------

function MoveCTC()
nW,nX,nY = GetWorldPos()
	Tab_inSert = {
	"<color=red>HÖ Thèng:<color> <color=orange>Cuéc sèng nµy biÕt bao ®iÒu tu¬i ®Ñp, Minh Qu©n xin h·y b×nh tÜnh suy xÐt\n<color=green>Täa ®é hiÖn t¹i: B¶n ®å: "..nW.." - X: "..nX.."-Y: "..nY.."",
	"Bªn Thñ Thµnh/ExMoveCTC",
	"Bªn C«ng Thµnh/ExMoveCTC",
	"Trô B×nh Giang/ExMoveCTC",
	"Trô LËp D­¬ng/ExMoveCTC",
	"Trô §Þnh Xuyªn/ExMoveCTC",
	"Ta kh«ng cÇn ng¬i d¹y b¶o/no"
	}
Say(Tab_inSert[1],getn(Tab_inSert),
Tab_inSert[2],
Tab_inSert[3],
Tab_inSert[4],
Tab_inSert[5],
Tab_inSert[6],
Tab_inSert[7]
)
end;

function ExMoveCTC(nSel)
local nSel = nSel + 1;
NewWorld(POSITION_ARRAY_CTC[nSel][1],POSITION_ARRAY_CTC[nSel][2],POSITION_ARRAY_CTC[nSel][3]);
SetFightState(0);
SetCurCamp(0);
end

----------Di chuyen den ban do tong kim ----------

function MoveTK()
nW,nX,nY = GetWorldPos()
	Tab_inSert = {
	"<color=red>HÖ Thèng:<color> <color=orange>Cuéc sèng nµy biÕt bao ®iÒu tu¬i ®Ñp, Minh Qu©n xin h·y b×nh tÜnh suy xÐt\n<color=green>Täa ®é hiÖn t¹i: B¶n ®å: "..nW.." - X: "..nX.."-Y: "..nY.."",
	"Gi÷a b¶n ®å/ExMoveTK",
	"Bªn ngoµi doanh tr¹i Kim/ExMoveTK",
	"Bªn ngoµi doanh tr¹i Tèng/ExMoveTK",
	"Bªn trong doanh tr¹i Kim/ExMoveTK",
	"Bªn trong doanh tr¹i Tèng/ExMoveTK",
	"Ta kh«ng cÇn ng¬i d¹y b¶o/no"
	}
Say(Tab_inSert[1],getn(Tab_inSert),
Tab_inSert[2],
Tab_inSert[3],
Tab_inSert[4],
Tab_inSert[5],
Tab_inSert[6],
Tab_inSert[7]
)
end;
function ExMoveTK(nSel)
local nSel = nSel + 1;
	NewWorld(POSITION_ARRAY_TONGKIM[nSel][1],POSITION_ARRAY_TONGKIM[nSel][2],POSITION_ARRAY_TONGKIM[nSel][3]);
	SetFightState(0);
	SetCurCamp(0);
end
----------Di chuyen den ban do boss hoang kim ----------

function MoveBoss()
nW,nX,nY = GetWorldPos()
	Tab_inSert = {
	"<color=red>HÖ Thèng:<color> <color=orange>Cuéc sèng nµy biÕt bao ®iÒu tu¬i ®Ñp, Minh Qu©n xin h·y b×nh tÜnh suy xÐt\n<color=green>Täa ®é hiÖn t¹i: B¶n ®å: "..nW.." - X: "..nX.."-Y: "..nY.."",
	"Boss T­¬ng D­¬ng vÞ trÝ 1/ExMoveBoss",
	"Boss T­¬ng D­¬ng vÞ trÝ 2/ExMoveBoss",
	"Boss Ph­îng T­êng vÞ trÝ 1/ExMoveBoss",
	"Boss Ph­îng T­êng vÞ trÝ 2/ExMoveBoss",
	"Boss D­¬ng Ch©u vÞ trÝ 1/ExMoveBoss",
	"Boss D­¬ng Ch©u vÞ trÝ 2/ExMoveBoss",
	"Boss BiÖn Kinh vÞ trÝ 1/ExMoveBoss",
	"Boss BiÖn Kinh vÞ trÝ 2/ExMoveBoss",
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
Tab_inSert[10]
)
end;

function ExMoveBoss(nSel)
local nSel = nSel + 1;
	NewWorld(POSITION_ARRAY_BOSS[nSel][1],POSITION_ARRAY_BOSS[nSel][2],POSITION_ARRAY_BOSS[nSel][3]);
	SetFightState(1);
end;

----------Di chuyen den ban do vuot ai ----------

function MoveVuotAi()
	Say("GM muèn dÞch chuyÓn ®Õn m¸p V­ît ¶i nµo ?",getn(ARRAY_VUOTAI),
		"Map 480/ExMoveVuotAi",
		"Map 481/ExMoveVuotAi",
		"Map 482/ExMoveVuotAi",
		"Map 483/ExMoveVuotAi",
		"Map 484/ExMoveVuotAi",
		"Map 485/ExMoveVuotAi",
		"Map 486/ExMoveVuotAi",
		"Map 487/ExMoveVuotAi",
		"Map 488/ExMoveVuotAi",
		"Map 489/ExMoveVuotAi"
		)
end;

function ExMoveVuotAi(nSel)
local nSel = nSel + 1;
	NewWorld(ARRAY_VUOTAI[nSel][1],ARRAY_VUOTAI[nSel][2],ARRAY_VUOTAI[nSel][3]);
	SetFightState(0);
	SetCurCamp(0);
end;


----------Di chuyen den ban do Lien Dau ----------
function MoveLienDau()
	Say("GM muèn dÞch chuyÓn ®Õn m¸p Liªn §©Ý nµo ?",getn(ARRAY_LIENDAU),
		"Map 397/ExMoveLienDau",
		"Map 399/ExMoveLienDau",
		"Map 401/ExMoveLienDau",
		"Map 403/ExMoveLienDau",
		"Map 407/ExMoveLienDau",
		"Map 409/ExMoveLienDau",
		"Map 413/ExMoveLienDau",
		"Map 415/ExMoveLienDau",
		"Map 535/ExMoveLienDau",
		"Map 536/ExMoveLienDau",
		"Map 537/ExMoveLienDau",
		"Map 538/ExMoveLienDau",
		"Map 541/ExMoveLienDau",
		"Map 543/ExMoveLienDau",
		"Map 545/ExMoveLienDau",
		"Map 547/ExMoveLienDau",
		"Map 549/ExMoveLienDau",
		"Map 551/ExMoveLienDau",
		"Map 553/ExMoveLienDau",
		"Map 555/ExMoveLienDau",
		"Map 557/ExMoveLienDau",
		"Map 559/ExMoveLienDau"
		)
end;

function ExMoveLienDau(nSel)
local nSel = nSel + 1;
	NewWorld(ARRAY_LIENDAU[nSel][1],ARRAY_LIENDAU[nSel][2],ARRAY_LIENDAU[nSel][3]);
	SetFightState(0);
	SetCurCamp(0);
end;


----------Di chuyen den ban do Phong Lang do ----------

function MovePLD()
nW,nX,nY = GetWorldPos()
	Tab_inSert = {
	"<color=red>HÖ Thèng:<color> <color=orange>Cuéc sèng nµy biÕt bao ®iÒu tu¬i ®Ñp, Minh Qu©n xin h·y b×nh tÜnh suy xÐt\n<color=green>Täa ®é hiÖn t¹i: B¶n ®å: "..nW.." - X: "..nX.."-Y: "..nY.."",
	"B¶n ®å Phong L¨ng §é BÕn 1/ExMovePLD",
	"B¶n ®å Phong L¨ng §é BÕn 2/ExMovePLD",
	"B¶n ®å Phong L¨ng §é BÕn 3/ExMovePLD",
	"Ta kh«ng cÇn ng¬i d¹y b¶o/no"
	}
Say(Tab_inSert[1],getn(Tab_inSert),
Tab_inSert[2],
Tab_inSert[3],
Tab_inSert[4],
Tab_inSert[5]
)
end;
TAB_PLD = 
{
337,
338,
339
};

function ExMovePLD(nSel)
	local nSel = nSel + 1;
	NewWorld(TAB_PLD[nSel],1616,3204)
	SetFightState(1);
end;
--------ba lang huyen---------------------------------

function MoveBLH()
	NewWorld(53,1582, 3237);
	SetFightState(0);
end
