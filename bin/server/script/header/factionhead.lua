Include("\\script\\header\\taskid.lua")
Include("\\script\\header\\map_helper.lua")
Include("\\script\\npckhac\\hoanhson\\doccokiem.lua");

FACTION_INFO = {
	{0, "shaolin", 1, 72, "Hoan nghªnh b¹n gia nhËp ThiÕu L©m, trë thµnh T¶o §Þa t¨ng! Häc ®­îc Hµng Long BÊt Vò, Kim Cang Phôc Ma ", "Gia NhËp ThiÕu L©m ph¸i, trë thµnh T¶o §Þa t¨ng"},
	{0, "tianwang", 3, 79, "Hoan nghªnh b¹n gia nhËp Thiªn V­¬ng bang! H·y khëi ®Çu tõ mét ng­êi ThÞ vÖ!", "Gia nhËp Thiªn V­¬ng Bang, trë thµnh ThÞ VÖ"},
	{1, "tangmen", 3, 76, "Hoan nghªnh b¹n gia nhËp §­êng m«, trë thµnh T¹p dÞch! Häc ®­îc vâ c«ng TÝch LÞch §¬n", "Gia nhËp §­êng M«n, trë thµnh T¹p dÞch"},
	{1, "wudu", 2, 80, "Hoan nghªnh b¹n Gia nhËp Ngò §éc gi¸o, trë thµnh Ngò §éc §ång Tö! Häc ®­îc §éc Sa Ch­ëng, HuyÕt §ao §éc S¸t.", "Gia nhËp Ngò §éc gi¸o, trë thµnh Ngò §éc §ång Tö"},
	{2, "emei", 1, 74, "Hoan nghªnh b¹n gia nhËp Nga Mi ph¸i, trë thµnh Bè Y Ni. Häc ®­îc NhÊt DiÖp Tri Thu, Phiªu TuyÕt Xuyªn V©n", "Gia nhËp Nga Mi Ph¸i, trë thµnh Bè Y Ni"},
	{2, "cuiyan", 3, 77, "Hoan nghªnh b¹n gia nhËp Thóy Yªn m«n! Trë thµnh Hoa Tú. Häc ®­îc Phong Hoa TuyÕt NguyÖt, Phong QuyÓn Tµn TuyÕt", "Gia nhËp Thóy Yªn m«n, trë thµnh Hoa Tú"},
	{3, "gaibang", 1, 78, "Hoan nghªnh b¹n gia nhËp C¸i bang, trë thµnh §Ö tö kh«ng tói! Häc ®­îc KiÕn Nh©n ThÇn Thñ, Diªn M«n Th¸c B¸t", "Gia nhËp C¸i bang, trë thµnh §Ö tö kh«ng tói"},
	{3, "tianren", 2, 81, "Hoan nghªnh b¹n gia nhËp Thiªn nhÉn gi¸o, Häc ®­îc Tµn D­¬ng Nh­ HuyÕt, §¬n ChØ LiÖt DiÖm", "Gia nhËp Thiªn nhÉn gi¸o."},
	{4, "wudang", 1, 73, "Hoan nghªn b¹n gia nhËp Vâ §ang ph¸i! H·y b¾t ®Çu tõ mét §¹o ®ång! Häc ®­îc vâ c«ng Né L«i ChØ, Th­¬ng h¶i Minh NguyÖt!", "Gia nhËp Vâ §ang ph¸i, trë thµnh §¹o ®ång"},
	{4, "kunlun", 3, 75, "Hoan nghªnh b¹n gia nhËp C«n L«n ph¸i! trë thµnh PhÊt trÇn ®Ö tö! Häc ®­îc H« Phong Ph¸p, Cuång L«i ChÊn §Þa", "Gia nhËp C«n L«n ph¸i, trë thµnh PhÊt TrÇn ®Ö tö"},
	{2, "huashan", 3, 89, "Hoan nghªnh b¹n gia nhËp Hoa S¬n ph¸i trë thµnh Th­ §ång! Häc ®­îc vâ c«ng B¹ch Hång Qu¸n NhËt, Thanh Phong Tèng S¶ng", "Gia nhËp Hoa S¬n ph¸i, trë thµnh Th­ §ång"},
}

