---------------------------------- Lçi Server -------------------------------------
--[] §ang trong tr¹ng th¸i Auto ingame, nÕu më thÇn hµnh phï hoÆc bÊt cø lÖnh nµo cã liªn quan ®Õn Script 
--		lóc Npc chÕt sÏ gÆp lçi kh«ng t×m thÊy biÕn, kiÓu nh­ script quy ®Þnh npc lóc chÕt ®· bÞ ®æi sang
--		file scirpt võa míi ®­îc gäi ®ã, lçi nµy hiÖn chØ test trªn 1 nh©n vËt ®ang online, nÕu tr­êng hîp
--		server online 1000 nh©n vËt vµ cïng lóc më thÇn hµnh phï th× ch­a ®­îc diÖn kiÕn, theo ph¸n ®o¸n c¸ nh©n
--		cã thÓ lµ toµn bé npc bÞ ®¸nh h¹ lóc ®ã cã thÓ sÏ kh«ng nhËn ®­îc exp, logs gamesv trë lªn qu¸ t¶i ^^

--[] Lçi kh«ng thÓ kÕt nèi ®Õn m¸y chñ tr­íc khi tiÕn tíi ®¨ng nhËp game, thêi gian x¶y ra lçi khi online m¸y chñ
--		kho¶ng 9-10 giê, lóc nh©n vËt ®ang trong m¸y chñ th× kh«ng sao, tho¸t ra lµ kh«ng thÓ kÕt nèi ®Õn m¸y chñ, 
--		bªn m¸y chñ kh«ng cã biÓu hiÖn bÊt th­êng.
---------------------------------- Lçi Server -------------------------------------
-- 0 La Mo NPC -- 1 la Tat NPC
Dat_gOpenGame = {
	OpenDuaTOP				=		0, -- NÕu Open ®ua top GM ph¶i tù ch¹y hµm AddNPC ng­îc l¹i Lóc khëi ®éng Script tù ch¹y hµm nµy
	---------------------------------------------------------------------------------
	OpenTestGame			=		1, -- Më chøc n¨ng test game vµ add NPC test game ë Ba l¨ng huyÖn
	---------------------------------------------------------------------------------
}

Dat_gServer = {
	ExpRate = 3,
		-- SetExp cho c¸c Npc Toµn m¸y chñ vµ c¸c ho¹t ®éng nhËn ®­îc Exp, ch­a tÝnh c¸c tÝnh n¨ng nh­ Tiªn th¶o lé vµ ho¹t ®éng x2, x3 Exp kh¸c
		-- ExpRate = 1 ExpNPC{10x - 9x: 3000, 8x: 2600, 7x: 2200, 6x: 1800, 5x: 1400, 4x: 1000, 3x: 600, 2x: 200, 1x: 100, 0x: 50}
		-- Normal Npc Exp  = ExpRate*ExpNPC --||-- if ExpRate = 2 then Normal Npc Exp = 6000
		-- Golden Npc Exp  = ExpRate*ExpNPC*4 --||-- if ExpRate = 2 then Normal Npc Exp = 24000
	MoneyRate = 1,
		-- Set Drop Money cho c¸c Npc training toµn m¸y chñ, ch­a tÝnh c¸c ho¹t ®éng nhËn ®­îc x2, x3 money kh¸c
		-- MoneyRate = 1 DropNpc{9x: 500}
		-- Npc DropMoney  = MoneyRate*DropNpc --||-- if MoneyRate = 2 then DropNpc 9x = 1600
}

-- 1 la chay hoat dong -- 0 la tat
Dat_gNpcConfig = {
	LongNgu						=		0, -- Long ngò
	CongThanhQuan			=		0, -- C«ng thµnh quan
	NhipThiTran				=		1, -- NhÝp thÝ trÇn
	ThanBiThuongNhan	=		1, -- ThÇn bÝ th­¬ng nh©n
	DaTau							=		1, -- D· tÈu
	DichQuan					=		1, -- DÞch quan
	BdTongKim					=		1, -- B¸o danh tèng kim
	SuGiaLdKietXuat		=		1, -- Sø gi¶ liªn ®Êu kiÖt xuÊt
	DaiHoiAnhHung		=		1, -- §¹i Héi Anh Hïng
	VanTieu		=		0, -- Van Tieu
}

Dat_gDropConfig = {
	KyTranDiBao			= 		1, -- Kú tr©n dÞ b¶o: Thñy tinh, c¸c lo¹i kh¸c
}
























