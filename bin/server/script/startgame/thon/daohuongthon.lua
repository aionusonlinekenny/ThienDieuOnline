--------========================================================================================----------
--------========================================================================================----------
--------=======================================ANHVIETDONGNAI=====================================-----------
--------========================================================================================----------
--------========================================================================================----------
function addnpcdaohuong()
	local nNpcIdx;
--luyen kc
local MOCNHAN = {
{1643,2983},
{1647,2978},
{1652,2973},
{1656,2968}
};
local COCGO = {
{1637,2977},
{1642,2972},
{1647,2968},
{1652,2963}
};

local BAOCAT = {
{1632,2970},
{1637,2965},
{1642,2960},
{1647,2955}
};
	for i=1,getn(MOCNHAN) do
	nNpcIdx = AddNpcNew(414,1,101,MOCNHAN[i][1]*32,MOCNHAN[i][2]*32,DEATH_COCGO,
		5,nil,1,RANDOMC(0,1,2,3,4),1,1,nil,nil,1,nil,nil,nil,50,nil,nil,"");
	SetNpcValue(nNpcIdx,3);
	end
	for i=1,getn(COCGO) do
	nNpcIdx = AddNpcNew(413,1,101,COCGO[i][1]*32,COCGO[i][2]*32,DEATH_COCGO,
		5,nil,1,RANDOMC(0,1,2,3,4),1,1,nil,nil,1,nil,nil,nil,50,nil,nil,"");
	SetNpcValue(nNpcIdx,1);
	end
	for i=1,getn(BAOCAT) do
	nNpcIdx = AddNpcNew(415,1,101,BAOCAT[i][1]*32,BAOCAT[i][2]*32,DEATH_COCGO,
		5,nil,1,RANDOMC(0,1,2,3,4),1,1,nil,nil,1,nil,nil,nil,50,nil,nil,"");
	SetNpcValue(nNpcIdx,2);
	end
	----NPC Mon Phai trong thon-----
	nNpcIdx = AddNpcNew(189,1,101,1690*32,3173*32,"\\script\\npcthon\\npcmonphai\\thieulam.lua",6,183) SetNpcValue(nNpcIdx, 0);
	nNpcIdx = AddNpcNew(184,1,101,1694*32,3168*32,"\\script\\npcthon\\npcmonphai\\thienvuong.lua",6,247) SetNpcValue(nNpcIdx, 1);
	nNpcIdx = AddNpcNew(177,1,101,1699*32,3163*32,"\\script\\npcthon\\npcmonphai\\duongmon.lua",6,246) SetNpcValue(nNpcIdx, 2);
	nNpcIdx = AddNpcNew(186,1,101,1704*32,3158*32,"\\script\\npcthon\\npcmonphai\\ngudoc.lua",6,178) SetNpcValue(nNpcIdx, 3);
	nNpcIdx = AddNpcNew(83,1,101,1709*32,3153*32,"\\script\\npcthon\\npcmonphai\\ngami.lua",6,248) SetNpcValue(nNpcIdx, 4);
	nNpcIdx = AddNpcNew(171,1,101,1686*32,3167*32,"\\script\\npcthon\\npcmonphai\\thuyyen.lua",6,177) SetNpcValue(nNpcIdx, 5);
	nNpcIdx = AddNpcNew(103,1,101,1690*32,3162*32,"\\script\\npcthon\\npcmonphai\\caibang.lua",6,194) SetNpcValue(nNpcIdx, 6);
	nNpcIdx = AddNpcNew(181,1,101,1695*32,3158*32,"\\script\\npcthon\\npcmonphai\\thiennhan.lua",6,240) SetNpcValue(nNpcIdx, 7);
	nNpcIdx = AddNpcNew(188,1,101,1700*32,3153*32,"\\script\\npcthon\\npcmonphai\\vodang.lua",6,249) SetNpcValue(nNpcIdx, 8);
	nNpcIdx = AddNpcNew(309,1,101,1705*32,3148*32,"\\script\\npcthon\\npcmonphai\\conlon.lua",6,181) SetNpcValue(nNpcIdx, 9);

	----NPC Chuc nang-----
	AddNpcNew(625,1,101,1675*32,3141*32,"\\script\\npcthon\\ruongchuado\\daohuongthon.lua",6,"R­¬ng Chøa §å"); 
	
	nNpcIdx = AddNpcNew(219,1,101,1637*32,3135*32,"\\script\\global\\npcchucnang\\taphoa.lua",6,84); SetNpcValue(nNpcIdx, 23);
	nNpcIdx = AddNpcNew(198,1,101,1611*32,3135*32,"\\script\\global\\npcchucnang\\thoren.lua",6,55); SetNpcValue(nNpcIdx, 22);
	nNpcIdx = AddNpcNew(203,1,101,1680*32,3196*32,"\\script\\global\\npcchucnang\\hieuthuoc.lua",6,251); SetNpcValue(nNpcIdx, 24);

	AddNpcNew(237,1,101,1626*32,3096*32,"\\script\\global\\npcchucnang\\xaphu.lua",6,42) ---b¾c

	AddNpcNew(108,1,101,1687*32,3134*32,"\\script\\global\\npcchucnang\\datau.lua",6,59)
              AddNpcNew(377,1,101,1693*32 ,3138*32,"\\script\\global\\npcchucnang\\lequan.lua",6,57) 

	AddNpcNew(663,1,101,1669*32,3147*32,"\\script\\global\\npcchucnang\\longngu.lua",6)--enemy199
	AddNpcNew(373,1,101,1664*32, 3164*32,"\\script\\feature\\congthanh\\npccongthanh.lua",6,"C«ng Thµnh Quan")
              AddNpcNew(1596,1,101,1686*32,3151*32,"\\script\\global\\npcchucnang\\trogiup.lua",6,"Hç Trî T©n Thñ ") --308

	--Npc dao h­¬ng th«n
	AddNpcNew(311,1,101,1657*32,2988*32,"\\script\\global\\npcchucnang\\vosu.lua",6,201)

	
end;

function addtrapdaohuong()
               AddTrapEx1(101,1754,3189,20,"\\script\\maps\\daohuong\\trap\\cong222h.lua")    -----Ex1  däc ®øng, 25 lµ ®é dµi
               AddTrapEx1(101,1727,3218,12,"\\script\\maps\\daohuong\\trap\\cong22h.lua")    -----Ex1  däc ®øng, 25 lµ ®é dµi
               AddTrapEx2(101,1725,3251,12,"\\script\\maps\\daohuong\\trap\\cong2h.lua")    -----Ex1  däc ®øng, 25 lµ ®é dµi
               AddTrapEx1(101,1736,3282,10,"\\script\\maps\\daohuong\\trap\\cong4h.lua")    -----Ex1  däc ®øng, 25 lµ ®é dµi
	 AddTrapEx1(101,1733,3295,10,"\\script\\maps\\daohuong\\trap\\cong4h.lua")    -----Ex1  däc ®øng, 25 lµ ®é dµi
	 AddTrapEx2(101,1567,3267,25,"\\script\\maps\\daohuong\\trap\\cong8h.lua")        -----Ex2 ngang, 25 lµ ®é dµi
	 AddTrapEx1(101,1612,3094,25,"\\script\\maps\\daohuong\\trap\\cong10h.lua")    -----Ex1  däc ®øng, 25 lµ ®é dµi
	
end;

















