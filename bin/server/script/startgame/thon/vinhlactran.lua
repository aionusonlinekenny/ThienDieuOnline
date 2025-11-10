--------========================================================================================----------
--------========================================================================================----------
--------=======================================ANHVIETDONGNAI=====================================-----------
--------========================================================================================----------
--------========================================================================================----------
function addnpcvinhlac()
	local nNpcIdx;
--luyen kc
local MOCNHAN = {
{1594,3353},
{1589,3351},
{1584,3349},
{1579,3347}
};
local COCGO = {
{1593,3359},
{1588,3357},
{1583,3355},
{1578,3353}
};

local BAOCAT = {
{1592,3366},
{1587,3364},
{1582,3362},
{1577,3360}
};
	for i=1,getn(MOCNHAN) do
	nNpcIdx = AddNpcNew(414,1,99,MOCNHAN[i][1]*32,MOCNHAN[i][2]*32,DEATH_COCGO,
		5,nil,1,RANDOMC(0,1,2,3,4),1,1,nil,nil,1,nil,nil,nil,50,nil,nil,"");
	SetNpcValue(nNpcIdx,3);
	end
	for i=1,getn(COCGO) do
	nNpcIdx = AddNpcNew(413,1,99,COCGO[i][1]*32,COCGO[i][2]*32,DEATH_COCGO,
		5,nil,1,RANDOMC(0,1,2,3,4),1,1,nil,nil,1,nil,nil,nil,50,nil,nil,"");
	SetNpcValue(nNpcIdx,1);
	end
	for i=1,getn(BAOCAT) do
	nNpcIdx = AddNpcNew(415,1,99,BAOCAT[i][1]*32,BAOCAT[i][2]*32,DEATH_COCGO,
		5,nil,1,RANDOMC(0,1,2,3,4),1,1,nil,nil,1,nil,nil,nil,50,nil,nil,"");
	SetNpcValue(nNpcIdx,2);
	end
	----NPC Mon Phai trong thon-----
	nNpcIdx = AddNpcNew(189,1,99,1630*32,3219*32,"\\script\\npcthon\\npcmonphai\\thieulam.lua",6,183) SetNpcValue(nNpcIdx, 0);
	nNpcIdx = AddNpcNew(184,1,99,1626*32,3215*32,"\\script\\npcthon\\npcmonphai\\thienvuong.lua",6,247) SetNpcValue(nNpcIdx, 1);
	nNpcIdx = AddNpcNew(177,1,99,1622*32,3211*32,"\\script\\npcthon\\npcmonphai\\duongmon.lua",6,246) SetNpcValue(nNpcIdx, 2);
	nNpcIdx = AddNpcNew(186,1,99,1618*32,3208*32,"\\script\\npcthon\\npcmonphai\\ngudoc.lua",6,178) SetNpcValue(nNpcIdx, 3);
	nNpcIdx = AddNpcNew(83,1,99,1614*32,3204*32,"\\script\\npcthon\\npcmonphai\\ngami.lua",6,248) SetNpcValue(nNpcIdx, 4);
	nNpcIdx = AddNpcNew(171,1,99,1633*32,3215*32,"\\script\\npcthon\\npcmonphai\\thuyyen.lua",6,177) SetNpcValue(nNpcIdx, 5);
	nNpcIdx = AddNpcNew(103,1,99,1629*32,3211*32,"\\script\\npcthon\\npcmonphai\\caibang.lua",6,194) SetNpcValue(nNpcIdx, 6);
	nNpcIdx = AddNpcNew(181,1,99,1625*32,3207*32,"\\script\\npcthon\\npcmonphai\\thiennhan.lua",6,240) SetNpcValue(nNpcIdx, 7);
	nNpcIdx = AddNpcNew(188,1,99,1621*32,3203*32,"\\script\\npcthon\\npcmonphai\\vodang.lua",6,249) SetNpcValue(nNpcIdx, 8);
	nNpcIdx = AddNpcNew(309,1,99,1617*32,3199*32,"\\script\\npcthon\\npcmonphai\\conlon.lua",6,181) SetNpcValue(nNpcIdx, 9);

	----NPC Chuc nang-----
	AddNpcNew(625,1,99,1637*32,3184*32,"\\script\\npcthon\\ruongchuado\\vinhlactran.lua",6,"R­¬ng Chøa §å"); 
	AddNpcNew(625,1,99,1640*32,3262*32,"\\script\\npcthon\\ruongchuado\\vinhlactran.lua",6,"R­¬ng Chøa §å"); 
	
	nNpcIdx = AddNpcNew(219,1,99,1604*32,3282*32,"\\script\\global\\npcchucnang\\taphoa.lua",6,84); SetNpcValue(nNpcIdx, 23);
	nNpcIdx = AddNpcNew(198,1,99,1668*32,3269*32,"\\script\\global\\npcchucnang\\thoren.lua",6,55); SetNpcValue(nNpcIdx, 22);
	nNpcIdx = AddNpcNew(203,1,99,1598*32,3229*32,"\\script\\global\\npcchucnang\\hieuthuoc.lua",6,251); SetNpcValue(nNpcIdx, 24);

	AddNpcNew(237,1,99,1605*32,3160*32,"\\script\\global\\npcchucnang\\xaphu.lua",6,42) ---b¾c
              AddNpcNew(237,1,99,1632*32,3302*32,"\\script\\global\\npcchucnang\\xaphu.lua",6,42)

	AddNpcNew(108,1,99,1643*32,3192*32,"\\script\\global\\npcchucnang\\datau.lua",6,59)
              AddNpcNew(377,1,99,1651*32 ,3199*32,"\\script\\global\\npcchucnang\\lequan.lua",6,57) 

	AddNpcNew(663,1,99,1620*32,3166*32,"\\script\\global\\npcchucnang\\longngu.lua",6)--enemy199
	AddNpcNew(373,1,99,1611*32, 3166*32,"\\script\\feature\\congthanh\\npccongthanh.lua",6,"C«ng Thµnh Quan")
              AddNpcNew(1596,1,99,1634*32,3198*32,"\\script\\global\\npcchucnang\\trogiup.lua",6,"Hç Trî T©n Thñ ") --308

	--Npc dao h­¬ng th«n
	AddNpcNew(311,1,99,1595*32,3346*32,"\\script\\global\\npcchucnang\\vosu.lua",6,201)

	
end;

function addtrapvinhlac()
               AddTrapEx2(99,1702,3162,18,"\\script\\maps\\vinhlac\\trap\\cong2h.lua")    -----Ex1  däc ®øng, 25 lµ ®é dµi
               AddTrapEx1(99,1695,3263,17,"\\script\\maps\\vinhlac\\trap\\cong4h.lua")    -----Ex1  däc ®øng, 25 lµ ®é dµi
	 AddTrapEx2(99,1620,3323,12,"\\script\\maps\\vinhlac\\trap\\cong8h.lua")        -----Ex2 ngang, 25 lµ ®é dµi
	AddTrapEx1(99,1580,3153,15,"\\script\\maps\\vinhlac\\trap\\cong10h.lua")    -----Ex1  däc ®øng, 25 lµ ®é dµi
	
end;





















