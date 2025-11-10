--|------------------------------------------------------|
--|FORMULA_LUCKY = nLuckRate quy dinh cot maxx item;   --|
--|Author: Kinnox									   --|	
--|Date: 22/03/2021									   --|	
--|------------------------------------------------------|
Include("\\script\\global\\droprate\\matran\\armor.lua");
Include("\\script\\global\\droprate\\matran\\amulet.lua");
Include("\\script\\global\\droprate\\matran\\belt.lua");
Include("\\script\\global\\droprate\\matran\\boot.lua");
Include("\\script\\global\\droprate\\matran\\helm.lua");
Include("\\script\\global\\droprate\\matran\\cuff.lua");
Include("\\script\\global\\droprate\\matran\\pendant.lua");
Include("\\script\\global\\droprate\\matran\\ring.lua");
Include("\\script\\global\\droprate\\matran\\meeleeweapon.lua");
Include("\\script\\global\\droprate\\matran\\rangrateweapon.lua");
--TAB BI KIP 9x
TAB_Menpai ={
{37,38,39}, -- Thien vuong
{56,57,58}, -- thieu lam
{47,48,49}, -- ngu doc
{27,28,45,46,53}, -- duong mon
{42,43,59}, -- nga mi
{40,41}, -- thuy yen
{54,55}, -- cai bang
{35,36}, -- thien nhan
{33,34}, -- vo dang
{50,51,52} -- con lon
}
--Item Blue
KindItem={
 {2,0,27}, -- armor
 {4,0,1}, -- amulet
 {6,0,1}, -- belt
 {5,0,3}, -- boot
 {7,0,13}, -- helm
 {8,0,1}, -- cuff
 {9,0,1}, -- pendant
 {3,0,0}, -- ring
 {0,0,5}, -- melleweapon
 {1,0,2} -- rangeweapon
};

--Dong hien.
KindOption_Show ={
--level: 			1			2			3			4			5			6			7			8			9			10
--	ID option - nMin,nMax
{	{85},{		{200,200},		{250,280},	{280,360},	{350,420},	{400,500},	{450,580},	{500,660},	{550,740},	{600,800},	{650,1000}}	}, 	--1-- sinh luc
{	{89},{		{200,200},		{250,280},	{280,360},	{350,420},	{400,500},	{450,580},	{500,660},	{550,740},	{600,800},	{650,1000}}	},	--2-- noi luc
{	{93},{		{200,200},		{250,280},	{280,360},	{350,420},	{400,500},	{450,580},	{500,660},	{550,740},	{600,800},	{650,1000}}	},	--3-- the luc
{	{96},{		{5,7},		{5,7},		{5,7},		{7,9},		{7,9},		{7,9},		{1,7},		{7,9},		{11,13},		{15,30}}		}, 	--4-- phuc hoi moi giay nua diem the luc
{	{92},{		{5,7},		{5,7},		{5,7},		{7,9},		{7,9},		{7,9},		{1,7},		{7,9},		{11,13},		{15,30}}		}, 	--5-- phuc hoi moi giay nua diem noi luc
{	{88},{		{5,7},		{5,7},		{5,7},		{7,9},		{7,9},		{7,9},		{1,7},		{7,9},		{11,13},		{15,30}}		},	--6-- phuc hoi moi giay nua diem sinh luc 
{	{43},{		{1,1},		{1,1},		{1,1},		{1,1},		{1,1},		{1,1},		{1,1},		{1,1},		{1,1},		{1,1}}		}, 	--7-- khong the pha huy
{	{117},{		{40,45},		{40,45},		{40,45},		{40,45},		{40,45},	{40,45},	{40,45},	{40,45},	{40,45},	{40,50}}	},	--8-- phan don can chien (diem)
{	{113},{		{20,20},	{20,20},	{20,20},	{20,30},	{20,30},	{20,40},	{20,50},	{20,50},	{20,70},	{20,80}}	},	--9-- thoi gian phuc hoi (danh cho ao) --OPTION DAC BIET
{	{114},{		{1,7},		{3,10},		{5,15},		{5,20},		{1,25},		{1,30},		{1,35},		{5,40},		{5,45},		{5,50}}		},	--10-- khang tat ca
{	{111},{		{15,20},	{15,20},	{15,27},	{15,30},	{15,33},	{15,37},	{15,40},	{15,50},	{15,60},	{15,80}}	},	--11-- toc do di chuyen --OPTION DAC BIET 
{	{115},{		{10,25},	{10,25},	{10,25},	{10,25},	{15,50},	{15,50},	{15,50},	{15,50},	{20,100},	{20,100}}	},	--12-- toc do danh--OPTION DAC BIET
{	{136},{		{1,1},		{1,2},		{1,3},		{1,5},		{1,5},		{1,6},		{1,7},		{1,10},		{1,10},		{3,12}}		},	--13-- hut sinh luc--OPTION DAC BIET
{	{137},{		{1,1},		{1,2},		{1,3},		{1,5},		{1,5},		{1,6},		{1,7},		{1,10},		{1,10},		{3,12}}		},	--14-- hut noi luc--OPTION DAC BIET
{	{126},{		{50,75},	{50,100},	{50,125},	{50,150},	{50,175},	{50,200},	{50,225},	{50,250},	{50,275},	{50,300}}	},	--15-- sat thuong vat ly ngoai cong ( %) --OPTION DAC BIET
{	{166},{		{300,360},		{300,420},	{300,480},	{300,540},	{300,600},	{300,660},	{300,720},	{300,780},	{300,840},	{300,900}}	}, 	--16-- do chinh sat
{	{58},{		{1,1},		{1,1},		{1,1},		{1,1},		{1,1},		{1,1},		{1,1},		{1,1},		{1,1},		{1,1}}		}, 	--17-- bo qua ne tranh
{	{116},{		{10,25},	{10,25},	{10,25},	{10,25},	{15,30},	{15,30},	{15,40},	{15,40},	{20,50},	{20,50}}	},	--18-- toc do danh--OPTION DAC BIET
};