function gianhapmonphai(newfac)
	local nCurFac = newfac+1;
if check_yes(FACTION_INFO[nCurFac][1]) == 1 then
	SetFaction(FACTION_INFO[nCurFac][2])
	SetCamp(FACTION_INFO[nCurFac][3])
	SetCurCamp(FACTION_INFO[nCurFac][3])
	SetRank(FACTION_INFO[nCurFac][4])
	hockynang(nCurFac)
	Msg2Player(FACTION_INFO[nCurFac][5])
	Msg2Faction(""..GetName().." tõ h«m nay gia nhËp "..GetFactionName()..", xin b¸i kiÕn c¸c vÞ huynh tû! Mong c¸c vÞ quan t©m chØ gi¸o!") 
end
end;

function xuatsu()
	SetCamp(4);
	SetCurCamp(4);
	LeaveTeam();
	SetTask(TASK_DUNGCHUNG2,SetNumber(1,GetTask(TASK_DUNGCHUNG2),9,1));
	Msg2Faction(""..GetFactionName().." "..GetName().." thµnh tµi xuÊt s­, b¸i biÖt ch­ vÞ ®ång m«n phiªu b¹t giang hå ") 
end;

function sr2name(series)
	local nSeries = 0;
	if (series==nil) then
		nSeries = GetSeries();
	else
		nSeries = series;
	end;
	if (nSeries == 0) then
		return "<color=Metal>hÖ Kim<color>";
	elseif (nSeries == 1) then
		return "<color=Wood>hÖ Méc<color>";
	elseif (nSeries == 2) then
		return "<color=Water>hÖ Thñy<color>";
	elseif (nSeries == 3) then
		return "<color=Fire>hÖ Háa<color>";
	elseif (nSeries == 4) then
		return "<color=Earth>hÖ Thæ<color>";
	else
		return "<color=White>V« HÖ<color>";
	end;
end

function trungphansumon()
	if GetTongFlag() > 0 then
		Talk(1,"", "Thµnh viªn Bang héi kh«ng thÓ trïng ph¶n s­ m«n")	
		return 0;
	end
	if GetCash()< 100000 then 
	    Talk(1,"", "§¹i HiÖp kh«ng mang ®ñ <color=yellow>10v<color> trªn ng­êi !")	
	return 0;
	end
	local nCurFac=GetFactionNo();
	if(nCurFac==-1) then return end;
	LeaveTeam();
	Pay(100000)
	SetCamp(FACTION_INFO[nCurFac+1][3]);
	SetCurCamp(FACTION_INFO[nCurFac+1][3]);
	SetTask(TASK_DUNGCHUNG2,SetNumber(1,GetTask(TASK_DUNGCHUNG2),9,0));
end;

function check_yes(series)			-- °´¼¼ÄÜÈ·¶¨ÈÎÎñ±äÁ¿µÄ¼ì²é¡£¡£¡£ÉÐÎ´ÏµÓ¦¸üÐ¢
	if (GetSeries() ~= series) then
		Talk(1,"","Ngò hµnh cña ng­¬i kh¸c ngò hµnh "..sr2name(series).." víi bän ta!  §Õn ®©y lµm g×? H·y lªn diÔn ®µn häc hái ®i!")
		return 0;
	end
	return 1;
end;

function hockynang(nCurFac)
	for i=1,getn(SKILLNORMAL[nCurFac]) do
    AddMagic(SKILLNORMAL[nCurFac][i][1],SKILLNORMAL[nCurFac][i][2])
	end
end;

