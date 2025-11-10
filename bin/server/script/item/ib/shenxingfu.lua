Include("\\script\\header\\revivepos_head.lua");
Include("\\script\\header\\taskid.lua");
Include("\\script\\header\\map_helper.lua");
Include("\\script\\header\\forbidmap.lua");
Include("\\script\\lib\\worldlibrary.lua");
Include("\\script\\header\\npcfile.lua")
Include("\\script\\header\\loidai.lua");
Include("\\script\\header\\factionhead.lua");
Include( "\\script\\global\\npcchucnang\\phantang.lua");

SELECT_GO = "ThÇn hµnh phï, ®i ®Õn n¬i ng­¬i muèn."
SELECT_REVIVE = "ThiÕt ®Æt ®iÓm håi sinh cho lÇn sau sö dông thæ ®Þa phï."
SELECT_OUT = "Rêi khái/no"
SUCCESS = "ThiÕt ®Æt ®iÓm håi sinh t¹i %s thµnh c«ng."
PLACE_TOGO = "H·y lùa chän n¬i cÇn ®Õn"
RUONG_ARRAY=
{
{{1592,3168},{1571,3118},{1658,3156},{1545,3218},{1630,3260}},--phuong tuong
{{3155,5075},{3185,5180},{3001,5104},{3052,4981},{3236,5028}},--thanh do
{{1576,3133},{1625,3151}},--dai ly
{{1722,3081},{1613,3013},{1694,3207},{1853,2955}},--bien kinh
{{1565,3219},{1576,3342},{1452,3262},{1481,3164},{1686,3235}},--tuong duong
{{1756,3006},{1661,2985},{1626,3176},{1709,3227},{1856,3032}},--duong chau
{{1573,2933},{1687,3277},{1391,3312}}--lam an
};

THUOC_ARRAY=
{
{1603,3193},--phuong tuong
{3140,5133},--thanh do
{1497,3209},--dai ly
{1776,3091},--bien kinh
{1610,3245},--tuong duong
{1775,3080},--duong chau
{1616,2978}--lam an
};

TAPHOA_ARRAY=
{
{1561,3205},--phuong tuong
{3094,5136},--thanh do
{1537,3203},--dai ly
{1786,3101},--bien kinh
{1629,3262},--tuong duong
{1701,3021},--duong chau
{1339,3167}--lam an
};

function no()
end;

function main(nIndex)
dofile("script/item/ib/shenxingfu.lua")
townportal_l()
end;

function townportal_l()
        if(GetFightState() == 1) then
	Talk(1,"",10196)
	return end
	if (GetTaskTemp(99) == 1 ) or ( SubWorldIdx2ID( SubWorld ) >= 387 and SubWorldIdx2ID( SubWorld ) <= 395)then
		Msg2Player("HiÖn t¹i ng­¬i kh«ng thÓ sö dông thÇn hµnh phï!");
		return 1
	end

	local nSubWorldID = GetWorldPos();
	if (nSubWorldID >= 375 and nSubWorldID <= 386) then
		Msg2Player("B¶n ®å hiÖn t¹i ng­¬i ®ang ®øng thuéc khu vùc ®Æc thï, kh«ng thÓ sö dông thÇn hµnh phï.");
		return 1
	end

	if (nSubWorldID >= 416 and nSubWorldID <= 511) then
		Msg2Player("B¶n ®å hiÖn t¹i ng­¬i ®ang ®øng thuéc khu vùc ®Æc thï, kh«ng thÓ sö dông thÇn hµnh phï.");
		return 1
	end

	if (nSubWorldID == 44 or nSubWorldID == 197 or nSubWorldID == 208 or nSubWorldID == 209 or nSubWorldID == 210 or nSubWorldID == 211 or nSubWorldID == 212 or (nSubWorldID >= 213 and nSubWorldID <= 223)	or nSubWorldID == 336 or nSubWorldID == 341 or nSubWorldID == 342	or nSubWorldID == 175	or nSubWorldID == 337	or nSubWorldID == 338	or nSubWorldID == 339 or ( nSubWorldID >= 387 and  nSubWorldID <= 395 ) )then
		Msg2Player("B¶n ®å hiÖn t¹i ng­¬i ®ang ®øng thuéc khu vùc ®Æc thï, kh«ng thÓ sö dông thÇn hµnh phï.");
		return 1
	end;

	if (CheckAllMaps(nSubWorldID) == 1) then
		Msg2Player("B¶n ®å hiÖn t¹i ng­¬i ®ang ®øng thuéc khu vùc ®Æc thï, kh«ng thÓ sö dông thÇn q phï.");
		return 1
	end;

	if (GetLevel() < 10) then
		Say("Ng­êi ch¬i ph¶i ®¹t ®¼ng cÊp 10 trë lªn míi cã thÓ sö dông thÇn hµnh phï.", 0);
		return 1
	end;
	Say(10195,8,
	"Céng §iÓm Nhanh/congdiemnhanh",
	"ThiÕt ®Æt ®iÓm håi sinh/diemphucsinh",
	"Chän n¬i muèn ®Õn/chondiadiem",
	"Quay l¹i ®Þa ®iÓm cò/diadiemcu",
	"§Õn r­¬ng chøa ®å /ruong",
	"§Õn hiÖu thuèc/hieuthuoc",
	"§Õn t¹p hãa/taphoa",
	"Tho¸t/no")
