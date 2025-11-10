Include("\\script\\header\\revivepos_head.lua");
Include("\\script\\item\\checkmapid.lua");
Include("\\script\\header\\taskid.lua");
Include("\\script\\duatop.lua");
--Script Created by Ken Nguyen
--Than hanh phu`
SELECT_GO = "ThÇn hµnh phï, ®i ®Õn n¬i ng­¬i muèn."
SELECT_REVIVE = "ThiÕt ®Æt ®iÓm håi sinh cho lÇn sau sö dông thæ ®Þa phï."
SELECT_OUT = "Rêi khái/no"
SUCCESS = "ThiÕt ®Æt ®iÓm håi sinh t¹i %s thµnh c«ng."
PLACE_TOGO = "H·y lùa chän n¬i cÇn ®Õn"

RUONG_ARRAY=
{
{{1591,3170},{1571,3118},{1658,3156},{1545,3218},{1630,3260}},--phuong tuong
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

function useitem(nItemIndex)
        if (BAT_DAU == 0) then
		Talk(1,"","Ch­a tíi thêi gian xuÊt ph¸t.")
	return end
	if(CheckMapForTP() == 1) then
	Msg2Player("N¬i ®©y kh«ng thÓ sö dông thÇn hµnh phï!")
	return end;
	Say(10195,7,
	"ThiÕt ®Æt ®iÓm håi sinh ®Ó sö dông thæ ®Þa phï./diemphucsinh",
	"Sö dông thuËt thÇn hµnh ®i ®Õn n¬i chØ ®Þnh./chondiadiem",
	"§Õn r­¬ng chøa ®å /ruong",
	"§Õn hiÖu thuèc/hieuthuoc",
	"§Õn t¹p hãa/taphoa",
	"Quay l¹i n¬i cò /quaylai",
	SELECT_OUT
	)
end;

function quaylai()
	BackOldPlace()
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

function chondiadiem()
	Say(SELECT_GO,6,
	SELECT_OUT,
	"Thµnh thÞ /thanhthi",
	"Th«n trang/thon",
	"M«n ph¸i/monphai",
	"ChiÕn tr­êng Tèng Kim/tongkim",
	"B¶n ®å cÊp 90/bando"
	)
end;

function thanhthi()
	if (GetLevel() < 10) then
        Msg2Player("B¹n ph¶i ®¹t cÊp 10 míi cã thÓ ®i ®Õn Thµnh ThÞ ");
	return end; 
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
	local x,y = GetRevPos(THANH_ARRAY[nMoveAR][3][nSel][1],THANH_ARRAY[nMoveAR][1]);
	if(x ~= nil and x > 0) then
		if(NewWorld(THANH_ARRAY[nMoveAR][1],floor(x/32),floor(y/32)) == 1) then
		SetFightState(0)
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
	local x,y = GetRevPos(THON_ARRAY[nSel][3],THON_ARRAY[nSel][1]);
	if(x ~= nil and x > 0) then
		if(NewWorld(THON_ARRAY[nSel][1],floor(x/32),floor(y/32)) == 1) then
		SetFightState(0)
		end
	end;
end;

function monphai()
	if(1 == 1) then
	Talk(1,"","Chøc n¨ng t¹m thêi ch­a më!");
	return end
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
	local x,y = GetRevPos(MONPHAI_ARRAY[nSel][3],MONPHAI_ARRAY[nSel][1]);
	if(x ~= nil and x > 0) then
		if(NewWorld(MONPHAI_ARRAY[nSel][1],floor(x/32),floor(y/32))==1) then
		SetFightState(0)
		end
	end;
end;

-- function tongkim()
	-- Talk(1,"","Chøc n¨ng t¹m b¶o tr×, vui lßng quay l¹i sau!")
-- end;

function tongkim()
	Say(PLACE_TOGO,3,
	SELECT_OUT,
	"§iÓm b¸o danh bªn Tèng/ditong",
	"§iÓm b¸o danh bªn Kim/dikim"
	)
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
	if (GetLevel() < 70) then
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
	Say(SELECT_REVIVE,4,
	SELECT_OUT,
	"Thµnh thÞ /psthanhthi",
	"Th«n trang/psthon",
	"M«n ph¸i/psmonphai"
	)
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
	SetRevPos(THANH_ARRAY[nMoveAR][3][nSel][1],THANH_ARRAY[nMoveAR][1]);
	Talk(1,"", format(SUCCESS,THANH_ARRAY[nMoveAR][3][nSel][2]))
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
	SetRevPos(THON_ARRAY[nSel][3],THON_ARRAY[nSel][1]);
	Talk(1,"", format(SUCCESS,THON_ARRAY[nSel][2]))
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
	SetRevPos(MONPHAI_ARRAY[nSel][3],MONPHAI_ARRAY[nSel][1]);
	Talk(1,"", format(SUCCESS,MONPHAI_ARRAY[nSel][2]))
end;

function no()
end;