function show_kynang90(nCurFac)
	local nTarFac = GetFactionNo()+1;
	if(nCurFac ~= nil) then
		nTarFac = nCurFac;
	end;
	local nskillcount = getn(SKILL90_ARRAY[nTarFac])
	if(GetLevel() < 80) then
		Talk(1,"",14576)
	return end
	local skilltab = {};
	local count = 1;
	for i=1,nskillcount do
		skilltab[count] = format(SKILL90_ARRAY[nTarFac][i][1].."/selskill(%d,%d)", i, nTarFac);
		count = count + 1;
	end
	if(count == 1) then
	return end
	skilltab[count] = "§ãng/no";
	Say("ChØ cã <color=yellow>1<color> lÇn duy nhÊt! \n§¹i HiÖp muèn chän kü n¨ng nµo:",count,skilltab);
end;

function show_kynang150(nCurFac)
	local nTarFac = GetFactionNo()+1;
	if(nCurFac ~= nil) then
		nTarFac = nCurFac;
	end;
	local nskillcount = getn(SKILL150_ARRAY[nTarFac])
	if(GetLevel() < 80) then
		Talk(1,"",14576)
	return end
	local skilltab = {};
	local count = 1;
	for i=1,nskillcount do
		skilltab[count] = format(SKILL150_ARRAY[nTarFac][i][1].."/selskill(%d,%d)", i, nTarFac);
		count = count + 1;
	end
	if(count == 1) then
	return end
	skilltab[count] = "§ãng/no";
	Say("Ng­¬i muèn häc kü n¨ng nµo:",count,skilltab);
	
end;

function selskill(sel, nCurFac)
	if(HaveMagic(SKILL90_ARRAY[nCurFac][sel][2]) ~= -1) then
			Talk(1,"",15467)
	return end
	if (GetTask(TASK_KYNANG9X)==1) then
			Talk(1,"","§¹i HiÖp ®· nhËn råi ! Kh«ng thÓ nhËn thªm !")
	return end
	SetTask(TASK_KYNANG9X, 1)
	AddMagic(SKILL90_ARRAY[nCurFac][sel][2],SKILL90_ARRAY[nCurFac][sel][3]);
	local str = "B¹n ®· häc ®­îc kü n¨ng "..SKILL90_ARRAY[nCurFac][sel][1];
	Msg2Player(str);
end;

function no()
end;