end

function congdiemnhanh()
	Say("Ng­¬i muèn t¨ng ®iÓm lo¹i nµo?",5,"Søc m¹nh/sucmanh","Th©n ph¸p/thanphap","Sinh khÝ /sinhkhi","Néi c«ng/noicong","Tho¸t/no")
end;
--------------------------------------------------
function sucmanh()
	local count = 1;
	local StrTab = {};

	for i=1,getn(TIEMNAMG_ARRAY) do
		StrTab[count] = TIEMNAMG_ARRAY[i].." ®iÓm".. "/selsucmanh";
		count = count + 1;
	end

	if(count == 1) then
	return end

	StrTab[count] = "Quay l¹i/congdiemnhanh";
	Say("Ng­¬i muèn céng thªm søc m¹nh bao nhiªu?",count,StrTab)
end;

function selsucmanh(sel)
	local nSel = sel +1;
	local n = GetRestAP()
	if n == 0 then Talk(1,"",ALL_POINT_NO_LONGER); return end
	if n < TIEMNAMG_ARRAY[nSel] then
	AddStrg(n); congdiemnhanh();
	return end
	AddStrg(TIEMNAMG_ARRAY[nSel]); congdiemnhanh();
end;

function thanphap()
local count = 1;
	local StrTab = {};

	for i=1,getn(TIEMNAMG_ARRAY) do
		StrTab[count] = TIEMNAMG_ARRAY[i].." ®iÓm".. "/selthanphap";
		count = count + 1;
	end

	if(count == 1) then
	return end

	StrTab[count] = "Quay l¹i/congdiemnhanh";
	Say("Ng­¬i muèn céng thªm th©n ph¸p bao nhiªu?",count,StrTab)
end;

function selthanphap(sel)
	local nSel = sel +1;
	local n = GetRestAP()
	if n == 0 then Talk(1,"",ALL_POINT_NO_LONGER); return end
	if n < TIEMNAMG_ARRAY[nSel] then
	AddDex(n); congdiemnhanh();
	return end
	AddDex(TIEMNAMG_ARRAY[nSel]); congdiemnhanh();
end;

function sinhkhi()
local count = 1;
	local StrTab = {};

	for i=1,getn(TIEMNAMG_ARRAY) do
		StrTab[count] = TIEMNAMG_ARRAY[i].." ®iÓm".. "/selsinhkhi";
		count = count + 1;
	end

	if(count == 1) then
	return end

	StrTab[count] = "Quay l¹i/congdiemnhanh";
	Say("Ng­¬i muèn céng thªm sinh khÝ bao nhiªu?",count,StrTab)
end;

function selsinhkhi(sel)
	local nSel = sel +1;
	local n = GetRestAP()
	if n == 0 then Talk(1,"",ALL_POINT_NO_LONGER); return end
	if n < TIEMNAMG_ARRAY[nSel] then
	AddVit(n); congdiemnhanh();
	return end
	AddVit(TIEMNAMG_ARRAY[nSel]); congdiemnhanh();
end;

function noicong()
local count = 1;
	local StrTab = {};

	for i=1,getn(TIEMNAMG_ARRAY) do
		StrTab[count] = TIEMNAMG_ARRAY[i].." ®iÓm".. "/selnoicong";
		count = count + 1;
	end

	if(count == 1) then
	return end

	StrTab[count] = "Quay l¹i/congdiemnhanh";
	Say("Ng­¬i muèn céng thªm néi c«ng bao nhiªu?",count,StrTab)
