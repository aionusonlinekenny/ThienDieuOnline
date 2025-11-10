--|------------------------------------------------------|
--|FORMULA_LUCKY = nLuck + Name_TAB_OPTION[i][2][j][1];--|
--|Author: Kinnox									   --|	
--|Date: 11/09/2020									   --|	
--|------------------------------------------------------|

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

KindOption_Show ={
--level: 			1			2			3			4			5			6			7			8			9			10
{	{85},{		{1,50},		{20,70},	{30,90},	{40,120},	{50,150},	{60,170},	{70,190},	{70,200},	{70,200},	{70,200}}	}, 	--1-- sinh luc
{	{89},{		{1,50},		{20,70},	{30,90},	{40,120},	{50,150},	{60,170},	{70,190},	{70,200},	{70,200},	{70,200}}	},	--2-- noi luc
{	{93},{		{1,50},		{20,70},	{30,90},	{40,120},	{50,150},	{60,170},	{70,190},	{70,200},	{70,200},	{70,200}}	},	--3-- the luc
{	{96},{		{1,3},		{1,3},		{1,5},		{1,5},		{1,5},		{1,6},		{1,7},		{1,9},		{1,9},		{1,9}}		}, 	--4-- phuc hoi moi giay nua diem the luc
{	{92},{		{1,2},		{1,2},		{1,2},		{1,4},		{1,4},		{1,4},		{1,4},		{1,4},		{1,4},		{1,4}}		}, 	--5-- phuc hoi moi giay nua diem noi luc
{	{88},{		{1,2},		{1,2},		{1,3},		{1,6},		{1,6},		{1,6},		{1,6},		{1,6},		{1,6},		{1,6}}		},	--6-- phuc hoi moi giay nua diem sinh luc 
{	{43},{		{1,1},		{1,1},		{1,1},		{1,1},		{1,1},		{1,1},		{1,1},		{1,1},		{1,1},		{1,1}}		}, 	--7-- khong the pha huy
{	{117},{		{1,5},		{1,5},		{1,10},		{1,10},		{10,15},	{10,16},	{10,17},	{10,20},	{10,20},	{10,20}}	},	--8-- phan don can chien (diem)
{	{113},{		{20,20},	{20,20},	{20,20},	{20,30},	{20,30},	{20,40},	{20,40},	{20,40},	{20,40},	{20,40}}	},	--9-- thoi gian phuc hoi (danh cho ao) --OPTION DAC BIET
{	{114},{		{1,5},		{1,5},		{1,10},		{1,10},		{1,15},		{1,16},		{1,17},		{5,20},		{6,20},		{7,20}}		},	--10-- khang tat ca
{	{111},{		{10,20},	{10,20},	{10,27},	{10,30},	{10,33},	{10,37},	{15,40},	{15,40},	{17,40},	{17,40}}	},	--11-- toc do di chuyen --OPTION DAC BIET 
{	{115},{		{10,20},	{10,20},	{10,20},	{10,20},	{10,20},	{10,20},	{10,30},	{10,30},	{10,30},	{10,30}}	},	--12-- toc do danh--OPTION DAC BIET
{	{136},{		{1,3},		{1,3},		{1,5},		{1,5},		{1,5},		{1,6},		{1,7},		{1,10},		{1,10},		{1,10}}		},	--13-- hut sinh luc--OPTION DAC BIET
{	{137},{		{1,3},		{1,3},		{1,5},		{1,5},		{1,5},		{1,6},		{1,7},		{1,10},		{1,10},		{1,10}}		},	--14-- hut noi luc--OPTION DAC BIET
{	{126},{		{20,20},	{20,30},	{20,30},	{20,40},	{20,50},	{20,60},	{30,90},	{30,100},	{50,100},	{50,100}}	},	--15-- sat thuong vat ly ngoai cong ( %) --OPTION DAC BIET
{	{166},{		{1,50},		{20,70},	{30,90},	{30,120},	{35,150},	{30,170},	{40,190},	{50,200},	{60,200},	{60,200}}	}, 	--16-- do chinh sat
{	{58},{		{1,1},		{1,1},		{1,1},		{1,1},		{1,1},		{1,1},		{1,1},		{1,1},		{1,1},		{1,1}}		}, 	--17-- bo qua ne tranh
};