SKILLNORMAL = {
[1]={--thieu lam
	{14, 0},---Han Long Bat Vu
    {10	, 0}, --- Kim Cang Phuc Ma
    {4	, 0}, --- Thieu Lam Con Phap
    {6	, 0}, --- Thieu Lam Dao Phap
    {8	, 0}, --- Thieu Lam Quyen Phap
    {15	, 0}, --- Bat Dong Minh Vuong
    {16	, 0}, --- La Han Tran
    {20	, 0}, --- Su Tu Hong
    {271, 0}, --- Long Trao ho trao
    {11	, 0}, --- Hoanh Tao Luc Hop
    {19	, 0}, --- Ma Ha Vo Luong
    {21	, 0}, --- Dich Can Kinh
    {273, 0} --- Nhu Lai Thien Diep-Tran phai
},
[2]={--thien vuong
    {34, 0}, --- Kinh loi Tram
    {30, 0}, --- Hoi Phong Lac Nhan
    {29, 0}, --- Tram Long Quyet
    {24, 0}, --- Thien Vuong Dao phap
    {23, 0}, --- Thien Vuong Thuong phap
    {26, 0}, ---Thien Vuong Chuy phap
    {33, 0}, ---Tinh Tam Quyet
    {37, 0}, ---Bat Phong Tram
    {35, 0}, ---Duong Quang Tam Diep
    {31, 0}, ---Hang Van Quyet
    {40, 0}, ---Doan Hon Thich
    {42, 0}, ---Kim Chung Trao
    {32, 0}, --- Vo Tam Tram
    {41, 0}, --- Huyet Chien Bat Phuong
    {324, 0}, ---Thua Long Quyet
    {36	, 0} ---Thien Vuong Chien Y -Tran phai
},
[3]={--duong mon
    {45	, 0}, ---Phich Lich Don
    {347	, 0}, ---Dia Diem Hoa
    {43	, 0}, ---Duong Mon Am Khi
    {303	, 0}, ---Doc Thich Cot
    {50	, 0}, ---Truy Tam Tien
    {47	, 0}, ---Doat Hon Tieu
    {54	, 0}, ---Man Thien Hoa Vu
    {343	, 0}, ---Xuyen Tam Thich
    {345	, 0}, ---Han Bang Thich
    {349	, 0}, ---Loi Kich Thuat
    {249	, 0}, ---Tieu Ly Phi Dao
    {341	, 0}, ---Tan Hoa Tieu
    {58	, 0}, ---Thien La Dia Vong
    {48	, 0} ---Tam Nhan - tran phai
},
[4]={--ngu doc
    {63, 0}, ---Doc Sa Chuong
    {65, 0}, ---Huyet Dao Doc Sat
    {62, 0}, ---Ngu Doc Chuong Phap
    {60, 0}, ---Ngu Doc Dao phap
    {67, 0}, ---Cuu Thien Cuong Loi
    {70, 0}, ---Xich Diem Thuc Thien
    {66, 0}, ---Tap Nan Duoc kinh
    {68, 0}, ---U Minh Kho Lau
    {384,0}, ---Bach Doc Xuyen Tam
    {64	, 0}, ---Bang Lam Huyen Tinh
    {69	, 0}, ---Vo Hinh Doc
    {356, 0}, ---Xuyen Y Pha Giap
    {73	, 0}, ---Van Co Thuc Tam
    {72	, 0}, ---Xuyen Tam Doc Thich
    {71	, 0}, ---Thien Cuong Dia Sat
    {74	, 0}, ---Chu Cap Thanh Minh
    {75	, 0} ---Ngu Doc Ky Kinh - tran phai
},
[5]={--nga my
    {85, 0}, ---Nhat Diep Tri Thu
    {80, 0}, --- Phieu Tuyet Xuyen Van
    {77, 0}, ---Nga My Kiem Phap
    {79, 0}, ---Nga My Chuong Phap
    {93, 0}, ---Tu Hang Pho Do
    {385,0}, ---Thoi Song Vong Nguyet
    {82, 0}, ---Tu Tuong Dong Quy
    {89, 0}, ---Mong Diep
    {86, 0}, ---Luu Thuy
    {92, 0}, ---Phat Tam Tu Huu
    {88, 0}, --- Bat Diet Bat Tuyet
    {91, 0}, --- Phat Quang Pho Chieu
    {282,0}, ---Thanh Am Phan Xuong
    {252,0} ---Phat Phap Vo Bien - tran phai
},
[6]={--thuy yen
    {99	, 0}, -- Phong Hoa Tuyet Nguyet
    {102	, 0}, -- Phong Quyen Tan Tuyet
    {95	, 0}, -- Thuy Yen Dao Phap
    {97	, 0}, -- Thuy Yen Song Dao
    {269	, 0}, -- Bang Tam Trai Anh
    {105	, 0}, -- Vu Da Le Hoa
    {113	, 0}, -- Phu Van Tan Tuyet
    {100	, 0},	-- Ho The Han Bang
    {109	, 0}, -- Tuyet Anh
    {108	, 0},	-- Muc Da Luu Tinh
    {111	, 0}, -- Bich Hai Trieu Sinh
    {114	, 0} -- Bang Cot Tuyet Tam - tran phai
},
[7]={--cai bang
    {122,0}, ---Kien Nhan Than Thu
    {119,0}, ---Dieu mon Thac Bat
    {116,0}, ---Cai Bang Chuong Phap
    {115,0}, ---Cai Bang Bong Phap
    {129,0}, ---Hoa Hiem Vi Di
    {274,0}, ---Giang Long Chuong
    {124,0}, ---Da Cau Tran (Da cau bong phap)
    {277,0}, ---Hoat Bat Luu Thu
    {128,0}, ---Khang Long Huu Hoi
    {125,0}, ---Bong Da Ac Cau
    {360,0}, ---Tieu Dieu Cong
    {130,0} ---Tuy Diep Cuong Vu -tran phai
},
[8]={--thien nhan
    {135,0}, ---Tan Duong Nhu Huyet
    {145,0}, ---Don Chi Liet Diem
    {132,0}, ---Thien Nhan Mau Phap
	{131,0}, ---Thien Nhan Dao Phap
	{136,0}, ---Hoa lien Phan Hoa
	{137,0}, ---Ao Anh Phi Ho
	{141,0}, ---Liet Hoa Tinh Thien
	{138,0}, ---Thoi Son Dien Hai
	{140,0}, ---Phi Hong Vo Tich
	{364,0}, ---Bi To Thanh Phong
	{143,0}, ---Lich Ma Doat Hon
	{142,0}, ---Thau Thien Hoan Nhat
	{148,0}, ---Ma Diem That Sat
	{150,0} ---Thien Ma Giai The -tran phai
},
[9]={--vo dang
	{153,0}, ---No Loi Chi
	{155,0}, ---Thuong Hai Minh Nguyet
	{152,0}, ---Vo Dang Quyen Phap
	{151,0},---Vo Dang Kiem Phap
	{159,0},---That Tinh Tran
	{164,0},---Bac Cap Nhi Phuc
	{158,0},---Kiem Phi Kinh Thien
	{160,0},---The Van Tung
	{157,0},---Toa Vong Vo Nga
	{165,0},---Vo Nga Vo Kiem
	{267,0},---Tam Hoan Thao Nguyet
	{166,0}---Thai Cuc Than Cong - tran phai
},
[10]={--con lon
	{169,0}, ---Ho Phong Phap
	{179,0},---Cuong Loi Chan Dia
	{167,0},---Con Lon Dao Phap
	{168,0},---Con Lon Kiem Phap
	{392,0},---Thuc Phuoc Chu
	{171,0},---Thanh Phong Phu
	{174,0},---Ki Ban Phu
	{178,0},---Nhat Khi Tam Thanh
	{172,0},---Thien Te Tan Loi
	{393,0},---Bac Minh Dao Hai
	{173,0},---Thien Thanh Dia Troc
	{175,0},---Khi Han Ngao Tuyet
	{181,0},---Khi Tam Phu
	{176,0},---Cuong Phong Sau Dien
	{90,  0},---Me Tung Ao Anh
	{182,0},---Ngu Loi Chanh Phap
	{275,0},---Suong Ngao Con Luan - tran phai
	{630,0}---Huyen Thien Vo cuc
}
};