--Dong An.
KindOption_Hide ={
--level: 			1			2			3			4			5			6			7			8			9			10
--	ID option - nMin,nMax
{	{134},{		{1,5},		{1,5},		{1,5},		{1,5},		{1,5},		{1,9},		{1,12},		{5,12},		{6,12},		{7,12}}		}, 	--1-- chuyen hoa sat thuong thanh noi luc
{	{101},{		{7,12},		{7,12},		{7,15},		{11,15},		{11,25},		{11,25},		{1,40},		{14,40},		{14,75},		{14,75}}		},	--2-- khang doc
{	{103},{		{7,12},		{7,12},		{7,15},		{11,15},		{11,25},		{11,25},		{1,40},		{14,40},		{14,75},		{14,75}}		},	--3-- khang loi
{	{102},{		{7,12},		{7,12},		{7,15},		{11,15},		{11,25},		{11,25},		{1,40},		{14,40},		{14,75},		{14,75}}		},	--4-- khang hoa
{	{110},{		{20,30},		{20,30},		{20,30},		{20,30},		{20,30},		{20,30},		{20,30},		{20,30},		{30,50},		{50,65}}	}, 	--5-- thoi gian choang ---- OPTION DAC BIET
{	{99},{		{10,15},		{11,20},		{12,25},		{13,30},		{14,35},		{15,40},		{16,45},		{17,50},		{18,55},		{19,60}}		}, 	--6-- diem sinh khi
{	{104},{		{7,12},		{7,12},		{7,15},		{11,15},		{11,25},		{11,25},		{1,40},		{14,40},		{14,75},		{14,75}}		},	--7-- phong thu vat ly
{	{106},{		{20,30},		{20,30},		{20,30},		{20,30},		{20,30},		{20,30},		{20,30},		{20,30},		{30,50},		{50,65}}	}, 	--8-- thoi gian lam cham---- OPTION DAC BIET
{	{98},{		{10,15},		{11,20},		{12,25},		{13,30},		{14,35},		{15,40},		{16,45},		{17,50},		{18,55},		{19,50}}		}, 	--9-- diem than phap
{	{108},{		{20,30},		{20,30},		{20,30},		{20,30},		{20,30},		{20,30},		{20,30},		{20,30},		{30,50},		{50,65}}	}, 	--10-- thoi gian trung doc ---- OPTION DAC BIET
{	{105},{		{7,12},		{7,12},		{7,15},		{11,15},		{11,25},		{11,25},		{1,40},		{14,40},		{14,75},		{14,75}}		}, 	--11-- khang bang
{	{97},{		{10,15},		{11,20},		{12,25},		{13,30},		{14,35},		{15,40},		{16,45},		{17,50},		{18,55},		{19,50}}		}, 	--12-- suc manh
{	{135},{		{1,2},		{2,4},		{3,6},		{4,8},		{5,10},		{5,12},		{5,14},		{5,6},		{5,18},		{5,20}}		},	--13-- may man ---- OPTION DAC BIET
{	{121},{		{20,35},		{22,40},		{24,55},	{26,70},	{28,85},	{30,100},	{32,115},	{34,130},	{36,135},	{38,150}}	},	--14-- sat thuong vat ly ngoai cong ( diem) --OPTION DAC BIET
{	{140},{		{70,100},		{70,150},	{70,220},	{70,270},	{70,350},	{70,400},	{70,450},	{70,500},	{70,550},	{70,600}}	},	--15-- sat thuong vat ly noi cong ( diem) --OPTION DAC BIET
{	{125},{		{20,35},		{22,40},		{24,55},	{26,70},	{28,85},	{30,100},	{32,115},	{34,130},	{36,135},	{38,150}}	},	--16-- doc sat ngoai cong ( diem) --OPTION DAC BIET
{	{144},{		{70,100},		{70,150},	{70,220},	{70,270},	{70,350},	{70,400},	{70,450},	{70,500},	{70,550},	{70,600}}	},	--17-- doc sat noi cong ( diem) --OPTION DAC BIET
{	{123},{		{50,60},		{50,70},		{50,80},	{50,90},	{50,100},	{50,120},	{50,140},	{50,160},	{50,180},	{50,300}}	},	--18-- bang sat ngoai cong ( diem) --OPTION DAC BIET
{	{141},{		{70,100},		{70,150},	{70,220},	{70,270},	{70,350},	{70,400},	{70,450},	{70,500},	{70,550},	{70,600}}	},	--19-- bang sat noi cong ( diem) --OPTION DAC BIET
{	{122},{		{50,60},		{50,70},		{50,80},	{50,90},	{50,100},	{50,120},	{50,140},	{50,160},	{50,180},	{50,300}}	},	--20-- hoa sat ngoai cong ( diem) --OPTION DAC BIET
{	{142},{		{70,100},		{70,150},	{70,220},	{70,270},	{70,350},	{70,400},	{70,450},	{70,500},	{70,550},	{70,600}}	},	--21-- hoa sat noi cong noi cong ( diem) --OPTION DAC BIET
{	{124},{		{50,60},		{50,70},		{50,80},	{50,90},	{50,100},	{50,120},	{50,140},	{50,160},	{50,180},	{50,300}}	},	--22-- loi sat ngoai cong ( diem) --OPTION DAC BIET
{	{143},{		{70,100},		{70,150},	{70,220},	{70,270},	{70,350},	{70,400},	{70,450},	{70,500},	{70,550},	{70,600}}	},	--23-- loi sat noi cong noi cong ( diem) --OPTION DAC BIET
};

KindFiveElement={

-------------SHOW OPTION-----HIDE OPTION
---ARMOR---
	{	{{1,2,3,6,7,8,9},{1,2}}, 
		{{1,2,3,6,7,8,9},{1,3}},
		{{1,2,3,6,7,8,9},{1,4,5,6}},
		{{1,2,3,6,7,8,9},{7,8,9}},
		{{1,2,3,6,7,8,9},{1,11,10}}	,
	},
--AMULET---
	{	{{1,2,3,4,10},{2,12}},
		{{1,2,3,4,10},{1,3,13}},
		{{1,2,3,4,10},{1,4,5,6}},
		{{1,2,3,4,10},{8,9}},	
		{{1,2,3,4,10},{1,11,10}}	
	},
---BELT---	
	{	{{1,2,3,6,7},{1,2}}, 
		{{1,2,3,6,7},{1,3}},
		{{1,2,3,6,7},{1,4,5,6}},
		{{1,2,3,6,7},{7,8,9}},
		{{1,2,3,6,7},{1,11,10}}	,
	},
---BOOT---	
	{	{{1,2,3,6,7,11},{1,2}}, 
		{{1,2,3,6,7,11},{1,3}},
		{{1,2,3,6,7,11},{1,4,5,6}},
		{{1,2,3,6,7,11},{7,8,9}},
		{{1,2,3,6,7,11},{1,11,10}}	,
	},
---HELM---	
	{	{{1,2,3,6,7},{1,2}}, 
		{{1,2,3,6,7},{1,3}},
		{{1,2,3,6,7},{1,4,5,6}},
		{{1,2,3,6,7},{7,8,9}},
		{{1,2,3,6,7},{1,11,10}}	,
	},
---CUFF---	
	{	{{1,2,3,6,7},{1,2}}, 
		{{1,2,3,6,7},{1,3}},
		{{1,2,3,6,7},{1,4,5,6}},
		{{1,2,3,6,7},{7,8,9}},
		{{1,2,3,6,7},{1,11,10}}	,
	},
--PENDANT---
	{	{{1,2,3,5},{2,12}},
		{{1,2,3,5},{1,3,13}},
		{{1,2,3,5},{1,4,5,6}},
		{{1,2,3,5},{8,9}},	
		{{1,2,3,5},{1,11,10}}	
	},
--RING---
	{	{{1,2,3,4},{2,12}},
		{{1,2,3,4},{1,3,13}},
		{{1,2,3,4},{1,4,5,6}},
		{{1,2,3,4},{8,9}},	
		{{1,2,3,4},{1,11,10}}	
	},
--MELEEWEAPON---
	{	{{1,2,3,12,13,14,15,16,17},{1,2,14,15}},
		{{1,2,3,12,13,14,15,16,17},{1,3,16,17}},
		{{1,2,3,12,13,14,15,16,17},{1,4,5,18,19}},
		{{1,2,3,12,13,14,15,16,17},{1,8,20,21}},	
		{{1,2,3,12,13,14,15,16,17},{1,10,11,22,23}}	
	},	
--RANGRATEWEAPON---
	{	{{1,2,3,12,13,14,15,16,17},{1,2,14,15}},
		{{1,2,3,12,13,14,15,16,17},{1,3,16,17}},
		{{1,2,3,12,13,14,15,16,17},{1,4,5,18,19}},
		{{1,2,3,12,13,14,15,16,17},{1,8,20,21}},	
		{{1,2,3,12,13,14,15,16,17},{1,10,11,22,23}}	
	},	
}

function caltest(NpcIndex)
			-- nGenre	= 2; 
			-- nLevel 	= 10;
			-- nSeries	= 1;
			-- nLuck	= 70;-- xin hon quai thuong 1 diem may man;
			-- nNumLine  = 6; -- so dong cua trang bi xanh
			-- nDetail =KindItem[nGenre][1];
			-- nParti  =random(KindItem[nGenre][2],KindItem[nGenre][3]);
			-- CalCulator_Drop(NpcIndex,nGenre,nDetail,nParti,nLevel,nSeries,nLuck,nNumLine);