end;

function selnoicong(sel)
	local nSel = sel +1;
	local n = GetRestAP()
	if n == 0 then Talk(1,"",ALL_POINT_NO_LONGER); return end
	if n < TIEMNAMG_ARRAY[nSel] then
	AddEng(n); congdiemnhanh();
	return end
	AddEng(TIEMNAMG_ARRAY[nSel]); congdiemnhanh();
end;

function no()
end;
----------------------------------------------------------ket thuc--------------------------




function chondiadiem()
	Say(SELECT_GO,6,
	"Thµnh thÞ /thanhthi",
	"Th«n trang/thon",
	"M«n ph¸i/monphai",
	"ChiÕn tr­êng Tèng Kim/tongkim",
	"B¶n ®å luyÖn c«ng 9x/bando",
               SELECT_OUT)
end;

function diadiemcu()
	if (ReturnFromPortal() <= 0) then
		Talk(1,"","B¹n kh«ng cã ®iÓm l­u täa ®é ®Ó quay l¹i");
	end
end;

function ruong()
	if(GetFightState() == 1) then
	Talk(1,"",10196)
	return end
	local w,x,y = GetWorldPos();
	local nRand;
	if(w == 1) then --phuong tuong
		nRand = random(1,getn(RUONG_ARRAY[1]));
		SetPos(RUONG_ARRAY[1][nRand][1],RUONG_ARRAY[1][nRand][2]);
	elseif(w == 11) then	--thanh do
		nRand = random(1,getn(RUONG_ARRAY[2]));
		SetPos(RUONG_ARRAY[2][nRand][1],RUONG_ARRAY[2][nRand][2]);
	elseif(w == 162) then	--dai ly
		nRand = random(1,getn(RUONG_ARRAY[3]));
		SetPos(RUONG_ARRAY[3][nRand][1],RUONG_ARRAY[3][nRand][2]);
	elseif(w == 37) then	--bien kinh
		nRand = random(1,getn(RUONG_ARRAY[4]));
		SetPos(RUONG_ARRAY[4][nRand][1],RUONG_ARRAY[4][nRand][2]);
	elseif(w == 78) then	--tuong duong
		nRand = random(1,getn(RUONG_ARRAY[5]));
		SetPos(RUONG_ARRAY[5][nRand][1],RUONG_ARRAY[5][nRand][2]);
	elseif(w == 80) then	--duong chau
		nRand = random(1,getn(RUONG_ARRAY[6]));
		SetPos(RUONG_ARRAY[6][nRand][1],RUONG_ARRAY[6][nRand][2]);
	elseif(w == 176) then	--lam an
		nRand = random(1,getn(RUONG_ARRAY[7]));
		SetPos(RUONG_ARRAY[7][nRand][1],RUONG_ARRAY[7][nRand][2]);
	else
	Talk(1,"",10196)
	return end
end;

function hieuthuoc()
	if(GetFightState() == 1) then
	Talk(1,"",10196)
	return end
	local w,x,y = GetWorldPos();
	if(w == 1) then --phuong tuong
		SetPos(THUOC_ARRAY[1][1],THUOC_ARRAY[1][2]);
	elseif(w == 11) then	--thanh do
		SetPos(THUOC_ARRAY[2][1],THUOC_ARRAY[2][2]);
	elseif(w == 162) then	--dai ly
		SetPos(THUOC_ARRAY[3][1],THUOC_ARRAY[3][2]);
	elseif(w == 37) then	--bien kinh
		SetPos(THUOC_ARRAY[4][1],THUOC_ARRAY[4][2]);
	elseif(w == 78) then	--tuong duong
		SetPos(THUOC_ARRAY[5][1],THUOC_ARRAY[5][2]);
	elseif(w == 80) then	--duong chau
		SetPos(THUOC_ARRAY[6][1],THUOC_ARRAY[6][2]);
	elseif(w == 176) then	--lam an
		SetPos(THUOC_ARRAY[7][1],THUOC_ARRAY[7][2]);
	else
	Talk(1,"",10196)
	return end
end;

