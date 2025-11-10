--------========================================================================================----------
--------========================================================================================----------
--------=======================================ANHVIETDONGNAI=====================================-----------
--------========================================================================================----------
--------========================================================================================----------
function addnpcthachcotran()
	local nNpcIdx;
--luyen kc
local MOCNHAN = {
{1674,3293},
{1669,3291},
{1665,3289},
{1661,3287}
};
local COCGO = {
{1672,3298},
{1667,3296},
{1662,3294},
{1657,3291}
};

local BAOCAT = {
{1665,3305},
{1660,3303},
{1655,3300},
{1650,3298}
};
	for i=1,getn(MOCNHAN) do
	nNpcIdx = AddNpcNew(414,1,153,MOCNHAN[i][1]*32,MOCNHAN[i][2]*32,DEATH_COCGO,
		5,nil,1,RANDOMC(0,1,2,3,4),1,1,nil,nil,1,nil,nil,nil,50,nil,nil,"");
	SetNpcValue(nNpcIdx,3);
	end
	for i=1,getn(COCGO) do
	nNpcIdx = AddNpcNew(413,1,153,COCGO[i][1]*32,COCGO[i][2]*32,DEATH_COCGO,
		5,nil,1,RANDOMC(0,1,2,3,4),1,1,nil,nil,1,nil,nil,nil,50,nil,nil,"");
	SetNpcValue(nNpcIdx,1);
	end
	for i=1,getn(BAOCAT) do
	nNpcIdx = AddNpcNew(415,1,153,BAOCAT[i][1]*32,BAOCAT[i][2]*32,DEATH_COCGO,
		5,nil,1,RANDOMC(0,1,2,3,4),1,1,nil,nil,1,nil,nil,nil,50,nil,nil,"");
	SetNpcValue(nNpcIdx,2);
	end
	----NPC Mon Phai trong thon-----
	nNpcIdx = AddNpcNew(189,1,153,1617*32,3217*32,"\\script\\npcthon\\npcmonphai\\thieulam.lua",6,183) SetNpcValue(nNpcIdx, 0);
	nNpcIdx = AddNpcNew(184,1,153,1621*32,3212*32,"\\script\\npcthon\\npcmonphai\\thienvuong.lua",6,247) SetNpcValue(nNpcIdx, 1);
	nNpcIdx = AddNpcNew(177,1,153,1625*32,3207*32,"\\script\\npcthon\\npcmonphai\\duongmon.lua",6,246) SetNpcValue(nNpcIdx, 2);
	nNpcIdx = AddNpcNew(186,1,153,1629*32,3204*32,"\\script\\npcthon\\npcmonphai\\ngudoc.lua",6,178) SetNpcValue(nNpcIdx, 3);
	nNpcIdx = AddNpcNew(83,1,153,1633*32,3200*32,"\\script\\npcthon\\npcmonphai\\ngami.lua",6,248) SetNpcValue(nNpcIdx, 4);
	nNpcIdx = AddNpcNew(171,1,153,1614*32,3213*32,"\\script\\npcthon\\npcmonphai\\thuyyen.lua",6,177) SetNpcValue(nNpcIdx, 5);
	nNpcIdx = AddNpcNew(103,1,153,1618*32,3208*32,"\\script\\npcthon\\npcmonphai\\caibang.lua",6,194) SetNpcValue(nNpcIdx, 6);
	nNpcIdx = AddNpcNew(181,1,153,1622*32,3203*32,"\\script\\npcthon\\npcmonphai\\thiennhan.lua",6,240) SetNpcValue(nNpcIdx, 7);
	nNpcIdx = AddNpcNew(188,1,153,1626*32,3198*32,"\\script\\npcthon\\npcmonphai\\vodang.lua",6,249) SetNpcValue(nNpcIdx, 8);
	nNpcIdx = AddNpcNew(309,1,153,1630*32,3193*32,"\\script\\npcthon\\npcmonphai\\conlon.lua",6,181) SetNpcValue(nNpcIdx, 9);

	----NPC Chuc nang-----
	AddNpcNew(625,1,153,1664*32,3227*32,"\\script\\npcthon\\ruongchuado\\thachcotran.lua",6,"R­¬ng Chøa §å"); 

	
	nNpcIdx = AddNpcNew(219,1,153,1635*32,3225*32,"\\script\\global\\npcchucnang\\taphoa.lua",6,84); SetNpcValue(nNpcIdx, 23);
	nNpcIdx = AddNpcNew(198,1,153,1617*32,3247*32,"\\script\\global\\npcchucnang\\thoren.lua",6,55); SetNpcValue(nNpcIdx, 22);
	nNpcIdx = AddNpcNew(203,1,153,1601*32,3211*32,"\\script\\global\\npcchucnang\\hieuthuoc.lua",6,251); SetNpcValue(nNpcIdx, 24);

	AddNpcNew(237,1,153,1620*32,3188*32,"\\script\\global\\npcchucnang\\xaphu.lua",6,42) ---b¾c
              AddNpcNew(237,1,153,1689*32,3249*32,"\\script\\global\\npcchucnang\\xaphu.lua",6,42)

	AddNpcNew(108,1,153,1643*32,3193*32,"\\script\\global\\npcchucnang\\datau.lua",6,59)
              AddNpcNew(377,1,153,1650*32 ,3188*32,"\\script\\global\\npcchucnang\\lequan.lua",6,57) 

	AddNpcNew(663,1,153,1640*32,3215*32,"\\script\\global\\npcchucnang\\longngu.lua",6)--enemy199
	AddNpcNew(373,1,153,1651*32, 3216*32,"\\script\\feature\\congthanh\\npccongthanh.lua",6,"C«ng Thµnh Quan")
              AddNpcNew(1596,1,153,1632*32,3178*32,"\\script\\global\\npcchucnang\\trogiup.lua",6,"Hç Trî T©n Thñ ") --308

	--Npc dao h­¬ng th«n
	AddNpcNew(311,1,153,1674*32,3281*32,"\\script\\global\\npcchucnang\\vosu.lua",6,201)

	
end;

function addtrapthachcotran()
              AddTrapEx2(153,1642,3161,15,"\\script\\maps\\thachco\\trap\\cong2h.lua")    -----Ex1  däc ®øng, 25 lµ ®é dµi
              AddTrapEx1(153,1693,3274,15,"\\script\\maps\\thachco\\trap\\cong4h.lua")    -----Ex1  däc ®øng, 25 lµ ®é dµi
	
end;