end
MESERROR = "Trang bÞ kh«ng tån t¹i!!! vui lßng b¸o admin"
function CalCulator_Drop(NpcIndex,nGenre,nDetail,nParti,nLevel,nSeries,nLuck,nNumLine)
-- Msg2Player("DEBUG:"..nGenre.."-"..nDetail.."-"..nParti.."-"..nLevel.."-"..nSeries.." -"..nLuck.."")
local RateServer = 50   ---gèc 1500----ha cang thap ty le ra do cang cao ;
local Option1,Option2,Option3,Option4,Option5,Option6,Option7,Option8 = 0,0,0,0,0,0,0,0;
local nIndex =0;
	nIndex = AddItem(0,0,nDetail,nParti,nLevel,nSeries,0);	
	local	type1 , value1_1, value1_3,
			type2 , value2_1, value2_3,
			type3 , value3_1, value3_3,
			type4 , value4_1, value4_3,
			type5 , value5_1, value5_3,
			type6 , value6_1, value6_3,
			type7 , value7_1, value7_3,
			type8 , value8_1, value8_3 = 0,0,0,
				0,	0,	0,
				0,	0,	0,
				0,	0,	0,
				0,	0,	0,
				0,	0,	0,
				0,	0,	0,
				0,	0,	0;
	--------------------------------------------------------------------------
	--nNumLine quy dinh so dong trang bi 
	--------------------------------------------------------------------------
	--------------------------------------------------------------------------
	--Tinh toan Dong 1 -> 6 (max 8) - code hien tai cho phep max 6 
	--So dong mang gia tri dua vao may man cua nhan vat
	--------------------------------------------------------------------------
	---------------------------------------------------------
	--Tinh toan trang bi
	--Cap do1: 8->20 =[4,5]
	--Cap do2: 21->37 =[5,6]
	--Cap do3: 38->47 =[6,7]
	--Cap do4: 48->60 =[7,8]
	--Cap do5: >60 =[8,10]
	--nLuckRate == muc do vip cua item;
	local nLuckRate = 0;
	if (nLuck >= 8) and (nLuck <= 20) then
		nLuckRate = random(4,5);
	elseif (nLuck >= 21) and (nLuck <= 37) then
		nLuckRate = random(5,6);
	elseif (nLuck >= 38) and (nLuck <= 59) then
		nLuckRate = random(6,7);
	elseif (nLuck >= 60) and (nLuck < 65) then
		nLuckRate = random(7,8);
	elseif (nLuck >= 65)  then
		nLuckRate = random(8,10);
	else
		nLuckRate = random(1,3);
	end				
							
	if (nGenre == 1) then
		local nRanShow = random(1,getn(Armor_normal))
		local nRanSpecialShow = random(1,getn(Armor_special))
		if nLuck > random(1,RateServer) then
			Option1 = Armor_special[nRanSpecialShow][1];
			Option3 = Armor_special[nRanSpecialShow][2];
			Option5 = Armor_special[nRanSpecialShow][3];
		else
			Option1 = Armor_normal[nRanShow][1];
			Option3 = Armor_normal[nRanShow][2];
			Option5 = Armor_normal[nRanShow][3];
		end

		if (nSeries == 0) then
			local nRanHide = random(1,getn(Armor_Kim_normal))
			local nRanSpecialHide = random(1,getn(Armor_Kim_special))
			if nLuck > random(1,RateServer) then
			Option2 = Armor_Kim_special[nRanSpecialHide][1];
			Option4 = Armor_Kim_special[nRanSpecialHide][2];
			Option6 = Armor_Kim_special[nRanSpecialHide][3];
			else
			Option2 = Armor_Kim_normal[nRanHide][1];
			Option4 = Armor_Kim_normal[nRanHide][2];
			Option6 = Armor_Kim_normal[nRanHide][3];
			end
			
		elseif (nSeries == 1) then
			local nRanHide = random(1,getn(Armor_Moc_normal))
			local nRanSpecialHide = random(1,getn(Armor_Moc_special))
			if nLuck > random(1,RateServer) then
			Option2 = Armor_Moc_special[nRanSpecialHide][1];
			Option4 = Armor_Moc_special[nRanSpecialHide][2];
			Option6 = Armor_Moc_special[nRanSpecialHide][3];
			else
			Option2 = Armor_Moc_normal[nRanHide][1];
			Option4 = Armor_Moc_normal[nRanHide][2];
			Option6 = Armor_Moc_normal[nRanHide][3];
			end
		elseif (nSeries == 2) then
			local nRanHide = random(1,getn(Armor_Thuy_normal))
			local nRanSpecialHide = random(1,getn(Armor_Thuy_special))
			if nLuck > random(1,RateServer) then
			Option2 = Armor_Thuy_special[nRanSpecialHide][1];
			Option4 = Armor_Thuy_special[nRanSpecialHide][2];
			Option6 = Armor_Thuy_special[nRanSpecialHide][3];
			else
			Option2 = Armor_Thuy_normal[nRanHide][1];
			Option4 = Armor_Thuy_normal[nRanHide][2];
			Option6 = Armor_Thuy_normal[nRanHide][3];
			end
		elseif (nSeries == 3) then
			local nRanHide = random(1,getn(Armor_Hoa_normal))
			local nRanSpecialHide = random(1,getn(Armor_Hoa_special))
			if nLuck > random(1,RateServer) then
			Option2 = Armor_Hoa_special[nRanSpecialHide][1];
			Option4 = Armor_Hoa_special[nRanSpecialHide][2];
			Option6 = Armor_Hoa_special[nRanSpecialHide][3];
			else
			Option2 = Armor_Hoa_normal[nRanHide][1];
			Option4 = Armor_Hoa_normal[nRanHide][2];
			Option6 = Armor_Hoa_normal[nRanHide][3];
			end	
		elseif (nSeries == 4) then
			local nRanHide = random(1,getn(Armor_Tho_normal))
			local nRanSpecialHide = random(1,getn(Armor_Tho_special))
			if nLuck > random(1,RateServer) then
			Option2 = Armor_Tho_special[nRanSpecialHide][1];
			Option4 = Armor_Tho_special[nRanSpecialHide][2];
			Option6 = Armor_Tho_special[nRanSpecialHide][3];
			else
			Option2 = Armor_Tho_normal[nRanHide][1];
			Option4 = Armor_Tho_normal[nRanHide][2];
			Option6 = Armor_Tho_normal[nRanHide][3];
			end		
		else
		Msg2Player(MESERROR);
		return 
		end	
	elseif (nGenre == 2) then
		local nRanShow = random(1,getn(Amulet_normal))
		local nRanSpecialShow = random(1,getn(Amulet_special))
		if nLuck > random(1,RateServer) then
			Option1 = Amulet_special[nRanSpecialShow][1];
			Option3 = Amulet_special[nRanSpecialShow][2];
			Option5 = Amulet_special[nRanSpecialShow][3];
		else
			Option1 = Amulet_normal[nRanShow][1];
			Option3 = Amulet_normal[nRanShow][2];
			Option5 = Amulet_normal[nRanShow][3];
		end

		if (nSeries == 0) then
			local nRanHide = random(1,getn(Amulet_Kim_normal))
			local nRanSpecialHide = random(1,getn(Amulet_Kim_special))
			if nLuck > random(1,RateServer) then
			Option2 = Amulet_Kim_special[nRanSpecialHide][1];
			Option4 = Amulet_Kim_special[nRanSpecialHide][2];
			Option6 = Amulet_Kim_special[nRanSpecialHide][3];
			else
			Option2 = Amulet_Kim_normal[nRanHide][1];
			Option4 = Amulet_Kim_normal[nRanHide][2];
			Option6 = Amulet_Kim_normal[nRanHide][3];
			end
			
		elseif (nSeries == 1) then
			local nRanHide = random(1,getn(Amulet_Moc_normal))
			local nRanSpecialHide = random(1,getn(Amulet_Moc_special))
			if nLuck > random(1,RateServer) then
			Option2 = Amulet_Moc_special[nRanSpecialHide][1];
			Option4 = Amulet_Moc_special[nRanSpecialHide][2];
			Option6 = Amulet_Moc_special[nRanSpecialHide][3];
			else
			Option2 = Amulet_Moc_normal[nRanHide][1];
			Option4 = Amulet_Moc_normal[nRanHide][2];
			Option6 = Amulet_Moc_normal[nRanHide][3];
			end
		elseif (nSeries == 2) then
			local nRanHide = random(1,getn(Amulet_Thuy_normal))
			local nRanSpecialHide = random(1,getn(Amulet_Thuy_normal))
			if nLuck > random(1,RateServer) then
			Option2 = Amulet_Thuy_normal[nRanSpecialHide][1];
			Option4 = Amulet_Thuy_normal[nRanSpecialHide][2];
			Option6 = Amulet_Thuy_normal[nRanSpecialHide][3];
			else
			Option2 = Amulet_Thuy_normal[nRanHide][1];
			Option4 = Amulet_Thuy_normal[nRanHide][2];
			Option6 = Amulet_Thuy_normal[nRanHide][3];
			end
		elseif (nSeries == 3) then
			local nRanHide = random(1,getn(Amulet_Hoa_normal))
			local nRanSpecialHide = random(1,getn(Amulet_Hoa_special))
			if nLuck > random(1,RateServer) then
			Option2 = Amulet_Hoa_special[nRanSpecialHide][1];
			Option4 = Amulet_Hoa_special[nRanSpecialHide][2];
			Option6 = Amulet_Hoa_special[nRanSpecialHide][3];
			else
			Option2 = Amulet_Hoa_normal[nRanHide][1];
			Option4 = Amulet_Hoa_normal[nRanHide][2];
			Option6 = Amulet_Hoa_normal[nRanHide][3];
			end	
		elseif (nSeries == 4) then
			local nRanHide = random(1,getn(Amulet_Tho_normal))
			local nRanSpecialHide = random(1,getn(Amulet_Tho_special))
			if nLuck > random(1,RateServer) then
			Option2 = Amulet_Tho_special[nRanSpecialHide][1];
			Option4 = Amulet_Tho_special[nRanSpecialHide][2];
			Option6 = Amulet_Tho_special[nRanSpecialHide][3];
			else
			Option2 = Amulet_Tho_normal[nRanHide][1];
			Option4 = Amulet_Tho_normal[nRanHide][2];
			Option6 = Amulet_Tho_normal[nRanHide][3];
			end		
		else
		Msg2Player(MESERROR);
		return 
		end	
	elseif (nGenre == 3) then
		local nRanShow = random(1,getn(Belt_normal))
		local nRanSpecialShow = random(1,getn(Belt_special))
		if nLuck > random(1,RateServer) then
			Option1 = Belt_special[nRanSpecialShow][1];
			Option3 = Belt_special[nRanSpecialShow][2];
			Option5 = Belt_special[nRanSpecialShow][3];
		else
			Option1 = Belt_normal[nRanShow][1];
			Option3 = Belt_normal[nRanShow][2];
			Option5 = Belt_normal[nRanShow][3];
		end

		if (nSeries == 0) then
			local nRanHide = random(1,getn(Belt_Kim_normal))
			local nRanSpecialHide = random(1,getn(Belt_Kim_special))
			if nLuck > random(1,RateServer) then
			Option2 = Belt_Kim_special[nRanSpecialHide][1];
			Option4 = Belt_Kim_special[nRanSpecialHide][2];
			Option6 = Belt_Kim_special[nRanSpecialHide][3];
			else
			Option2 = Belt_Kim_normal[nRanHide][1];
			Option4 = Belt_Kim_normal[nRanHide][2];
			Option6 = Belt_Kim_normal[nRanHide][3];
			end
			
		elseif (nSeries == 1) then
			local nRanHide = random(1,getn(Belt_Moc_normal))
			local nRanSpecialHide = random(1,getn(Belt_Moc_special))
			if nLuck > random(1,RateServer) then
			Option2 = Belt_Moc_special[nRanSpecialHide][1];
			Option4 = Belt_Moc_special[nRanSpecialHide][2];
			Option6 = Belt_Moc_special[nRanSpecialHide][3];
			else
			Option2 = Belt_Moc_normal[nRanHide][1];
			Option4 = Belt_Moc_normal[nRanHide][2];
			Option6 = Belt_Moc_normal[nRanHide][3];
			end
		elseif (nSeries == 2) then
			local nRanHide = random(1,getn(Belt_Thuy_normal))
			local nRanSpecialHide = random(1,getn(Belt_Thuy_special))
			if nLuck > random(1,RateServer) then
			Option2 = Belt_Thuy_special[nRanSpecialHide][1];
			Option4 = Belt_Thuy_special[nRanSpecialHide][2];
			Option6 = Belt_Thuy_special[nRanSpecialHide][3];
			else
			Option2 = Belt_Thuy_normal[nRanHide][1];
			Option4 = Belt_Thuy_normal[nRanHide][2];
			Option6 = Belt_Thuy_normal[nRanHide][3];
			end
		elseif (nSeries == 3) then
			local nRanHide = random(1,getn(Belt_Hoa_normal))
			local nRanSpecialHide = random(1,getn(Belt_Hoa_special))
			if nLuck > random(1,RateServer) then
			Option2 = Belt_Hoa_special[nRanSpecialHide][1];
			Option4 = Belt_Hoa_special[nRanSpecialHide][2];
			Option6 = Belt_Hoa_special[nRanSpecialHide][3];
			else
			Option2 = Belt_Hoa_normal[nRanHide][1];
			Option4 = Belt_Hoa_normal[nRanHide][2];
			Option6 = Belt_Hoa_normal[nRanHide][3];
			end	
		elseif (nSeries == 4) then
			local nRanHide = random(1,getn(Belt_Tho_normal))
			local nRanSpecialHide = random(1,getn(Belt_Tho_special))
			if nLuck > random(1,RateServer) then
			Option2 = Belt_Tho_special[nRanSpecialHide][1];
			Option4 = Belt_Tho_special[nRanSpecialHide][2];
			Option6 = Belt_Tho_special[nRanSpecialHide][3];
			else
			Option2 = Belt_Tho_normal[nRanHide][1];
			Option4 = Belt_Tho_normal[nRanHide][2];
			Option6 = Belt_Tho_normal[nRanHide][3];
			end		
		else
		Msg2Player(MESERROR);
		return 
		end	
	elseif (nGenre == 4) then
		local nRanShow = random(1,getn(Boot_normal))
		local nRanSpecialShow = random(1,getn(Boot_special))
		if nLuck > random(1,RateServer) then
			Option1 = Boot_special[nRanSpecialShow][1];
			Option3 = Boot_special[nRanSpecialShow][2];
			Option5 = Boot_special[nRanSpecialShow][3];
		else
			Option1 = Boot_normal[nRanShow][1];
			Option3 = Boot_normal[nRanShow][2];
			Option5 = Boot_normal[nRanShow][3];
		end

		if (nSeries == 0) then
			local nRanHide = random(1,getn(Boot_Kim_normal))
			local nRanSpecialHide = random(1,getn(Boot_Kim_special))
			if nLuck > random(1,RateServer) then
			Option2 = Boot_Kim_special[nRanSpecialHide][1];
			Option4 = Boot_Kim_special[nRanSpecialHide][2];
			Option6 = Boot_Kim_special[nRanSpecialHide][3];
			else
			Option2 = Boot_Kim_normal[nRanHide][1];
			Option4 = Boot_Kim_normal[nRanHide][2];
			Option6 = Boot_Kim_normal[nRanHide][3];
			end
			
		elseif (nSeries == 1) then
			local nRanHide = random(1,getn(Boot_Moc_normal))
			local nRanSpecialHide = random(1,getn(Boot_Moc_special))
			if nLuck > random(1,RateServer) then
			Option2 = Boot_Moc_special[nRanSpecialHide][1];
			Option4 = Boot_Moc_special[nRanSpecialHide][2];
			Option6 = Boot_Moc_special[nRanSpecialHide][3];
			else
			Option2 = Boot_Moc_normal[nRanHide][1];
			Option4 = Boot_Moc_normal[nRanHide][2];
			Option6 = Boot_Moc_normal[nRanHide][3];
			end
		elseif (nSeries == 2) then
			local nRanHide = random(1,getn(Boot_Thuy_normal))
			local nRanSpecialHide = random(1,getn(Boot_Thuy_special))
			if nLuck > random(1,RateServer) then
			Option2 = Boot_Thuy_special[nRanSpecialHide][1];
			Option4 = Boot_Thuy_special[nRanSpecialHide][2];
			Option6 = Boot_Thuy_special[nRanSpecialHide][3];
			else
			Option2 = Boot_Thuy_normal[nRanHide][1];
			Option4 = Boot_Thuy_normal[nRanHide][2];
			Option6 = Boot_Thuy_normal[nRanHide][3];
			end
		elseif (nSeries == 3) then
			local nRanHide = random(1,getn(Boot_Hoa_normal))
			local nRanSpecialHide = random(1,getn(Boot_Hoa_special))
			if nLuck > random(1,RateServer) then
			Option2 = Boot_Hoa_special[nRanSpecialHide][1];
			Option4 = Boot_Hoa_special[nRanSpecialHide][2];
			Option6 = Boot_Hoa_special[nRanSpecialHide][3];
			else
			Option2 = Boot_Hoa_normal[nRanHide][1];
			Option4 = Boot_Hoa_normal[nRanHide][2];
			Option6 = Boot_Hoa_normal[nRanHide][3];
			end	
		elseif (nSeries == 4) then
			local nRanHide = random(1,getn(Boot_Tho_normal))
			local nRanSpecialHide = random(1,getn(Boot_Tho_special))
			if nLuck > random(1,RateServer) then
			Option2 = Boot_Tho_special[nRanSpecialHide][1];
			Option4 = Boot_Tho_special[nRanSpecialHide][2];
			Option6 = Boot_Tho_special[nRanSpecialHide][3];
			else
			Option2 = Boot_Tho_normal[nRanHide][1];
			Option4 = Boot_Tho_normal[nRanHide][2];
			Option6 = Boot_Tho_normal[nRanHide][3];
			end		
		else
		Msg2Player(MESERROR);
		return 
		end	
	elseif (nGenre == 5) then
		local nRanShow = random(1,getn(Helm_normal))
		local nRanSpecialShow = random(1,getn(Helm_special))
		if nLuck > random(1,RateServer) then
			Option1 = Helm_special[nRanSpecialShow][1];
			Option3 = Helm_special[nRanSpecialShow][2];
			Option5 = Helm_special[nRanSpecialShow][3];
		else
			Option1 = Helm_normal[nRanShow][1];
			Option3 = Helm_normal[nRanShow][2];
			Option5 = Helm_normal[nRanShow][3];
		end

		if (nSeries == 0) then
			local nRanHide = random(1,getn(Helm_Kim_normal))
			local nRanSpecialHide = random(1,getn(Helm_Kim_special))
			if nLuck > random(1,RateServer) then
			Option2 = Helm_Kim_special[nRanSpecialHide][1];
			Option4 = Helm_Kim_special[nRanSpecialHide][2];
			Option6 = Helm_Kim_special[nRanSpecialHide][3];
			else
			Option2 = Helm_Kim_normal[nRanHide][1];
			Option4 = Helm_Kim_normal[nRanHide][2];
			Option6 = Helm_Kim_normal[nRanHide][3];
			end
			
		elseif (nSeries == 1) then
			local nRanHide = random(1,getn(Helm_Moc_normal))
			local nRanSpecialHide = random(1,getn(Helm_Moc_special))
			if nLuck > random(1,RateServer) then
			Option2 = Helm_Moc_special[nRanSpecialHide][1];
			Option4 = Helm_Moc_special[nRanSpecialHide][2];
			Option6 = Helm_Moc_special[nRanSpecialHide][3];
			else
			Option2 = Helm_Moc_normal[nRanHide][1];
			Option4 = Helm_Moc_normal[nRanHide][2];
			Option6 = Helm_Moc_normal[nRanHide][3];
			end
		elseif (nSeries == 2) then
			local nRanHide = random(1,getn(Helm_Thuy_normal))
			local nRanSpecialHide = random(1,getn(Helm_Thuy_special))
			if nLuck > random(1,RateServer) then
			Option2 = Helm_Thuy_special[nRanSpecialHide][1];
			Option4 = Helm_Thuy_special[nRanSpecialHide][2];
			Option6 = Helm_Thuy_special[nRanSpecialHide][3];
			else
			Option2 = Helm_Thuy_normal[nRanHide][1];
			Option4 = Helm_Thuy_normal[nRanHide][2];
			Option6 = Helm_Thuy_normal[nRanHide][3];
			end
		elseif (nSeries == 3) then
			local nRanHide = random(1,getn(Helm_Hoa_normal))
			local nRanSpecialHide = random(1,getn(Helm_Hoa_special))
			if nLuck > random(1,RateServer) then
			Option2 = Helm_Hoa_special[nRanSpecialHide][1];
			Option4 = Helm_Hoa_special[nRanSpecialHide][2];
			Option6 = Helm_Hoa_special[nRanSpecialHide][3];
			else
			Option2 = Helm_Hoa_normal[nRanHide][1];
			Option4 = Helm_Hoa_normal[nRanHide][2];
			Option6 = Helm_Hoa_normal[nRanHide][3];
			end	
		elseif (nSeries == 4) then
			local nRanHide = random(1,getn(Helm_Tho_normal))
			local nRanSpecialHide = random(1,getn(Helm_Tho_special))
			if nLuck > random(1,RateServer) then
			Option2 = Helm_Tho_special[nRanSpecialHide][1];
			Option4 = Helm_Tho_special[nRanSpecialHide][2];
			Option6 = Helm_Tho_special[nRanSpecialHide][3];
			else
			Option2 = Helm_Tho_normal[nRanHide][1];
			Option4 = Helm_Tho_normal[nRanHide][2];
			Option6 = Helm_Tho_normal[nRanHide][3];
			end		
		else
		Msg2Player(MESERROR);
		return 
		end	
	elseif (nGenre == 6) then
		local nRanShow = random(1,getn(Cuff_normal))
		local nRanSpecialShow = random(1,getn(Cuff_special))
		if nLuck > random(1,RateServer) then
			Option1 = Cuff_special[nRanSpecialShow][1];
			Option3 = Cuff_special[nRanSpecialShow][2];
			Option5 = Cuff_special[nRanSpecialShow][3];
		else
			Option1 = Cuff_normal[nRanShow][1];
			Option3 = Cuff_normal[nRanShow][2];
			Option5 = Cuff_normal[nRanShow][3];
		end

		if (nSeries == 0) then
			local nRanHide = random(1,getn(Cuff_Kim_normal))
			local nRanSpecialHide = random(1,getn(Cuff_Kim_special))
			if nLuck > random(1,RateServer) then
			Option2 = Cuff_Kim_special[nRanSpecialHide][1];
			Option4 = Cuff_Kim_special[nRanSpecialHide][2];
			Option6 = Cuff_Kim_special[nRanSpecialHide][3];
			else
			Option2 = Cuff_Kim_normal[nRanHide][1];
			Option4 = Cuff_Kim_normal[nRanHide][2];
			Option6 = Cuff_Kim_normal[nRanHide][3];
			end
			
		elseif (nSeries == 1) then
			local nRanHide = random(1,getn(Cuff_Moc_normal))
			local nRanSpecialHide = random(1,getn(Cuff_Moc_special))
			if nLuck > random(1,RateServer) then
			Option2 = Cuff_Moc_special[nRanSpecialHide][1];
			Option4 = Cuff_Moc_special[nRanSpecialHide][2];
			Option6 = Cuff_Moc_special[nRanSpecialHide][3];
			else
			Option2 = Cuff_Moc_normal[nRanHide][1];
			Option4 = Cuff_Moc_normal[nRanHide][2];
			Option6 = Cuff_Moc_normal[nRanHide][3];
			end
		elseif (nSeries == 2) then
			local nRanHide = random(1,getn(Cuff_Thuy_normal))
			local nRanSpecialHide = random(1,getn(Cuff_Thuy_special))
			if nLuck > random(1,RateServer) then
			Option2 = Cuff_Thuy_special[nRanSpecialHide][1];
			Option4 = Cuff_Thuy_special[nRanSpecialHide][2];
			Option6 = Cuff_Thuy_special[nRanSpecialHide][3];
			else
			Option2 = Cuff_Thuy_normal[nRanHide][1];
			Option4 = Cuff_Thuy_normal[nRanHide][2];
			Option6 = Cuff_Thuy_normal[nRanHide][3];
			end
		elseif (nSeries == 3) then
			local nRanHide = random(1,getn(Cuff_Hoa_normal))
			local nRanSpecialHide = random(1,getn(Cuff_Hoa_special))
			if nLuck > random(1,RateServer) then
			Option2 = Cuff_Hoa_special[nRanSpecialHide][1];
			Option4 = Cuff_Hoa_special[nRanSpecialHide][2];
			Option6 = Cuff_Hoa_special[nRanSpecialHide][3];
			else
			Option2 = Cuff_Hoa_normal[nRanHide][1];
			Option4 = Cuff_Hoa_normal[nRanHide][2];
			Option6 = Cuff_Hoa_normal[nRanHide][3];
			end	
		elseif (nSeries == 4) then
			local nRanHide = random(1,getn(Cuff_Tho_normal))
			local nRanSpecialHide = random(1,getn(Cuff_Tho_special))
			if nLuck > random(1,RateServer) then
			Option2 = Cuff_Tho_special[nRanSpecialHide][1];
			Option4 = Cuff_Tho_special[nRanSpecialHide][2];
			Option6 = Cuff_Tho_special[nRanSpecialHide][3];
			else
			Option2 = Cuff_Tho_normal[nRanHide][1];
			Option4 = Cuff_Tho_normal[nRanHide][2];
			Option6 = Cuff_Tho_normal[nRanHide][3];
			end		
		else
		Msg2Player(MESERROR);
		return 
		end	
	elseif (nGenre == 7) then
		local nRanShow = random(1,getn(Pendant_normal))
		local nRanSpecialShow = random(1,getn(Pendant_special))
		if nLuck > random(1,RateServer) then
			Option1 = Pendant_special[nRanSpecialShow][1];
			Option3 = Pendant_special[nRanSpecialShow][2];
			Option5 = Pendant_special[nRanSpecialShow][3];
		else
			Option1 = Pendant_normal[nRanShow][1];
			Option3 = Pendant_normal[nRanShow][2];
			Option5 = Pendant_normal[nRanShow][3];
		end

		if (nSeries == 0) then
			local nRanHide = random(1,getn(Pendant_Kim_normal))
			local nRanSpecialHide = random(1,getn(Pendant_Kim_special))
			if nLuck > random(1,RateServer) then
			Option2 = Pendant_Kim_special[nRanSpecialHide][1];
			Option4 = Pendant_Kim_special[nRanSpecialHide][2];
			Option6 = Pendant_Kim_special[nRanSpecialHide][3];
			else
			Option2 = Pendant_Kim_normal[nRanHide][1];
			Option4 = Pendant_Kim_normal[nRanHide][2];
			Option6 = Pendant_Kim_normal[nRanHide][3];
			end
			
		elseif (nSeries == 1) then
			local nRanHide = random(1,getn(Pendant_Moc_normal))
			local nRanSpecialHide = random(1,getn(Pendant_Moc_special))
			if nLuck > random(1,RateServer) then
			Option2 = Pendant_Moc_special[nRanSpecialHide][1];
			Option4 = Pendant_Moc_special[nRanSpecialHide][2];
			Option6 = Pendant_Moc_special[nRanSpecialHide][3];
			else
			Option2 = Pendant_Moc_normal[nRanHide][1];
			Option4 = Pendant_Moc_normal[nRanHide][2];
			Option6 = Pendant_Moc_normal[nRanHide][3];
			end
		elseif (nSeries == 2) then
			local nRanHide = random(1,getn(Pendant_Thuy_normal))
			local nRanSpecialHide = random(1,getn(Pendant_Thuy_special))
			if nLuck > random(1,RateServer) then
			Option2 = Pendant_Thuy_special[nRanSpecialHide][1];
			Option4 = Pendant_Thuy_special[nRanSpecialHide][2];
			Option6 = Pendant_Thuy_special[nRanSpecialHide][3];
			else
			Option2 = Pendant_Thuy_normal[nRanHide][1];
			Option4 = Pendant_Thuy_normal[nRanHide][2];
			Option6 = Pendant_Thuy_normal[nRanHide][3];
			end
		elseif (nSeries == 3) then
			local nRanHide = random(1,getn(Pendant_Hoa_normal))
			local nRanSpecialHide = random(1,getn(Pendant_Hoa_special))
			if nLuck > random(1,RateServer) then
			Option2 = Pendant_Hoa_special[nRanSpecialHide][1];
			Option4 = Pendant_Hoa_special[nRanSpecialHide][2];
			Option6 = Pendant_Hoa_special[nRanSpecialHide][3];
			else
			Option2 = Pendant_Hoa_normal[nRanHide][1];
			Option4 = Pendant_Hoa_normal[nRanHide][2];
			Option6 = Pendant_Hoa_normal[nRanHide][3];
			end	
		elseif (nSeries == 4) then
			local nRanHide = random(1,getn(Pendant_Tho_normal))
			local nRanSpecialHide = random(1,getn(Pendant_Tho_special))
			if nLuck > random(1,RateServer) then
			Option2 = Pendant_Tho_special[nRanSpecialHide][1];
			Option4 = Pendant_Tho_special[nRanSpecialHide][2];
			Option6 = Pendant_Tho_special[nRanSpecialHide][3];
			else
			Option2 = Pendant_Tho_normal[nRanHide][1];
			Option4 = Pendant_Tho_normal[nRanHide][2];
			Option6 = Pendant_Tho_normal[nRanHide][3];
			end		
		else
		Msg2Player(MESERROR);
		return 
		end	
	elseif (nGenre == 8) then
		local nRanShow = random(1,getn(Ring_normal))
		local nRanSpecialShow = random(1,getn(Ring_special))
		if nLuck > random(1,RateServer) then
			Option1 = Ring_special[nRanSpecialShow][1];
			Option3 = Ring_special[nRanSpecialShow][2];
			Option5 = Ring_special[nRanSpecialShow][3];
		else
			Option1 = Ring_normal[nRanShow][1];
			Option3 = Ring_normal[nRanShow][2];
			Option5 = Ring_normal[nRanShow][3];
		end

		if (nSeries == 0) then
			local nRanHide = random(1,getn(Ring_Kim_normal))
			local nRanSpecialHide = random(1,getn(Ring_Kim_special))
			if nLuck > random(1,RateServer) then
			Option2 = Ring_Kim_special[nRanSpecialHide][1];
			Option4 = Ring_Kim_special[nRanSpecialHide][2];
			Option6 = Ring_Kim_special[nRanSpecialHide][3];
			else
			Option2 = Ring_Kim_normal[nRanHide][1];
			Option4 = Ring_Kim_normal[nRanHide][2];
			Option6 = Ring_Kim_normal[nRanHide][3];
			end
			
		elseif (nSeries == 1) then
			local nRanHide = random(1,getn(Ring_Moc_normal))
			local nRanSpecialHide = random(1,getn(Ring_Moc_special))
			if nLuck > random(1,RateServer) then
			Option2 = Ring_Moc_special[nRanSpecialHide][1];
			Option4 = Ring_Moc_special[nRanSpecialHide][2];
			Option6 = Ring_Moc_special[nRanSpecialHide][3];
			else
			Option2 = Ring_Moc_normal[nRanHide][1];
			Option4 = Ring_Moc_normal[nRanHide][2];
			Option6 = Ring_Moc_normal[nRanHide][3];
			end
		elseif (nSeries == 2) then
			local nRanHide = random(1,getn(Ring_Thuy_normal))
			local nRanSpecialHide = random(1,getn(Ring_Thuy_special))
			if nLuck > random(1,RateServer) then
			Option2 = Ring_Thuy_special[nRanSpecialHide][1];
			Option4 = Ring_Thuy_special[nRanSpecialHide][2];
			Option6 = Ring_Thuy_special[nRanSpecialHide][3];
			else
			Option2 = Ring_Thuy_normal[nRanHide][1];
			Option4 = Ring_Thuy_normal[nRanHide][2];
			Option6 = Ring_Thuy_normal[nRanHide][3];
			end
		elseif (nSeries == 3) then
			local nRanHide = random(1,getn(Ring_Hoa_normal))
			local nRanSpecialHide = random(1,getn(Ring_Hoa_special))
			if nLuck > random(1,RateServer) then
			Option2 = Ring_Hoa_special[nRanSpecialHide][1];
			Option4 = Ring_Hoa_special[nRanSpecialHide][2];
			Option6 = Ring_Hoa_special[nRanSpecialHide][3];
			else
			Option2 = Ring_Hoa_normal[nRanHide][1];
			Option4 = Ring_Hoa_normal[nRanHide][2];
			Option6 = Ring_Hoa_normal[nRanHide][3];
			end	
		elseif (nSeries == 4) then
			local nRanHide = random(1,getn(Ring_Tho_normal))
			local nRanSpecialHide = random(1,getn(Ring_Tho_special))
			if nLuck > random(1,RateServer) then
			Option2 = Ring_Tho_special[nRanSpecialHide][1];
			Option4 = Ring_Tho_special[nRanSpecialHide][2];
			Option6 = Ring_Tho_special[nRanSpecialHide][3];
			else
			Option2 = Ring_Tho_normal[nRanHide][1];
			Option4 = Ring_Tho_normal[nRanHide][2];
			Option6 = Ring_Tho_normal[nRanHide][3];
			end		
		else
		Msg2Player(MESERROR);
		return 
		end	
	elseif (nGenre == 9) then
		local nRanShow = random(1,getn(MeeLeeWP_normal))
		local nRanSpecialShow = random(1,getn(MeeLeeWP_special))
		if nLuck > random(1,RateServer) then
			Option1 = MeeLeeWP_special[nRanSpecialShow][1];
			Option3 = MeeLeeWP_special[nRanSpecialShow][2];
			Option5 = MeeLeeWP_special[nRanSpecialShow][3];
		else
			Option1 = MeeLeeWP_normal[nRanShow][1];
			Option3 = MeeLeeWP_normal[nRanShow][2];
			Option5 = MeeLeeWP_normal[nRanShow][3];
		end

		if (nSeries == 0) then
			local nRanHide = random(1,getn(MeeLeeWP_Kim_normal))
			local nRanSpecialHide = random(1,getn(MeeLeeWP_Kim_special))
			if nLuck > random(1,RateServer) then
			Option2 = MeeLeeWP_Kim_special[nRanSpecialHide][1];
			Option4 = MeeLeeWP_Kim_special[nRanSpecialHide][2];
			Option6 = MeeLeeWP_Kim_special[nRanSpecialHide][3];
			else
			Option2 = MeeLeeWP_Kim_normal[nRanHide][1];
			Option4 = MeeLeeWP_Kim_normal[nRanHide][2];
			Option6 = MeeLeeWP_Kim_normal[nRanHide][3];
			end
			
		elseif (nSeries == 1) then
			local nRanHide = random(1,getn(MeeLeeWP_Moc_normal))
			local nRanSpecialHide = random(1,getn(MeeLeeWP_Moc_special))
			if nLuck > random(1,RateServer) then
			Option2 = MeeLeeWP_Moc_special[nRanSpecialHide][1];
			Option4 = MeeLeeWP_Moc_special[nRanSpecialHide][2];
			Option6 = MeeLeeWP_Moc_special[nRanSpecialHide][3];
			else
			Option2 = MeeLeeWP_Moc_normal[nRanHide][1];
			Option4 = MeeLeeWP_Moc_normal[nRanHide][2];
			Option6 = MeeLeeWP_Moc_normal[nRanHide][3];
			end
		elseif (nSeries == 2) then
			local nRanHide = random(1,getn(MeeLeeWP_Thuy_normal))
			local nRanSpecialHide = random(1,getn(MeeLeeWP_Thuy_special))
			if nLuck > random(1,RateServer) then
			Option2 = MeeLeeWP_Thuy_special[nRanSpecialHide][1];
			Option4 = MeeLeeWP_Thuy_special[nRanSpecialHide][2];
			Option6 = MeeLeeWP_Thuy_special[nRanSpecialHide][3];
			else
			Option2 = MeeLeeWP_Thuy_normal[nRanHide][1];
			Option4 = MeeLeeWP_Thuy_normal[nRanHide][2];
			Option6 = MeeLeeWP_Thuy_normal[nRanHide][3];
			end
		elseif (nSeries == 3) then
			local nRanHide = random(1,getn(MeeLeeWP_Hoa_normal))
			local nRanSpecialHide = random(1,getn(MeeLeeWP_Hoa_special))
			if nLuck > random(1,RateServer) then
			Option2 = MeeLeeWP_Hoa_special[nRanSpecialHide][1];
			Option4 = MeeLeeWP_Hoa_special[nRanSpecialHide][2];
			Option6 = MeeLeeWP_Hoa_special[nRanSpecialHide][3];
			else
			Option2 = MeeLeeWP_Hoa_normal[nRanHide][1];
			Option4 = MeeLeeWP_Hoa_normal[nRanHide][2];
			Option6 = MeeLeeWP_Hoa_normal[nRanHide][3];
			end	
		elseif (nSeries == 4) then
			local nRanHide = random(1,getn(MeeLeeWP_Tho_normal))
			local nRanSpecialHide = random(1,getn(MeeLeeWP_Tho_special))
			if nLuck > random(1,RateServer) then
			Option2 = MeeLeeWP_Tho_special[nRanSpecialHide][1];
			Option4 = MeeLeeWP_Tho_special[nRanSpecialHide][2];
			Option6 = MeeLeeWP_Tho_special[nRanSpecialHide][3];
			else
			Option2 = MeeLeeWP_Tho_normal[nRanHide][1];
			Option4 = MeeLeeWP_Tho_normal[nRanHide][2];
			Option6 = MeeLeeWP_Tho_normal[nRanHide][3];
			end		
		else
		Msg2Player(MESERROR);
		return 
		end	
	elseif (nGenre == 10) then
			local nRanShow = random(1,getn(RangrateMP_normal))
		local nRanSpecialShow = random(1,getn(RangrateMP_special))
		if nLuck > random(1,RateServer) then
			Option1 = RangrateMP_special[nRanSpecialShow][1];
			Option3 = RangrateMP_special[nRanSpecialShow][2];
			Option5 = RangrateMP_special[nRanSpecialShow][3];
		else
			Option1 = RangrateMP_normal[nRanShow][1];
			Option3 = RangrateMP_normal[nRanShow][2];
			Option5 = RangrateMP_normal[nRanShow][3];
		end

		if (nSeries == 0) then
			local nRanHide = random(1,getn(RangrateMP_Kim_normal))
			local nRanSpecialHide = random(1,getn(RangrateMP_Kim_special))
			if nLuck > random(1,RateServer) then
			Option2 = RangrateMP_Kim_special[nRanSpecialHide][1];
			Option4 = RangrateMP_Kim_special[nRanSpecialHide][2];
			Option6 = RangrateMP_Kim_special[nRanSpecialHide][3];
			else
			Option2 = RangrateMP_Kim_normal[nRanHide][1];
			Option4 = RangrateMP_Kim_normal[nRanHide][2];
			Option6 = RangrateMP_Kim_normal[nRanHide][3];
			end
			
		elseif (nSeries == 1) then
			local nRanHide = random(1,getn(RangrateMP_Moc_normal))
			local nRanSpecialHide = random(1,getn(RangrateMP_Moc_special))
			if nLuck > random(1,RateServer) then
			Option2 = RangrateMP_Moc_special[nRanSpecialHide][1];
			Option4 = RangrateMP_Moc_special[nRanSpecialHide][2];
			Option6 = RangrateMP_Moc_special[nRanSpecialHide][3];
			else
			Option2 = RangrateMP_Moc_normal[nRanHide][1];
			Option4 = RangrateMP_Moc_normal[nRanHide][2];
			Option6 = RangrateMP_Moc_normal[nRanHide][3];
			end
		elseif (nSeries == 2) then
			local nRanHide = random(1,getn(RangrateMP_Thuy_normal))
			local nRanSpecialHide = random(1,getn(RangrateMP_Thuy_special))
			if nLuck > random(1,RateServer) then
			Option2 = RangrateMP_Thuy_special[nRanSpecialHide][1];
			Option4 = RangrateMP_Thuy_special[nRanSpecialHide][2];
			Option6 = RangrateMP_Thuy_special[nRanSpecialHide][3];
			else
			Option2 = RangrateMP_Thuy_normal[nRanHide][1];
			Option4 = RangrateMP_Thuy_normal[nRanHide][2];
			Option6 = RangrateMP_Thuy_normal[nRanHide][3];
			end
		elseif (nSeries == 3) then
			local nRanHide = random(1,getn(RangrateMP_Hoa_normal))
			local nRanSpecialHide = random(1,getn(RangrateMP_Hoa_special))
			if nLuck > random(1,RateServer) then
			Option2 = RangrateMP_Hoa_special[nRanSpecialHide][1];
			Option4 = RangrateMP_Hoa_special[nRanSpecialHide][2];
			Option6 = RangrateMP_Hoa_special[nRanSpecialHide][3];
			else
			Option2 = RangrateMP_Hoa_normal[nRanHide][1];
			Option4 = RangrateMP_Hoa_normal[nRanHide][2];
			Option6 = RangrateMP_Hoa_normal[nRanHide][3];
			end	
		elseif (nSeries == 4) then
			local nRanHide = random(1,getn(RangrateMP_Tho_normal))
			local nRanSpecialHide = random(1,getn(RangrateMP_Tho_special))
			if nLuck > random(1,RateServer) then
			Option2 = RangrateMP_Tho_special[nRanSpecialHide][1];
			Option4 = RangrateMP_Tho_special[nRanSpecialHide][2];
			Option6 = RangrateMP_Tho_special[nRanSpecialHide][3];
			else
			Option2 = RangrateMP_Tho_normal[nRanHide][1];
			Option4 = RangrateMP_Tho_normal[nRanHide][2];
			Option6 = RangrateMP_Tho_normal[nRanHide][3];
			end		
		else
		Msg2Player(MESERROR);
		return 
		end	
	else
		Msg2Player(MESERROR);
	return 	
	end
	