function taphoa()
	if(GetFightState() == 1) then
	Talk(1,"",10196)
	return end
	local w,x,y = GetWorldPos();
	if(w == 1) then --phuong tuong
		SetPos(TAPHOA_ARRAY[1][1],TAPHOA_ARRAY[1][2]);
	elseif(w == 11) then	--thanh do
		SetPos(TAPHOA_ARRAY[2][1],TAPHOA_ARRAY[2][2]);
	elseif(w == 162) then	--dai ly
		SetPos(TAPHOA_ARRAY[3][1],TAPHOA_ARRAY[3][2]);
	elseif(w == 37) then	--bien kinh
		SetPos(TAPHOA_ARRAY[4][1],TAPHOA_ARRAY[4][2]);
	elseif(w == 78) then	--tuong duong
		SetPos(TAPHOA_ARRAY[5][1],TAPHOA_ARRAY[5][2]);
	elseif(w == 80) then	--duong chau
		SetPos(TAPHOA_ARRAY[6][1],TAPHOA_ARRAY[6][2]);
	elseif(w == 176) then	--lam an
		SetPos(TAPHOA_ARRAY[7][1],TAPHOA_ARRAY[7][2]);
	else
	Talk(1,"",10196)
	return end
end;

function thanhthi()
	local count = 1;
	local CityTab = {};

	for i=1,getn(THANH_ARRAY) do
		CityTab[count] = THANH_ARRAY[i][2] .."/chonthanh";
		count = count + 1;
	end
	if(count == 1) then
	return end;
	CityTab[count] = SELECT_OUT;
	Say(SELECT_GO,count,CityTab)
end;

function chonthanh(nNo)
	local nSel = nNo + 1;
	local count = 1;
	local CityPosTab = {};
	SetTaskTemp(SEL_MOVEARRAY,nSel);
	for i=1,getn(THANH_ARRAY[nSel][3]) do
		CityPosTab[count] = THANH_ARRAY[nSel][3][i][2] .."/posthanh";
		count = count + 1;
	end
	if(count == 1) then
	return end
	CityPosTab[count] = SELECT_OUT;
	Say(SELECT_GO,count,CityPosTab);
end;

function posthanh(nNo)
	local nSel = nNo + 1;
	local nMoveAR = GetTaskTemp(SEL_MOVEARRAY);
	local w,x,y = Rev2Pos(THANH_ARRAY[nMoveAR][1],THANH_ARRAY[nMoveAR][3][nSel][1]);
	if(x ~= nil and x > 0) then
		if(NewWorld(w,floor(x/32),floor(y/32)) == 1) then
		SetFightState(0)
		Msg2Player("Xin h·y ngåi yªn, chóng ta ®i "..THANH_ARRAY[nMoveAR][3][nSel][2].." nµo!");
		end
	end;
end;

function thon()
local count = 1;
	local CityTab = {};
	for i=1,getn(THON_ARRAY) do
		CityTab[count] = THON_ARRAY[i][2] .."/chonthon";
		count = count + 1;
	end
	if(count == 1) then
	return end
	CityTab[count] = SELECT_OUT;
	Say(SELECT_GO,count,CityTab)
end;

function chonthon(nNo)
	local nSel = nNo + 1
	local w,x,y = Rev2Pos(THON_ARRAY[nSel][1],THON_ARRAY[nSel][3]);
	if(x ~= nil and x > 0) then
		if(NewWorld(w,floor(x/32),floor(y/32)) == 1) then
		SetFightState(0)
		Msg2Player("Xin h·y ngåi yªn, chóng ta ®i "..THON_ARRAY[nSel][2].." nµo!");
		end
	end;
end;

function monphai()
	--if(1 == 1) then
	--Talk(1,"","Chøc n¨ng t¹m thêi ch­a më!");
	--return end
	local count = 1;
	local CityTab = {};

	for i=1,getn(MONPHAI_ARRAY) do
		CityTab[count] = MONPHAI_ARRAY[i][2] .."/chonmonphai";
		count = count + 1;
	end
	if(count == 1) then
	return end
	CityTab[count] = SELECT_OUT;
	Say(SELECT_GO,count,CityTab)
end;

function chonmonphai(nNo)
	local nSel = nNo +1;
	local w,x,y = Rev2Pos(MONPHAI_ARRAY[nSel][1],MONPHAI_ARRAY[nSel][3]);
	if(x ~= nil and x > 0) then
		if(NewWorld(w,floor(x/32),floor(y/32))==1) then
		SetFightState(0)
		end
	end;