SKILL90_ARRAY={
[1]={
	{"§¹t Ma §é Giang",318,20},
	{"Hoµnh T¶o Thiªn Qu©n",319,20},
	{"V« T­íng Tr¶m",321,20}
},
[2]={
	{"Ph¸ Thiªn Tr¶m",322,20},
	{"Truy Tinh Trôc NguyÖt",323,20},
	{"Truy Phong QuyÕt",325,20}
},
[3]={
	{"NhiÕp Hån NguyÖt ¶nh",339,20},
	{"Cöu Cung Phi Tinh",342,20},
	{"B¹o Vò Lª Hoa",302,20},
	{"Lo¹n Hoµn KÝch",351,0}
},
[4]={
	{"¢m Phong Thùc Cèt",353,20},
	{"HuyÒn ¢m Tr¶m",355,20},
	{"§o¹n C©n Hñ Cèt",390,0}
},
[5]={
	{"Tam Nga TÒ TuyÕt",328,20},
	{"Phong S­¬ng To¸i ¶nh",380,20},
	{"Phæ §é Chóng Sinh",332,0}
},
[6]={
	{"B¨ng Tung V« ¶nh",336,20},
	{"B¨ng T©m Tiªn Tö",337,20}
},
[7]={
	{"Phi Long T¹i Thiªn",357,20},
	{"Thiªn H¹ V« CÈu",359,20}
},
[8]={
	{"V©n Long KÝch",361,20},
	{"Thiªn Ngo¹i L­u Tinh",362,20},
	{"NhiÕp Hån Lo¹n T©m",391,0}
},
[9]={
	{"Thiªn §Þa V« Cùc",365,20},
	{"Nh©n KiÕm Hîp NhÊt",368,20}
},
[10]={
	{"Ng¹o TuyÕt Tiªu Phong",372,20},
	{"L«i §éng Cöu Thiªn",375,20},
	{"Tóy Tiªn T¸ Cèt",394,0}
}
};

