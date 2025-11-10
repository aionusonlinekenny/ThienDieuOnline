--------========================================================================================----------
--------========================================================================================----------
--------=======================================ANHVIETDONGNAI=====================================-----------
--------========================================================================================----------
--------========================================================================================----------
function addnpclongtuyen()
	local nNpcIdx;
--luyen kc
local MOCNHAN = {
{1649,3161},
{1654,3157},
{1658,3154},
{1662,3149}
};
local COCGO = {
{1645,3154},
{1650,3150},
{1654,3146},
{1658,3143}
};

local BAOCAT = {
{1643,3150},
{1646,3146},
{1650,3141},
{1642,3140}
};
	for i=1,getn(MOCNHAN) do
	nNpcIdx = AddNpcNew(414,1,174,MOCNHAN[i][1]*32,MOCNHAN[i][2]*32,DEATH_COCGO,
		5,nil,1,RANDOMC(0,1,2,3,4),1,1,nil,nil,1,nil,nil,nil,50,nil,nil,"");
	SetNpcValue(nNpcIdx,3);
	end
	for i=1,getn(COCGO) do
	nNpcIdx = AddNpcNew(413,1,174,COCGO[i][1]*32,COCGO[i][2]*32,DEATH_COCGO,
		5,nil,1,RANDOMC(0,1,2,3,4),1,1,nil,nil,1,nil,nil,nil,50,nil,nil,"");
	SetNpcValue(nNpcIdx,1);
	end
	for i=1,getn(BAOCAT) do
	nNpcIdx = AddNpcNew(415,1,174,BAOCAT[i][1]*32,BAOCAT[i][2]*32,DEATH_COCGO,
		5,nil,1,RANDOMC(0,1,2,3,4),1,1,nil,nil,1,nil,nil,nil,50,nil,nil,"");
	SetNpcValue(nNpcIdx,2);
	end
	----NPC Mon Phai trong thon-----
	nNpcIdx = AddNpcNew(189,1,174,1640*32,3207*32,"\\script\\npcthon\\npcmonphai\\thieulam.lua",6,183) SetNpcValue(nNpcIdx, 0);
	nNpcIdx = AddNpcNew(184,1,174,1637*32,3210*32,"\\script\\npcthon\\npcmonphai\\thienvuong.lua",6,247) SetNpcValue(nNpcIdx, 1);
	nNpcIdx = AddNpcNew(177,1,174,1633*32,3213*32,"\\script\\npcthon\\npcmonphai\\duongmon.lua",6,246) SetNpcValue(nNpcIdx, 2);
	nNpcIdx = AddNpcNew(186,1,174,1630*32,3216*32,"\\script\\npcthon\\npcmonphai\\ngudoc.lua",6,178) SetNpcValue(nNpcIdx, 3);
	nNpcIdx = AddNpcNew(83,1,174,1628*32,3218*32,"\\script\\npcthon\\npcmonphai\\ngami.lua",6,248) SetNpcValue(nNpcIdx, 4);
	nNpcIdx = AddNpcNew(171,1,174,1625*32,3222*32,"\\script\\npcthon\\npcmonphai\\thuyyen.lua",6,177) SetNpcValue(nNpcIdx, 5);
	nNpcIdx = AddNpcNew(103,1,174,1622*32,3225*32,"\\script\\npcthon\\npcmonphai\\caibang.lua",6,194) SetNpcValue(nNpcIdx, 6);
	nNpcIdx = AddNpcNew(181,1,174,1610*32,3198*32,"\\script\\npcthon\\npcmonphai\\thiennhan.lua",6,240) SetNpcValue(nNpcIdx, 7);
	nNpcIdx = AddNpcNew(188,1,174,1607*32,3201*32,"\\script\\npcthon\\npcmonphai\\vodang.lua",6,249) SetNpcValue(nNpcIdx, 8);
	nNpcIdx = AddNpcNew(309,1,174,1603*32,3206*32,"\\script\\npcthon\\npcmonphai\\conlon.lua",6,181) SetNpcValue(nNpcIdx, 9);
	----NPC Chuc nang-----
	AddNpcNew(625,1,174,1615*32,3191*32,"\\script\\npcthon\\ruongchuado\\longtuyenthon.lua",6,"R­¬ng Chøa §å"); 
	
	nNpcIdx = AddNpcNew(219,1,174,1566*32,3202*32,"\\script\\global\\npcchucnang\\taphoa.lua",6,84); SetNpcValue(nNpcIdx, 23);
	nNpcIdx = AddNpcNew(198,1,174,1606*32,3249*32,"\\script\\global\\npcchucnang\\thoren.lua",6,55); SetNpcValue(nNpcIdx, 22);
	nNpcIdx = AddNpcNew(203,1,174,1573*32,3255*32,"\\script\\global\\npcchucnang\\hieuthuoc.lua",6,251); SetNpcValue(nNpcIdx, 24);

	AddNpcNew(237,1,174,1634*32,3196*32,"\\script\\global\\npcchucnang\\xaphu.lua",6,42) ---b¾c
	AddNpcNew(108,1,174,1625*32,3191*32,"\\script\\global\\npcchucnang\\datau.lua",6,59)
              AddNpcNew(377,1,174,1602*32 ,3225*32,"\\script\\global\\npcchucnang\\lequan.lua",6,57) 

	AddNpcNew(663,1,174,1647*32,3212*32,"\\script\\global\\npcchucnang\\longngu.lua",6)--enemy199
	AddNpcNew(373,1,174,1602*32, 3236*32,"\\script\\feature\\congthanh\\npccongthanh.lua",6,"C«ng Thµnh Quan")
              AddNpcNew(1596,1,174,1621*32,3202*32,"\\script\\global\\npcchucnang\\trogiup.lua",6,"Hç Trî T©n Thñ ") --308

	--Npc long tuyÒn th«n
	AddNpcNew(311,1,174,1657*32,3171*32,"\\script\\global\\npcchucnang\\vosu.lua",6,201)

	
end;

function addtraplongtuyen()
              AddTrapEx1(174,1645,3265,25,"\\script\\maps\\longtuyen\\trap\\cong44h.lua")    -----Ex1  däc ®øng, 25 lµ ®é dµi
	AddTrapEx1(174,1609,3266,25,"\\script\\maps\\longtuyen\\trap\\cong4h.lua")    -----Ex1  däc ®øng, 25 lµ ®é dµi
	AddTrapEx2(174,1550,3272,25,"\\script\\maps\\longtuyen\\trap\\cong8h.lua")        -----Ex2 ngang, 25 lµ ®é dµi
	AddTrapEx1(174,1558,3183,25,"\\script\\maps\\longtuyen\\trap\\cong10h.lua")    -----Ex1  däc ®øng, 25 lµ ®é dµi
	AddTrapEx2(174,1658,3192,25,"\\script\\maps\\longtuyen\\trap\\cong2h.lua")       -----Ex2 ngang, 25 lµ ®é dµi
	
end;


