end;

function tongkim()
	Say(PLACE_TOGO,3,
	"§iÓm b¸o danh bªn Tèng/ditong",
	"§iÓm b¸o danh bªn Kim/dikim",
	SELECT_OUT)
end;

function ditong()
	if(NewWorld(325,1539,3186) == 1) then
		SetFightState(0)
	end
end;

function dikim()
	if(NewWorld(325,1581,3093) == 1) then
		SetFightState(0)
	end
end;

function bando()
	if (GetLevel() < 90) then
          Msg2Player("B¹n ch­a ®ñ ®¼ng cÊp ®i ®Õn n¬i luyÖn c«ng cÊp cao");
	return end;
	local count = 1;
	local CityTab = {};

	for i=1,getn(PLACES_ARRAY) do
		CityTab[count] = GetWayPointName(PLACES_ARRAY[i]).."/chonbando";
		count = count + 1;
	end
	if(count == 1) then
	return end
	CityTab[count] = SELECT_OUT;
	Say(PLACE_TOGO,count,CityTab)
end;

function chonbando(nNo)
	local nSel = nNo + 1;
	local w,x,y = GetWayPointPos(PLACES_ARRAY[nSel]);
	if(NewWorld(w,x,y) == 1) then
		SetFightState(1)
	end;
end;

function diemphucsinh()
	Say(SELECT_REVIVE,3,
	"Thµnh thÞ /psthanhthi",
	"Th«n trang/psthon",
	 SELECT_OUT)
end;

function psthanhthi()
	local count = 1;
	local CityTab = {};

	for i=1,getn(THANH_ARRAY) do
		CityTab[count] = THANH_ARRAY[i][2] .."/pschonthanh";
		count = count + 1;
	end
	if(count == 1) then
	return end
	CityTab[count] = SELECT_OUT;
	Say(SELECT_REVIVE,count,CityTab)
end;

function pschonthanh(nNo)
	local nSel = nNo + 1;
	local count = 1;
	local CityPosTab = {};
	SetTaskTemp(SEL_MOVEARRAY,nSel);
	for i=1,getn(THANH_ARRAY[nSel][3]) do
		CityPosTab[count] = THANH_ARRAY[nSel][3][i][2] .."/psposthanh";
		count = count + 1;
	end
	if(count == 1) then
	return end
	CityPosTab[count] = SELECT_OUT;
	Say(SELECT_REVIVE,count,CityPosTab)
end;

function psposthanh(nNo)
	local nSel = nNo + 1;
	local nMoveAR = GetTaskTemp(SEL_MOVEARRAY);
	SetRevPos(THANH_ARRAY[nMoveAR][1],THANH_ARRAY[nMoveAR][3][nSel][1]);
	Msg2Player(format(SUCCESS,THANH_ARRAY[nMoveAR][3][nSel][2]))
end;

function psthon()
local count = 1;
	local CityTab = {};
	for i=1,getn(THON_ARRAY) do
		CityTab[count] = THON_ARRAY[i][2] .."/pschonthon";
		count = count + 1;
	end
	if(count == 1) then
	return end
	CityTab[count] = SELECT_OUT;
	Say(SELECT_REVIVE,count,CityTab)
end;

function pschonthon(nNo)
	local nSel = nNo + 1;
	SetRevPos(THON_ARRAY[nSel][1],THON_ARRAY[nSel][3]);
	Msg2Player(format(SUCCESS,THON_ARRAY[nSel][2]))
end;

function psmonphai()
	if(1 == 1) then
	Talk(1,"","Chøc n¨ng t¹m thêi ch­a më!");
	return end
	local count = 1;
	local CityTab = {};

	for i=1,getn(MONPHAI_ARRAY) do
		CityTab[count] = MONPHAI_ARRAY[i][2] .."/pschonmonphai";
		count = count + 1;
	end
	if(count == 1) then
	return end
	CityTab[count] = SELECT_OUT;
	Say(SELECT_REVIVE,count,CityTab)
end;

function pschonmonphai(nNo)
	local nSel = nNo + 1;
	SetRevPos(MONPHAI_ARRAY[nSel][1],MONPHAI_ARRAY[nSel][3]);
	Talk(1,"", format(SUCCESS,MONPHAI_ARRAY[nSel][2]))
end;