SKILL120AR=
{
	709,708,710,711,712,713,714,715,716,717
};

SKILL150_ARRAY={
[1]={
	{"§¹i Lùc Kim Cang Ch­ëng",1055,1},
	{"Vi §µ HiÕn Xö",1056,1},
	{"Tam Giíi Quy ThiÒn",1057,1}
},
[2]={
	{"Hµo Hïng Tr¶m",1058,1},
	{"Tung Hoµnh B¸t Hoang",1059,1},
	{"B¸ V­¬ng T¹m Kim",1060,1}
},
[3]={
	{"V« ¶nh Xuyªn",1069,1},
	{"ThiÕt Liªn Tø S¸t",1070,1},
	{"Cµn Kh«n NhÊt TrÞch",1071,1},
	{"TÝch LÞch Lo¹n Hoµn KÝch",1110,0}
},
[4]={
	{"H×nh Tiªu Cèt LËp",1066,1},
	{"U Hån PhÖ ¶nh",1067,1},
},
[5]={
	{"KiÕm Hoa V·n Tinh",1061,1},
	{"B¨ng Vò L¹c Tinh",1062,1},
},
[6]={
	{"B¨ng T­íc Ho¹t Kú",1063,1},
	{"B¨ng Ng­ng Hµn Yªn",1064,1}
},
[7]={
	{"Thêi Thõa Lôc Long",1073,1},
	{"Bæng Huýnh L­îc §Þa",1074,1}
},
[8]={
	{"Giang H¶i Né Lan",1075,1},
	{"TËt Háa LiÖu Nguyªn",1076,1},
},
[9]={
	{"T¹o Hãa Th¸i Thanh",1078,1},
	{"KiÕm Thïy Tinh Hµ",1079,1}
},
[10]={
	{"Cöu Thiªn C­¬ng Phong",1080,1},
	{"Thiªn L«i ChÊn Nh¹c",1081,1},
}
};

FACTION_PROP={
{35,25,25,15},
{20,35,20,25},
{25,25,25,25},
{30,20,30,20},
{20,15,25,40}
};

SERIES_BASE={
{16,204,100},
{77,103,100},
{77,153,100},
{41,213,100},
{163,76,100}
};


function del_all_skill()