KindOption_Hide ={
--level: 			1			2			3			4			5			6			7			8			9			10
{	{134},{		{1,5},		{1,5},		{1,5},		{1,5},		{1,5},		{1,9},		{1,12},		{5,15},		{6,15},		{7,15}}		}, 	--1-- chuyen hoa sat thuong thanh noi luc
{	{101},{		{1,5},		{1,5},		{1,10},		{1,10},		{1,15},		{1,18},		{1,25},		{5,30},		{6,30},		{7,30}}		},	--2-- khang doc
{	{103},{		{1,5},		{1,5},		{1,10},		{1,10},		{1,15},		{1,17},		{1,20},		{5,25},		{6,25},		{7,25}}		},	--3-- khang loi
{	{102},{		{1,5},		{1,5},		{1,10},		{1,10},		{1,15},		{1,17},		{1,20},		{5,25},		{6,25},		{7,25}}		},	--4-- khang hoa
{	{110},{		{20,20},	{20,20},	{20,20},	{20,20},	{20,20},	{20,30},	{20,40},	{20,40},	{20,40},	{20,40}}	}, 	--5-- thoi gian choang ---- OPTION DAC BIET
{	{99},{		{1,5},		{1,5},		{1,10},		{1,10},		{1,15},		{1,20},		{1,20},		{5,20},		{6,20},		{7,20}}		}, 	--6-- diem sinh khi
{	{104},{		{1,5},		{1,5},		{1,10},		{1,10},		{1,15},		{1,18},		{1,20},		{5,25},		{6,25},		{7,25}}		},	--7-- phong thu vat ly
{	{106},{		{20,20},	{20,20},	{20,20},	{20,20},	{20,20},	{20,30},	{20,30},	{20,40},	{20,40},	{20,40}}	}, 	--8-- thoi gian lam cham---- OPTION DAC BIET
{	{98},{		{1,5},		{1,5},		{1,10},		{1,10},		{1,15},		{1,20},		{1,20},		{5,20},		{6,20},		{7,20}}		}, 	--9-- diem than phap
{	{108},{		{20,20},	{20,20},	{20,20},	{20,20},	{20,20},	{20,30},	{20,30},	{20,40},	{20,40},	{20,40}}	}, 	--10-- thoi gian trung doc ---- OPTION DAC BIET
{	{105},{		{1,5},		{1,5},		{1,10},		{1,10},		{1,15},		{1,17},		{1,20},		{5,25},		{6,25},		{7,25}}		}, 	--11-- khang bang
{	{97},{		{1,5},		{1,5},		{1,10},		{1,10},		{1,15},		{1,18},		{1,19},		{5,20},		{6,20},		{7,20}}		}, 	--12-- suc manh
{	{135},{		{1,3},		{1,3},		{1,5},		{1,5},		{1,5},		{1,6},		{1,7},		{1,9},		{1,10},		{1,10}}		},	--13-- may man ---- OPTION DAC BIET
{	{121},{		{5,10},		{5,20},		{10,20},	{10,30},	{10,40},	{10,50},	{10,50},	{15,50},	{15,50},	{15,50}}	},	--14-- sat thuong vat ly ngoai cong ( diem) --OPTION DAC BIET
{	{140},{		{1,20},		{20,50},	{20,80},	{20,100},	{20,130},	{20,150},	{40,170},	{50,180},	{80,200},	{90,200}}	},	--15-- sat thuong vat ly noi cong ( diem) --OPTION DAC BIET
{	{125},{		{5,10},		{5,20},		{10,20},	{10,23},	{10,33},	{10,40},	{10,50},	{15,50},	{15,50},	{15,50}}	},	--16-- doc sat ngoai cong ( diem) --OPTION DAC BIET
{	{144},{		{5,10},		{5,20},		{10,20},	{10,23},	{10,33},	{10,40},	{10,50},	{15,50},	{15,50},	{15,50}}	},	--17-- doc sat noi cong ( diem) --OPTION DAC BIET
{	{123},{		{5,10},		{5,20},		{10,20},	{10,30},	{10,40},	{10,50},	{10,50},	{30,80},	{30,90},	{30,100}}	},	--18-- bang sat ngoai cong ( diem) --OPTION DAC BIET
{	{141},{		{1,20},		{20,50},	{20,80},	{20,100},	{20,130},	{20,150},	{40,170},	{50,180},	{80,200},	{90,200}}	},	--19-- bang sat noi cong ( diem) --OPTION DAC BIET
{	{122},{		{20,20},	{20,30},	{20,30},	{20,40},	{20,50},	{20,60},	{40,90},	{50,100},	{50,100},	{50,100}}	},	--20-- hoa sat ngoai cong ( diem) --OPTION DAC BIET
{	{142},{		{1,20},		{20,50},	{20,80},	{20,100},	{20,130},	{20,150},	{40,170},	{50,180},	{80,200},	{90,200}}	},	--21-- hoa sat noi cong noi cong ( diem) --OPTION DAC BIET
{	{124},{		{20,20},	{20,30},	{20,30},	{20,40},	{20,50},	{20,60},	{40,90},	{50,100},	{50,100},	{50,100}}	},	--22-- loi sat ngoai cong ( diem) --OPTION DAC BIET
{	{143},{		{1,20},		{20,50},	{20,80},	{20,100},	{20,130},	{20,150},	{40,170},	{50,180},	{80,200},	{90,200}}	},	--23-- loi sat noi cong noi cong ( diem) --OPTION DAC BIET
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
	{	{{1,2,3,4,6,10},{2,12}},
		{{1,2,3,4,6,10},{1,3,13}},
		{{1,2,3,4,6,10},{1,4,5,6}},
		{{1,2,3,4,6,10},{8,9}},	
		{{1,2,3,4,6,10},{1,11,10}}	
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
	{	{{1,2,3,4,5,6},{2,12}},
		{{1,2,3,4,5,6},{1,3,13}},
		{{1,2,3,4,5,6},{1,4,5,6}},
		{{1,2,3,4,5,6},{8,9}},	
		{{1,2,3,4,5,6},{1,11,10}}	
	},
--RING---
	{	{{1,2,3,4,6},{2,12}},
		{{1,2,3,4,6},{1,3,13}},
		{{1,2,3,4,6},{1,4,5,6}},
		{{1,2,3,4,6},{8,9}},	
		{{1,2,3,4,6},{1,11,10}}	
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


function CalCulator_Drop(NpcIndex,nGenre,nDetail,nParti,nLevel,nSeries,nLuck,nNumLine)
	local nIndex = 0;
	if nLuck > 0 then
		if (nLuck /10 >= 1) then
			nLuck = nLuck / 10;
		else 
			nLuck = 1;
		end
	else
		nLuck = 0;
	end
	
	-- nMin_Op2,nMax_Op2,nRandomAtriib_Op2=0,0,0;
	-- nMin_Op3,nMax_Op3,nRandomAtriib_Op3=0,0,0;
	-- nMin_Op4,nMax_Op4,nRandomAtriib_Op4=0,0,0;
	-- nMin_Op5,nMax_Op5,nRandomAtriib_Op5=0,0,0;
	-- nMin_Op6,nMax_Op6,nRandomAtriib_Op6=0,0,0;
	
	nMin_Op2 = 1; -- ti le ra dong xanh (10%+May Man)
	nMax_Op2 = 2;-- ti le ra dong xanh
	-- nMin_Op2 = nMin_Op2 + nLuck;
	
	-- if nMin_Op2 > nMax_Op2 then
		-- nMin_Op2 = nMax_Op2
	-- else
		-- nMin_Op2 = nMin_Op2
	-- end
	nRandomAtriib_Op2 = random(nMin_Op2,nMax_Op2) -- ti le ra dong xanh
	
	nMin_Op3 = 1; -- ti le ra dong xanh  (10%+May Man)
	nMax_Op3 = 2;-- ti le ra dong xanh
	-- nMin_Op3 = nMin_Op3 + nLuck;
	-- if nMin_Op3 > nMax_Op3 then
		-- nMin_Op3 = nMax_Op3
	-- else
		-- nMin_Op3 = nMin_Op3
	-- end
	nRandomAtriib_Op3 = random(nMin_Op3,nMax_Op3) -- ti le ra dong xanh
	
	nMin_Op4 = 1; -- ti le ra dong xanh  (10%+May Man)
	nMax_Op4 = 2;-- ti le ra dong xanh
	-- nMin_Op4 = nMin_Op4 + nLuck;
	-- if nMin_Op4 > nMax_Op4 then
		-- nMin_Op4 = nMax_Op4
	-- else
		-- nMin_Op4 = nMin_Op4
	-- end
	nRandomAtriib_Op4 = random(nMin_Op4,nMax_Op4) -- ti le ra dong xanh
	
	nMin_Op5 = 1; -- ti le ra dong xanh  (10%+May Man)
	nMax_Op5 = 2;-- ti le ra dong xanh
	-- nMin_Op5 = nMin_Op5 + nLuck;
	-- if nMin_Op5 > nMax_Op5 then
		-- nMin_Op5 = nMax_Op5
	-- else
		-- nMin_Op5 = nMin_Op5
	-- end
	nRandomAtriib_Op5 = random(nMin_Op5,nMax_Op5) -- ti le ra dong xanh
	
	nMin_Op6 = 1; -- ti le ra dong xanh  (10%+May Man)
	nMax_Op6 = 2;-- ti le ra dong xanh
	-- nMin_Op6 = nMin_Op6 + nLuck;
	-- if nMin_Op6 > nMax_Op6 then
		-- nMin_Op6 = nMax_Op6
	-- else
		-- nMin_Op6 = nMin_Op6
	-- end
	nRandomAtriib_Op6 = random(nMin_Op6,nMax_Op6) -- ti le ra dong xanh
	
---Check So dong truyen vao ----	
	-- nNumLine  = 6 la max
	if (nNumLine > 0) then
		 if (nNumLine == 2) then
			nRandomAtriib_Op2 = nMin_Op2;
		 elseif nNumLine == 3 then
			nRandomAtriib_Op2 = nMin_Op2;
			nRandomAtriib_Op3 = nMin_Op3;
		 elseif (nNumLine == 4) then
		 	nRandomAtriib_Op2 = nMin_Op2;
			nRandomAtriib_Op3 = nMin_Op3;
			nRandomAtriib_Op4 = nMin_Op4;
		 elseif (nNumLine == 5) then
		 	nRandomAtriib_Op2 = nMin_Op2;
			nRandomAtriib_Op3 = nMin_Op3;
			nRandomAtriib_Op4 = nMin_Op4;
			nRandomAtriib_Op5 = nMin_Op5;
		 elseif (nNumLine == 6) then
		 	nRandomAtriib_Op2 = nMin_Op2;
			nRandomAtriib_Op3 = nMin_Op3;
			nRandomAtriib_Op4 = nMin_Op4;
			nRandomAtriib_Op5 = nMin_Op5;
			nRandomAtriib_Op6 = nMin_Op6;
		else
		
		end
	end 
---END Check So dong truyen vao ----	
	local nSeries_Tab=0;
	local		type1 , value1_1, value1_3,
				type2 , value2_1, value2_3,
				type3 , value3_1, value3_3,
				type4 , value4_1, value4_3,
				type5 , value5_1, value5_3,
				type6 , value6_1, value6_3,
				type7 , value7_1, value7_3,
				type8 , value8_1, value8_3;
	
	local RanOption_Type1 ;
	local RanOption_Type3 ;
	local RanOption_Type5 ;
	local RanOption_Type7 ;
	
	local RanOption_Value2_1;
	local RanOption_Value4_1;
	local RanOption_Value6_1;
	local RanOption_Value8_1;
	
	local TAB_OP1={};
	local TAB_OP2={};
	local TAB_OP3={};
	local TAB_OP4={};
	local TAB_OP5={};
	local TAB_OP6={};	
	
	for i = 1,50 do
	RanOption_Type1 = random(1,getn(KindFiveElement[nGenre][nSeries+1][1])) 
	RanOption_Type3 = random(1,getn(KindFiveElement[nGenre][nSeries+1][1]))
	RanOption_Type5 = random(1,getn(KindFiveElement[nGenre][nSeries+1][1]))	
	RanOption_Type7 = random(1,getn(KindFiveElement[nGenre][nSeries+1][1]))
	
	RanOption_Type1 = KindFiveElement[nGenre][nSeries+1][1][RanOption_Type1]
	RanOption_Type3 = KindFiveElement[nGenre][nSeries+1][1][RanOption_Type3]
	RanOption_Type5 = KindFiveElement[nGenre][nSeries+1][1][RanOption_Type5]
	RanOption_Type7 = KindFiveElement[nGenre][nSeries+1][1][RanOption_Type7]
		
		if (RanOption_Type1 ~= RanOption_Type3) and (RanOption_Type3 ~= RanOption_Type5) and (RanOption_Type1 ~= RanOption_Type5) then
			for j = 1,50 do
				RanOption_Value2_1 = random(1,getn(KindFiveElement[nGenre][nSeries+1][2]))			
				RanOption_Value4_1 = random(1,getn(KindFiveElement[nGenre][nSeries+1][2]))				
				RanOption_Value6_1 = random(1,getn(KindFiveElement[nGenre][nSeries+1][2]))					
				RanOption_Value8_1 = random(1,getn(KindFiveElement[nGenre][nSeries+1][2]))
				
				RanOption_Value2_1 = KindFiveElement[nGenre][nSeries+1][2][RanOption_Value2_1]
				RanOption_Value4_1 = KindFiveElement[nGenre][nSeries+1][2][RanOption_Value4_1]
				RanOption_Value6_1 = KindFiveElement[nGenre][nSeries+1][2][RanOption_Value6_1]
				RanOption_Value8_1 = KindFiveElement[nGenre][nSeries+1][2][RanOption_Value8_1]

				--Block 3 option phuc hoi 
				if(RanOption_Type1 == 4) and (RanOption_Type3 == 5) and (RanOption_Type5 == 6)	then
					return
				elseif(RanOption_Type1 == 4) and (RanOption_Type3 == 6) and (RanOption_Type5 == 5)	then
					return	
				elseif (RanOption_Type1 == 5) and (RanOption_Type3 == 6) and (RanOption_Type5 == 4) then
					return
				elseif (RanOption_Type1 == 5) and (RanOption_Type3 == 4) and (RanOption_Type5 == 6) then
					return
				elseif (RanOption_Type1 == 6) and (RanOption_Type3 == 4) and (RanOption_Type5 == 5) then
					return
				elseif (RanOption_Type1 == 6) and (RanOption_Type3 == 5) and (RanOption_Type5 == 4) then
					return	
				end
				
				-- Item Lucky
				local LuckyRan = 0;
				Min_Lucky = 1;
				Max_Lucky = 10;
				Min_Lucky = Min_Lucky + nLuck;		
				if Min_Lucky > Max_Lucky then
					Min_Lucky = Max_Lucky
				else
					Min_Lucky = Min_Lucky
				end
				LuckyRan = random(Min_Lucky,Max_Lucky);
				if (RanOption_Value2_1 == 13) or (RanOption_Value4_1 == 13) or (RanOption_Value6_1 == 13) then
					if (LuckyRan > 2) then
					-- Msg2Player("Luck: "..LuckyRan.."");
					return
					end
				end
				
				--Option hut hit
				local nHSL,nHNL =0;
				Min_HSL = 1;
				Max_HSL = 10;
				Min_HSL = Min_HSL + nLuck;
				if Min_HSL > Max_HSL then
					Min_HSL = Max_HSL
				else
					Min_HSL = Min_HSL
				end		
				nHSL = random(Min_HSL,Max_HSL);
				
				Min_HNL = 1;
				Max_HNL = 10;
				Min_HNL = Min_HNL + nLuck;
				if Min_HNL > Max_HNL then
					Min_HNL = Max_HNL
				else
					Min_HNL = Min_HNL
				end
				nHNL = random(Min_HNL,Max_HNL);	
				
				if (RanOption_Type1 == 13) or (RanOption_Type3 == 13) or (RanOption_Type5 == 13) then				
					if (nHSL > Min_HSL) then
					return
					end
				end
				
				if (RanOption_Type1 == 14) or (RanOption_Type3 == 14) or (RanOption_Type5 == 14) then
					if (nHNL > Min_HNL) then
					return
					end
				end					
												
				if (getn(KindFiveElement[nGenre][nSeries+1][2]) < 3 ) then					
					if (RanOption_Value2_1 ~= RanOption_Value4_1) then
						nIndex = AddItem(0,0,nDetail,nParti,nLevel,nSeries,0);		
						--Check Option 9,11,12 Show - 5,8,10 hide						
						type1 =	KindOption_Show[RanOption_Type1][1][1]	
							if (RanOption_Type1 == 9) or (RanOption_Type1 == 12) then
							TAB_OP1 = {KindOption_Show[RanOption_Type1][2][nLevel][1],20,KindOption_Show[RanOption_Type1][2][nLevel][2]};
							value1_1 = TAB_OP1[random(1,getn(TAB_OP1))];
							elseif (RanOption_Type1 == 7) or (RanOption_Type1 == 11) or (RanOption_Type1 == 13) or (RanOption_Type1 == 14) or (RanOption_Type1 == 17) then
							value1_1 = random(KindOption_Show[RanOption_Type1][2][nLevel][1],KindOption_Show[RanOption_Type1][2][nLevel][2]);
							else
							value1_1 = random(KindOption_Show[RanOption_Type1][2][nLevel][1],KindOption_Show[RanOption_Type1][2][nLevel][2]);
								if (value1_1 + nLuck) > KindOption_Show[RanOption_Type1][2][nLevel][2] then
										value1_1 = KindOption_Show[RanOption_Type1][2][nLevel][2]
									else
										value1_1 = value1_1 + nLuck; -- tinh chi so + may man
								end
							end
						value1_3 = 0;	
						
						
						type2 =	KindOption_Hide[RanOption_Value2_1][1][1]
							if (RanOption_Value2_1 == 5)  or (RanOption_Value2_1 == 8) or (RanOption_Value2_1 == 10) then
							TAB_OP2 = {KindOption_Hide[RanOption_Value2_1][2][nLevel][1],30,KindOption_Hide[RanOption_Value2_1][2][nLevel][2]};
							value2_1 = TAB_OP2[random(1,getn(TAB_OP2))];
							elseif (RanOption_Value2_1 == 13) then
							value2_1 = random(KindOption_Hide[RanOption_Value2_1][2][nLevel][1],KindOption_Hide[RanOption_Value2_1][2][nLevel][2]);
							else
							value2_1 = random(KindOption_Hide[RanOption_Value2_1][2][nLevel][1],KindOption_Hide[RanOption_Value2_1][2][nLevel][2]);
								if (value2_1 + nLuck) > KindOption_Hide[RanOption_Value2_1][2][nLevel][2] then
										value2_1 = KindOption_Hide[RanOption_Value2_1][2][nLevel][2]
									else
										value2_1 = value2_1 + nLuck; -- tinh chi so + may man
								end
							end
							if (nRandomAtriib_Op2 > nMin_Op2) or (type1 == 0) then
								type2 = 0;
								value2_1 = 0;
							end
						value2_3 = 0;
						
						
						type3 = KindOption_Show[RanOption_Type3][1][1]
							if (RanOption_Type3 == 9)  or (RanOption_Type3 == 12) then
							TAB_OP3 = {KindOption_Show[RanOption_Type3][2][nLevel][1],20,KindOption_Show[RanOption_Type3][2][nLevel][2]};
							value3_1 = TAB_OP3[random(1,getn(TAB_OP3))];
							elseif (RanOption_Type3 == 7) or (RanOption_Type3 == 11) or (RanOption_Type3 == 13) or (RanOption_Type3 == 14) or (RanOption_Type3 == 17) then
							value3_1 = random(KindOption_Show[RanOption_Type3][2][nLevel][1],KindOption_Show[RanOption_Type3][2][nLevel][2]);
							else
							value3_1 = random(KindOption_Show[RanOption_Type3][2][nLevel][1],KindOption_Show[RanOption_Type3][2][nLevel][2]);
								if (value3_1 + nLuck) > KindOption_Show[RanOption_Type3][2][nLevel][2] then
										value3_1 = KindOption_Show[RanOption_Type3][2][nLevel][2]
									else
										value3_1 = value3_1 + nLuck;
								end
							end																				
							if (nRandomAtriib_Op3 > nMin_Op3) or (type2 == 0) then
								type3 = 0;
								value3_1 = 0;
							end							
						value3_3 = 0;
						
						type4 = KindOption_Hide[RanOption_Value4_1][1][1]
							if (RanOption_Value4_1 == 5)  or (RanOption_Value4_1 == 8) or (RanOption_Value4_1 == 10) then
							TAB_OP4 = {KindOption_Hide[RanOption_Value4_1][2][nLevel][1],30,KindOption_Hide[RanOption_Value4_1][2][nLevel][2]};
							value4_1 = TAB_OP4[random(1,getn(TAB_OP4))];
							elseif (RanOption_Value4_1 == 13) then
							value4_1 = random(KindOption_Hide[RanOption_Value4_1][2][nLevel][1],KindOption_Hide[RanOption_Value4_1][2][nLevel][2]);
							else
							value4_1 = random(KindOption_Hide[RanOption_Value4_1][2][nLevel][1],KindOption_Hide[RanOption_Value4_1][2][nLevel][2]);
								if (value4_1 + nLuck) > KindOption_Hide[RanOption_Value4_1][2][nLevel][2] then
										value4_1 = KindOption_Hide[RanOption_Value4_1][2][nLevel][2]
									else
										value4_1 = value4_1 + nLuck; -- tinh chi so + may man
								end
							end
							if (nLevel < 4) or (nRandomAtriib_Op4 > nMin_Op4) or (type3 == 0) then
								type4 = 0;
								value4_1 = 0;
							end		
						value4_3 = 0;
						
						type5 = KindOption_Show[RanOption_Type5][1][1]
							if (RanOption_Type5 == 9)  or (RanOption_Type5 == 12) then
							TAB_OP5 = {KindOption_Show[RanOption_Type5][2][nLevel][1],20,KindOption_Show[RanOption_Type5][2][nLevel][2]};
							value5_1 = TAB_OP5[random(1,getn(TAB_OP5))];
							elseif (RanOption_Type5 == 7) or (RanOption_Type5 == 11) or (RanOption_Type5 == 13) or (RanOption_Type5 == 14) or (RanOption_Type5 == 17) then
							value5_1 = random(KindOption_Show[RanOption_Type5][2][nLevel][1],KindOption_Show[RanOption_Type5][2][nLevel][2]);
							else
							value5_1 = random(KindOption_Show[RanOption_Type5][2][nLevel][1],KindOption_Show[RanOption_Type5][2][nLevel][2]);
							if (value5_1 + nLuck) > KindOption_Show[RanOption_Type5][2][nLevel][2] then
										value5_1 = KindOption_Show[RanOption_Type5][2][nLevel][2]
									else
										value5_1 = value5_1 + nLuck; -- tinh chi so + may man
								end
							end	
							if (nLevel < 5) or (nRandomAtriib_Op5 > nMin_Op5) or (type4 == 0) then
								type5 = 0;
								value5_1 = 0;
							end									
						value5_3 = 0;
						
							
						type6 , value6_1, value6_3,
						type7 , value7_1, value7_3,
						type8 , value8_1, value8_3
						=	0,0,0,
							0,0,0,
							0,0,0;
							local tab ={};
							SetMagicAttrib(nIndex,
							type1 , value1_1, value1_3,
							type2 , value2_1, value2_3,
							type3 , value3_1, value3_3,
							type4 , value4_1, value4_3,
							type5 , value5_1, value5_3,
							type6 , value6_1, value6_3,
							type7 , value7_1, value7_3,
							type8 , value8_1, value8_3
									);
						tab[1] = nIndex;
						-- AddItemID(tab[1]);											
						DropItem(NpcIndex,tab[1]);
						tab={};TAB_OP1={};TAB_OP2={};TAB_OP3={};TAB_OP4={};TAB_OP5={};TAB_OP6={};
					return
				end								
				
				else				
				
					-- Check the same magic
					if (RanOption_Value2_1 ~= RanOption_Value4_1)  and  (RanOption_Value2_1 ~= RanOption_Value6_1) and (RanOption_Value6_1 ~= RanOption_Value4_1) then
						nIndex = AddItem(0,0,nDetail,nParti,nLevel,nSeries,0);		
						--Check Option 9,11,12 Show - 5,8,10 hide
						type1 =	KindOption_Show[RanOption_Type1][1][1]	
							if (RanOption_Type1 == 9) or (RanOption_Type1 == 12) then
							TAB_OP1 = {KindOption_Show[RanOption_Type1][2][nLevel][1],20,KindOption_Show[RanOption_Type1][2][nLevel][2]};
							value1_1 = TAB_OP1[random(1,getn(TAB_OP1))];
							elseif (RanOption_Type1 == 7) or (RanOption_Type1 == 11) or (RanOption_Type1 == 13) or (RanOption_Type1 == 14) or (RanOption_Type1 == 17) then
							value1_1 = random(KindOption_Show[RanOption_Type1][2][nLevel][1],KindOption_Show[RanOption_Type1][2][nLevel][2]);
							else
							value1_1 = random(KindOption_Show[RanOption_Type1][2][nLevel][1],KindOption_Show[RanOption_Type1][2][nLevel][2]);
								if (value1_1 + nLuck) > KindOption_Show[RanOption_Type1][2][nLevel][2] then
										value1_1 = KindOption_Show[RanOption_Type1][2][nLevel][2]
									else
										value1_1 = value1_1 + nLuck; -- tinh chi so + may man
								end
							end
						value1_3 = 0;	
						
						
						type2 =	KindOption_Hide[RanOption_Value2_1][1][1]
							if (RanOption_Value2_1 == 5)  or (RanOption_Value2_1 == 8) or (RanOption_Value2_1 == 10) then
							TAB_OP2 = {KindOption_Hide[RanOption_Value2_1][2][nLevel][1],30,KindOption_Hide[RanOption_Value2_1][2][nLevel][2]};
							value2_1 = TAB_OP2[random(1,getn(TAB_OP2))];
							elseif (RanOption_Value2_1 == 13) then
							value2_1 = random(KindOption_Hide[RanOption_Value2_1][2][nLevel][1],KindOption_Hide[RanOption_Value2_1][2][nLevel][2]);
							else
							value2_1 = random(KindOption_Hide[RanOption_Value2_1][2][nLevel][1],KindOption_Hide[RanOption_Value2_1][2][nLevel][2]);
								if (value2_1 + nLuck) > KindOption_Hide[RanOption_Value2_1][2][nLevel][2] then
										value2_1 = KindOption_Hide[RanOption_Value2_1][2][nLevel][2]
									else
										value2_1 = value2_1 + nLuck; -- tinh chi so + may man
								end
							end
							if (nRandomAtriib_Op2 > nMin_Op2) or (type1 == 0) then
								type2 = 0;
								value2_1 = 0;
							end
						value2_3 = 0;
						
						
						type3 = KindOption_Show[RanOption_Type3][1][1]
							if (RanOption_Type3 == 9)  or (RanOption_Type3 == 12) then
							TAB_OP3 = {KindOption_Show[RanOption_Type3][2][nLevel][1],20,KindOption_Show[RanOption_Type3][2][nLevel][2]};
							value3_1 = TAB_OP3[random(1,getn(TAB_OP3))];
							elseif (RanOption_Type3 == 7) or (RanOption_Type3 == 11) or (RanOption_Type3 == 13) or (RanOption_Type3 == 14) or (RanOption_Type3 == 17) then
							value3_1 = random(KindOption_Show[RanOption_Type3][2][nLevel][1],KindOption_Show[RanOption_Type3][2][nLevel][2]);
							else
							value3_1 = random(KindOption_Show[RanOption_Type3][2][nLevel][1],KindOption_Show[RanOption_Type3][2][nLevel][2]);
								if (value3_1 + nLuck) > KindOption_Show[RanOption_Type3][2][nLevel][2] then
										value3_1 = KindOption_Show[RanOption_Type3][2][nLevel][2]
									else
										value3_1 = value3_1 + nLuck;
								end
							end																				
							if (nRandomAtriib_Op3 > nMin_Op3) or (type2 == 0) then
								type3 = 0;
								value3_1 = 0;
							end							
						value3_3 = 0;
						
						type4 = KindOption_Hide[RanOption_Value4_1][1][1]
							if (RanOption_Value4_1 == 5)  or (RanOption_Value4_1 == 8) or (RanOption_Value4_1 == 10) then
							TAB_OP4 = {KindOption_Hide[RanOption_Value4_1][2][nLevel][1],30,KindOption_Hide[RanOption_Value4_1][2][nLevel][2]};
							value4_1 = TAB_OP4[random(1,getn(TAB_OP4))];
							elseif (RanOption_Value4_1 == 13) then
							value4_1 = random(KindOption_Hide[RanOption_Value4_1][2][nLevel][1],KindOption_Hide[RanOption_Value4_1][2][nLevel][2]);
							else
							value4_1 = random(KindOption_Hide[RanOption_Value4_1][2][nLevel][1],KindOption_Hide[RanOption_Value4_1][2][nLevel][2]);
								if (value4_1 + nLuck) > KindOption_Hide[RanOption_Value4_1][2][nLevel][2] then
										value4_1 = KindOption_Hide[RanOption_Value4_1][2][nLevel][2]
									else
										value4_1 = value4_1 + nLuck; -- tinh chi so + may man
								end
							end
							if (nLevel < 4) or (nRandomAtriib_Op4 > nMin_Op4) or (type3 == 0) then
								type4 = 0;
								value4_1 = 0;
							end		
						value4_3 = 0;
						
						type5 = KindOption_Show[RanOption_Type5][1][1]
							if (RanOption_Type5 == 9)  or (RanOption_Type5 == 12) then
							TAB_OP5 = {KindOption_Show[RanOption_Type5][2][nLevel][1],20,KindOption_Show[RanOption_Type5][2][nLevel][2]};
							value5_1 = TAB_OP5[random(1,getn(TAB_OP5))];
							elseif (RanOption_Type5 == 7) or (RanOption_Type5 == 11) or (RanOption_Type5 == 13) or (RanOption_Type5 == 14) or (RanOption_Type5 == 17) then
							value5_1 = random(KindOption_Show[RanOption_Type5][2][nLevel][1],KindOption_Show[RanOption_Type5][2][nLevel][2]);
							else
							value5_1 = random(KindOption_Show[RanOption_Type5][2][nLevel][1],KindOption_Show[RanOption_Type5][2][nLevel][2]);
							if (value5_1 + nLuck) > KindOption_Show[RanOption_Type5][2][nLevel][2] then
										value5_1 = KindOption_Show[RanOption_Type5][2][nLevel][2]
									else
										value5_1 = value5_1 + nLuck; -- tinh chi so + may man
								end
							end	
							if (nLevel < 5) or (nRandomAtriib_Op5 > nMin_Op5) or (type4 == 0) then
								type5 = 0;
								value5_1 = 0;
							end									
						value5_3 = 0;
											
						type6 = KindOption_Hide[RanOption_Value6_1][1][1]
							if (RanOption_Value6_1 == 5)  or (RanOption_Value6_1 == 8) or (RanOption_Value6_1 == 10) then
							TAB_OP6 = {KindOption_Hide[RanOption_Value6_1][2][nLevel][1],30,KindOption_Hide[RanOption_Value6_1][2][nLevel][2]};
							value6_1 = TAB_OP6[random(1,getn(TAB_OP6))];
							elseif (RanOption_Value6_1 == 13) then
							value6_1 = random(KindOption_Hide[RanOption_Value6_1][2][nLevel][1],KindOption_Hide[RanOption_Value6_1][2][nLevel][2]);
							else
							value6_1 = random(KindOption_Hide[RanOption_Value6_1][2][nLevel][1],KindOption_Hide[RanOption_Value6_1][2][nLevel][2]);
								if (value6_1 + nLuck) > KindOption_Hide[RanOption_Value6_1][2][nLevel][2] then
										value6_1 = KindOption_Hide[RanOption_Value6_1][2][nLevel][2]
									else
										value6_1 = value6_1 + nLuck; -- tinh chi so + may man
								end
							end
							if (nLevel <= 6)  or (nRandomAtriib_Op6 > nMin_Op6) or (type5 == 0) then
								type6 = 0;
								value6_1 = 0;
							end	
						value6_3 = 0;
						
						type7 , value7_1, value7_3,
						type8 , value8_1, value8_3
						=	0,0,0,
							0,0,0,
							0,0,0;
							local tab ={};
							SetMagicAttrib(nIndex,
							type1 , value1_1, value1_3,
							type2 , value2_1, value2_3,
							type3 , value3_1, value3_3,
							type4 , value4_1, value4_3,
							type5 , value5_1, value5_3,
							type6 , value6_1, value6_3,
							type7 , value7_1, value7_3,
							type8 , value8_1, value8_3
									);
						tab[1] = nIndex;
						DropItem(NpcIndex,tab[1]);
						-- AddItemID(tab[1]);
						tab={};TAB_OP1={};TAB_OP2={};TAB_OP3={};TAB_OP4={};TAB_OP5={};TAB_OP6={};		
						return
					end							 				
				end
			end	
		return
		end
	end
	
end
