--------========================================================================================----------
--------========================================================================================----------
--------=======================================ANHVIETDONGNAI=====================================-----------
--------========================================================================================----------
--------========================================================================================----------
function addnpcchutien()
	local nNpcIdx;
--luyen kc
local MOCNHAN = {
{1753,3079},
{1761,3085},
{1777,3094},
{1787,3097},
{1749,3086},
{1756,3090},
{1764,3095}
};
local COCGO = {
{1745,3193},
{1752,3097},
{1759,3103},
{1766,3107},
{1775,3106},
{1741,3099},
{1748,3104}
};

local BAOCAT = {
{1737,3114},
{1709,3112},
{1767,3118},
{1737,3106},
{1744,3111},
{1750,3114},
{1758,3118},
{1772,3116}
};
	for i=1,getn(MOCNHAN) do
	nNpcIdx = AddNpcNew(414,1,100,MOCNHAN[i][1]*32,MOCNHAN[i][2]*32,DEATH_COCGO,
		5,nil,1,RANDOMC(0,1,2,3,4),1,1,nil,nil,1,nil,nil,nil,50,nil,nil,"");
	SetNpcValue(nNpcIdx,3);
	end
	for i=1,getn(COCGO) do
	nNpcIdx = AddNpcNew(413,1,100,COCGO[i][1]*32,COCGO[i][2]*32,DEATH_COCGO,
		5,nil,1,RANDOMC(0,1,2,3,4),1,1,nil,nil,1,nil,nil,nil,50,nil,nil,"");
	SetNpcValue(nNpcIdx,1);
	end
	for i=1,getn(BAOCAT) do
	nNpcIdx = AddNpcNew(415,1,100,BAOCAT[i][1]*32,BAOCAT[i][2]*32,DEATH_COCGO,
		5,nil,1,RANDOMC(0,1,2,3,4),1,1,nil,nil,1,nil,nil,nil,50,nil,nil,"");
	SetNpcValue(nNpcIdx,2);
	end
	----NPC Mon Phai trong thon-----
	nNpcIdx = AddNpcNew(189,1,100,1629*32,3119*32,"\\script\\npcthon\\npcmonphai\\thieulam.lua",6,183) SetNpcValue(nNpcIdx, 0);
	nNpcIdx = AddNpcNew(184,1,100,1625*32,3115*32,"\\script\\npcthon\\npcmonphai\\thienvuong.lua",6,247) SetNpcValue(nNpcIdx, 1);
	nNpcIdx = AddNpcNew(177,1,100,1620*32,3110*32,"\\script\\npcthon\\npcmonphai\\duongmon.lua",6,246) SetNpcValue(nNpcIdx, 2);
	nNpcIdx = AddNpcNew(186,1,100,1616*32,3106*32,"\\script\\npcthon\\npcmonphai\\ngudoc.lua",6,178) SetNpcValue(nNpcIdx, 3);
	nNpcIdx = AddNpcNew(83 ,1,100,1614*32,3118*32,"\\script\\npcthon\\npcmonphai\\ngami.lua",6,248) SetNpcValue(nNpcIdx, 4);
	nNpcIdx = AddNpcNew(171,1,100,1619*32,3124*32,"\\script\\npcthon\\npcmonphai\\thuyyen.lua",6,177) SetNpcValue(nNpcIdx, 5);
	nNpcIdx = AddNpcNew(103,1,100,1622*32,3128*32,"\\script\\npcthon\\npcmonphai\\caibang.lua",6,194) SetNpcValue(nNpcIdx, 6);
	nNpcIdx = AddNpcNew(181,1,100,1612*32,3103*32,"\\script\\npcthon\\npcmonphai\\thiennhan.lua",6,240) SetNpcValue(nNpcIdx, 7);
	nNpcIdx = AddNpcNew(188,1,100,1605*32,3110*32,"\\script\\npcthon\\npcmonphai\\vodang.lua",6,249) SetNpcValue(nNpcIdx, 8);
	nNpcIdx = AddNpcNew(309,1,100,1610*32,3114*32,"\\script\\npcthon\\npcmonphai\\conlon.lua",6,181) SetNpcValue(nNpcIdx, 9);

	----NPC Chuc nang-----
	AddNpcNew(625,1,100,1636*32,3200*32,"\\script\\npcthon\\ruongchuado\\chutientran.lua",6,"R­¬ng Chøa §å"); 
	AddNpcNew(625,1,100,1703*32,3194*32,"\\script\\npcthon\\ruongchuado\\chutientran.lua",6,"R­¬ng Chøa §å"); 

	nNpcIdx = AddNpcNew(219,1,100,1641*32,3126*32,"\\script\\global\\npcchucnang\\taphoa.lua",6,84); SetNpcValue(nNpcIdx, 23);
	nNpcIdx = AddNpcNew(198,1,100,1664*32,3152*32,"\\script\\global\\npcchucnang\\thoren.lua",6,55); SetNpcValue(nNpcIdx, 22);
	nNpcIdx = AddNpcNew(203,1,100,1658*32,3120*32,"\\script\\global\\npcchucnang\\hieuthuoc.lua",6,251); SetNpcValue(nNpcIdx, 24);

	AddNpcNew(237,1,100,1677*32,3098*32,"\\script\\global\\npcchucnang\\xaphu.lua",6,42) ---b¾c
	AddNpcNew(237,1,100,1614*32,3095*32,"\\script\\global\\npcchucnang\\xaphu.lua",6,42)  ----t©y
	AddNpcNew(237,1,100,1596*32,3189*32,"\\script\\global\\npcchucnang\\xaphu.lua",6,42) ---nam
	AddNpcNew(237,1,100,1724*32,3224*32,"\\script\\global\\npcchucnang\\xaphu.lua",6,42)  ---®«ng

	AddNpcNew(108,1,100,1646*32,3143*32,"\\script\\global\\npcchucnang\\datau.lua",6,59)
              AddNpcNew(377,1,100,1631*32 ,3151*32,"\\script\\global\\npcchucnang\\lequan.lua",6,57) 
	AddNpcNew(663,1,100,1625*32,3142*32,"\\script\\global\\npcchucnang\\longngu.lua",6)--enemy199
	AddNpcNew(373,1,100,1658*32, 3145*32,"\\script\\feature\\congthanh\\npccongthanh.lua",6,"C«ng Thµnh Quan")
              AddNpcNew(1596,1,100,1648*32,3131*32,"\\script\\global\\npcchucnang\\trogiup.lua",6,"Hç Trî T©n Thñ ") --308

	--Npc chu tien tran
	AddNpcNew(311,1,100,1737*32,3086*32,"\\script\\global\\npcchucnang\\vosu.lua",6,201)

	
end;

function addtrapchutien()
	AddTrapEx1(100,1719,3250,25,"\\script\\maps\\chutien\\trap\\cong4h.lua")    -----Ex1  däc ®øng, 25 lµ ®é dµi
	AddTrapEx2(100,1593,3183,25,"\\script\\maps\\chutien\\trap\\cong8h.lua")        -----Ex2 ngang, 25 lµ ®é dµi
	AddTrapEx1(100,1589,3104,25,"\\script\\maps\\chutien\\trap\\cong10h.lua")    -----Ex1  däc ®øng, 25 lµ ®é dµi
	AddTrapEx2(100,1689,3095,25,"\\script\\maps\\chutien\\trap\\cong2h.lua")       -----Ex2 ngang, 25 lµ ®é dµi
	
end;






