DelMagic(14) ---Han Long Bat Vu
DelMagic(10) --- Kim Cang Phuc Ma
DelMagic(4) --- Thieu Lam Con Phap
DelMagic(6)--- Thieu Lam Dao Phap
DelMagic(8)--- Thieu Lam Quyen Phap
DelMagic(15	) --- Bat Dong Minh Vuong
DelMagic(16	) --- La Han Tran
DelMagic(20	) --- Su Tu Hong
DelMagic(271) --- Long Trao ho trao
DelMagic(11	) --- Hoanh Tao Luc Hop
DelMagic(19	) --- Ma Ha Vo Luong
DelMagic(21	) --- Dich Can Kinh
DelMagic(273) --- Nhu Lai Thien Diep-Tran phai
DelMagic(34) --- Kinh loi Tram
DelMagic(30) --- Hoi Phong Lac Nhan
DelMagic(29) --- Tram Long Quyet
DelMagic(24) --- Thien Vuong Dao phap
DelMagic(23) --- Thien Vuong Thuong phap
DelMagic(26) ---Thien Vuong Chuy phap
DelMagic(33) ---Tinh Tam Quyet
DelMagic(37) ---Bat Phong Tram
DelMagic(35) ---Duong Quang Tam Diep
DelMagic(31) ---Hang Van Quyet
DelMagic(40) ---Doan Hon Thich
DelMagic(42) ---Kim Chung Trao
DelMagic(32) --- Vo Tam Tram
DelMagic(41) --- Huyet Chien Bat Phuong
DelMagic(324) ---Thua Long Quyet
DelMagic(36	)---Thien Vuong Chien Y -Tran phai
DelMagic(45	) ---Phich Lich Don
DelMagic(347	) ---Dia Diem Hoa
DelMagic(43	) ---Duong Mon Am Khi
DelMagic(303	) ---Doc Thich Cot
DelMagic(50	) ---Truy Tam Tien
DelMagic(47	) ---Doat Hon Tieu
DelMagic(54	) ---Man Thien Hoa Vu
DelMagic(343	) ---Xuyen Tam Thich
DelMagic(345	) ---Han Bang Thich
DelMagic(349	) ---Loi Kich Thuat
DelMagic(249	) ---Tieu Ly Phi Dao
DelMagic(341	) ---Tan Hoa Tieu
DelMagic(58	) ---Thien La Dia Vong
DelMagic(48	)---Tam Nhan - tran phai
DelMagic(63) ---Doc Sa Chuong
DelMagic(65) ---Huyet Dao Doc Sat
DelMagic(62) ---Ngu Doc Chuong Phap
DelMagic(60) ---Ngu Doc Dao phap
DelMagic(67) ---Cuu Thien Cuong Loi
DelMagic(70) ---Xich Diem Thuc Thien
DelMagic(66) ---Tap Nan Duoc kinh
DelMagic(68) ---U Minh Kho Lau
DelMagic(384)--Bach Doc Xuyen Tam
DelMagic(64	) ---Bang Lam Huyen Tinh
DelMagic(69	) ---Vo Hinh Doc
DelMagic(356) ---Xuyen Y Pha Giap
DelMagic(73	) ---Van Co Thuc Tam
DelMagic(72	) ---Xuyen Tam Doc Thich
DelMagic(71	) ---Thien Cuong Dia Sat
DelMagic(74	) ---Chu Cap Thanh Minh
DelMagic(75	) ---Ngu Doc Ky Kinh - tran phai
DelMagic(85) ---Nhat Diep Tri Thu
DelMagic(80) --- Phieu Tuyet Xuyen Van
DelMagic(77) ---Nga My Kiem Phap
DelMagic(79) ---Nga My Chuong Phap
DelMagic(93) ---Tu Hang Pho Do
DelMagic(385)---Thoi Song Vong Nguyet
DelMagic(82) ---Tu Tuong Dong Quy
DelMagic(89) ---Mong Diep
DelMagic(86) ---Luu Thuy
DelMagic(92) ---Phat Tam Tu Huu
DelMagic(88) --- Bat Diet Bat Tuyet
DelMagic(91) --- Phat Quang Pho Chieu
DelMagic(282) ---Thanh Am Phan Xuong
DelMagic(252)---Phat Phap Vo Bien - tran phai
DelMagic(99	) -- Phong Hoa Tuyet Nguyet
DelMagic(102	) -- Phong Quyen Tan Tuyet
DelMagic(95	) -- Thuy Yen Dao Phap
DelMagic(97	) -- Thuy Yen Song Dao
DelMagic(269	) -- Bang Tam Trai Anh
DelMagic(105	) -- Vu Da Le Hoa
DelMagic(113	) -- Phu Van Tan Tuyet
DelMagic(100	)	-- Ho The Han Bang
DelMagic(109	) -- Tuyet Anh
DelMagic(108	)	-- Muc Da Luu Tinh
DelMagic(111	) -- Bich Hai Trieu Sinh
DelMagic(114	) -- Bang Cot Tuyet Tam - tran phai
DelMagic(122) ---Kien Nhan Than Thu
DelMagic(119) ---Dieu mon Thac Bat
DelMagic(116) ---Cai Bang Chuong Phap
DelMagic(115) ---Cai Bang Bong Phap
DelMagic(129) ---Hoa Hiem Vi Di
DelMagic(274) ---Giang Long Chuong
DelMagic(124) ---Da Cau Tran (Da cau bong phap)
DelMagic(277) ---Hoat Bat Luu Thu
DelMagic(128) ---Khang Long Huu Hoi
DelMagic(125) ---Bong Da Ac Cau
DelMagic(360) ---Tieu Dieu Cong
DelMagic(130) ---Tuy Diep Cuong Vu -tran phai
DelMagic(135) ---Tan Duong Nhu Huyet
DelMagic(145) ---Don Chi Liet Diem
DelMagic(132) ---Thien Nhan Mau Phap
DelMagic(131) ---Thien Nhan Dao Phap
DelMagic(136) ---Hoa lien Phan Hoa
DelMagic(137) ---Ao Anh Phi Ho
DelMagic(141) ---Liet Hoa Tinh Thien
DelMagic(138) ---Thoi Son Dien Hai
DelMagic(140) ---Phi Hong Vo Tich
DelMagic(364) ---Bi To Thanh Phong
DelMagic(143) ---Lich Ma Doat Hon
DelMagic(142) ---Thau Thien Hoan Nhat
DelMagic(148) ---Ma Diem That Sat
DelMagic(150) ---Thien Ma Giai The -tran phai
DelMagic(153) ---No Loi Chi
DelMagic(155) ---Thuong Hai Minh Nguyet
DelMagic(152) ---Vo Dang Quyen Phap
DelMagic(151)---Vo Dang Kiem Phap
DelMagic(159)---That Tinh Tran
DelMagic(164)---Bac Cap Nhi Phuc
DelMagic(158)---Kiem Phi Kinh Thien
DelMagic(160)---The Van Tung
DelMagic(157)---Toa Vong Vo Nga
DelMagic(165)---Vo Nga Vo Kiem
DelMagic(267)---Tam Hoan Thao Nguyet
DelMagic(166)---Thai Cuc Than Cong - tran phai
DelMagic(169) ---Ho Phong Phap
DelMagic(179)---Cuong Loi Chan Dia
DelMagic(167)---Con Lon Dao Phap
DelMagic(168)---Con Lon Kiem Phap
DelMagic(392)---Thuc Phuoc Chu
DelMagic(171)---Thanh Phong Phu
DelMagic(174)---Ki Ban Phu
DelMagic(178)---Nhat Khi Tam Thanh
DelMagic(172)---Thien Te Tan Loi
DelMagic(393)---Bac Minh Dao Hai
DelMagic(173)---Thien Thanh Dia Troc
DelMagic(175)---Khi Han Ngao Tuyet
DelMagic(181)---Khi Tam Phu
DelMagic(176)---Cuong Phong Sau Dien
DelMagic(90)---Me Tung Ao Anh
DelMagic(182)---Ngu Loi Chanh Phap
DelMagic(275)---Suong Ngao Con Luan - tran phai
DelMagic(630)---Huyen Thien Vo cuc
DelMagic(318)
DelMagic(319)
DelMagic(321)
DelMagic(322)
DelMagic(323)
DelMagic(325)
DelMagic(339)
DelMagic(342)
DelMagic(302)
DelMagic(351)
DelMagic(353)
DelMagic(355)
DelMagic(390)
DelMagic(328)
DelMagic(380)
DelMagic(332)
DelMagic(336)
DelMagic(337)
DelMagic(357)
DelMagic(359)
DelMagic(361)
DelMagic(362)
DelMagic(391)
DelMagic(365)
DelMagic(368)
DelMagic(372)
DelMagic(375)
DelMagic(394)

	DelMagic(709)
	DelMagic(708)
	DelMagic(710)
	DelMagic(711)
DelMagic(	712)
DelMagic(	713)
DelMagic(	714)
DelMagic(	715)
DelMagic(	716)
	DelMagic(717)
DelMagic(1055)
DelMagic(1056)
DelMagic(1057)
DelMagic(1058)
DelMagic(1059)
DelMagic(1060)
DelMagic(1069)
DelMagic(1070)
DelMagic(1071)
DelMagic(1110)
DelMagic(1066)
DelMagic(1067)
DelMagic(1061)
DelMagic(1062)
DelMagic(1063)
DelMagic(1064)
DelMagic(1073)
DelMagic(1074)
DelMagic(1075)
DelMagic(1076)
DelMagic(1078)
DelMagic(1079)
DelMagic(1080)
DelMagic(1081)



end