---Option1;
		type1 =	KindOption_Show[Option1][1][1];
		if (Option1 == 9) or (Option1 == 12) then
			if (nLuckRate < 4) then
				value1_1 = RANDOMC(KindOption_Show[Option1][2][nLuckRate][1],20,KindOption_Show[Option1][2][nLuckRate][2]);
			else
				value1_1 = RANDOMC(KindOption_Show[Option1][2][nLuckRate][1],30,KindOption_Show[Option1][2][nLuckRate][2]);
			end;
		else
			value1_1 = random(KindOption_Show[Option1][2][nLuckRate][1],KindOption_Show[Option1][2][nLuckRate][2]);
		end;
		if (nNumLine == 0) then
			type1 = 0;
			value1_1 = 0;
		end;
		
	--Option2;
		type2 =	KindOption_Hide[Option2][1][1];
		if (Option2 == 5) or (Option2 == 8) or (Option2 == 10) then
			if (nLuckRate < 4) then
				value2_1 = RANDOMC(KindOption_Hide[Option2][2][nLuckRate][1],20,KindOption_Hide[Option2][2][nLuckRate][2]);
			else
				value2_1 = RANDOMC(KindOption_Hide[Option2][2][nLuckRate][1],30,KindOption_Hide[Option2][2][nLuckRate][2]);
			end;
		else
			value2_1 = random(KindOption_Hide[Option2][2][nLuckRate][1],KindOption_Hide[Option2][2][nLuckRate][2]);
		end;				
		if (type1 == 0) or (nNumLine == 1) then
			type2 = 0;
			value2_1 = 0;
			end;	
		
	---Option3;
		type3 =	KindOption_Show[Option3][1][1];
		if (Option3 == 9) or (Option3 == 12) then
			if (nLuckRate < 4) then
				value3_1 = RANDOMC(KindOption_Show[Option3][2][nLuckRate][1],20,KindOption_Show[Option3][2][nLuckRate][2]);
			else
				value3_1 = RANDOMC(KindOption_Show[Option3][2][nLuckRate][1],30,KindOption_Show[Option3][2][nLuckRate][2]);
			end;
		else
			value3_1 = random(KindOption_Show[Option3][2][nLuckRate][1],KindOption_Show[Option3][2][nLuckRate][2]);
		end;
		if (type2 == 0) or (nNumLine == 2) then
			type3 = 0;
			value3_1 = 0;
		end;
		
	--Option4;
		type4 =	KindOption_Hide[Option4][1][1];
		if (Option4 == 5) or (Option4 == 8) or (Option4 == 10) then
			if (nLuckRate < 4) then
				value4_1 = RANDOMC(KindOption_Hide[Option4][2][nLuckRate][1],20,KindOption_Hide[Option4][2][nLuckRate][2]);
			else
				value4_1 = RANDOMC(KindOption_Hide[Option4][2][nLuckRate][1],30,KindOption_Hide[Option4][2][nLuckRate][2]);
			end;
		else
			value4_1 = random(KindOption_Hide[Option4][2][nLuckRate][1],KindOption_Hide[Option4][2][nLuckRate][2]);
		end;				
		if (type3 == 0) or (nNumLine == 3) then
			type4 = 0;
			value4_1 = 0;
		end;
		
	---Option5;
		type5 =	KindOption_Show[Option5][1][1];
		if (Option5 == 9) or (Option5 == 12) then
			if (nLuckRate < 4) then
				value5_1 = RANDOMC(KindOption_Show[Option5][2][nLuckRate][1],20,KindOption_Show[Option5][2][nLuckRate][2]);
			else
				value5_1 = RANDOMC(KindOption_Show[Option5][2][nLuckRate][1],30,KindOption_Show[Option5][2][nLuckRate][2]);
			end;
		else
			value5_1 = random(KindOption_Show[Option5][2][nLuckRate][1],KindOption_Show[Option5][2][nLuckRate][2]);
		end;
		if (type4 == 0) or (nNumLine == 4) then
			type5 = 0;
			value5_1 = 0;
		end;	
		
	--Option6;
	if (Option6 == 0) then -- trang bi duoi 3 dong an
		type6,value6_1 =0,0;
	else
		type6 =	KindOption_Hide[Option6][1][1];
		if (Option6 == 5) or (Option6 == 8) or (Option6 == 10) then
			if (nLuckRate < 4) then
				value6_1 = RANDOMC(KindOption_Hide[Option6][2][nLuckRate][1],20,KindOption_Hide[Option6][2][nLuckRate][2]);
			else
				value6_1 = RANDOMC(KindOption_Hide[Option6][2][nLuckRate][1],30,KindOption_Hide[Option6][2][nLuckRate][2]);
			end;
		else
			value6_1 = random(KindOption_Hide[Option6][2][nLuckRate][1],KindOption_Hide[Option6][2][nLuckRate][2]);
		end;				
		if (type5 == 0) or (nNumLine == 5) then
			type6 = 0;
			value6_1 = 0;
		end;		
	end	
		
		SetMagicAttrib(nIndex,
		type1 , value1_1, 0,
		type2 , value2_1, 0,
		type3 , value3_1, 0,
		type4 , value4_1, 0,
		type5 , value5_1, 0,
		type6 , value6_1, 0,
		0 , 0, 0,
		0 , 0, 0
				);
		local tab = {1,2,3,4,5,6,7,8,9,10};
		local intTab = tab[random(10)]
		intTab = nIndex;
		DropItem(NpcIndex,intTab);
		-- AddItemID(tab[1]);
		tab = {};
end
