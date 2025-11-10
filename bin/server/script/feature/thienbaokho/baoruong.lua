Include("\\script\\header\\taskid.lua");
Include("\\script\\library\\worldlibrary.lua");

MAP_RETURN={
{1  ,1569,3124},
{11 ,3022,5090},
{162,1676,3124},
{37 ,1602,3009},
{78 ,1580,3369},
{80 ,1670,2997},
{176,1594,2933}
};

function main(NpcIndex)
	local nTask = GetTaskTemp(NVTHIENBAOKHO);
	local nNext = GetNumber(2, nTask, 1);
	local nBeCur = GetNumber(2, nTask, 2);
	local nRuong = GetNpcValue(NpcIndex);
	if(nRuong ~= nBeCur) then
	Msg2Player("Ch­a ®¸nh b¹i ®­îc hé b¶o kh«ng thÓ më r­¬ng!")
	return end
	if(nNext > 12) then
		Msg2Player("NhiÖm vô ®· hoµn thµnh! H·y trë vÒ nhËn th­ëng!")
	return end
	if(nRuong ~= nNext) then
	Msg2Player("B¹n më sai thø tù b¶o r­¬ng! NhiÖm vô thÊt b¹i.")
	LeaveTeam();
	local nReturn = GetNumber(1, GetTask(TASK_NVST), 9);
	NewWorld(MAP_RETURN[nReturn][1],MAP_RETURN[nReturn][2],MAP_RETURN[nReturn][3]);
	SetFightState(0);
	SetLogoutRV(0);
	return end
	nNext = nNext + 2;
	SetTaskTemp(NVTHIENBAOKHO, SetNumber(2, GetTaskTemp(NVTHIENBAOKHO), 1, nNext));
	if(nNext > 12) then
	Msg2Player("NhiÖm vô ®· hoµn thµnh! H·y trë vÒ nhËn th­ëng!")
	else
	i = random(getn(KINHNGHIEM))
	AddOwnExp(KINHNGHIEM[i][1])
               AddItemID(AddItem(0,2,34,0,0,5,0,0));    ---- r­¬ng ho¹t ®éng
	--AddCoin(XUBAORUONG)
	--Msg2Player("<color=green>Chóc mõng ®¹i hiÖp "..GetName().." nhËn ®­îc "..XUBAORUONG.." xu khi më b¶o r­¬ng thiªn b¶o khè.")
	--if RANDOM(300) == 248 then VPNgauNhien() end
	Msg2Player("B¹n më ®­îc r­¬ng thø <color=green>"..nRuong.."<color> nhËn ®­îc "..KINHNGHIEM[i][2].." kinh nghiÖm. TiÕp theo cÇn më r­¬ng thø <color=green>"..nNext)
	end
end

function VPNgauNhien()
	if RANDOM(3) >= 1 then return end
	a = random(1,17)
	AddItemGold(GOLD[a][1],random(20,50))
	logThuongTBK(""..GetAccount().."\t\t\t"..GetName().."\t\t\t"..GOLD[a][2].." (pho ban)")
	Msg2Player("B¹n nhËn ®­îc <color=yellow>"..GOLD[a][2].."")
	Msg2SubWorld("Chóc mõng<color=yellow> "..GetName().." <color>më b¶o r­¬ng trong phã b¶n Thiªn B¶o Khè nhËn ®­îc <color=cyan>trang bÞ "..GOLD[a][2].."")
end

GOLD = {
	{187,"HiÖp Cèt ThiÕt HuyÕt Sam"},
	{188,"HiÖp Cèt §a T×nh Hoµn"},
	{189,"HiÖp Cèt §an T©m Giíi"},
	{190,"HiÖp Cèt T×nh ý KÕt"},
	{192,"Nhu T×nh Thôc N÷ H¹ng Liªn"},
	{193,"Nhu T×nh  Phông Nghi Giíi ChØ"},
	{194,"Nhu T×nh  TuÖ T©m Ngäc Béi"},
	{191,"Nhu T×nh C©n Quèc Nghª Th­êng"},
	{160,"§Þnh Quèc Thanh Sa Tr­êng Sam"},
	{161,"§Þnh Quèc ¤ Sa Ph¸t Qu¸n"},
	{162,"§Þnh Quèc XÝch Quyªn NhuyÔn Ngoa"},
	{163,"§Þnh Quèc Tö §»ng Hé uyÓn"},
	{164,"§Þnh Quèc Ng©n Tµm Yªu §¸i"},
	{205,"Hång ¶nh ThÈm Viªn UyÓn"},
	{206,"Hång ¶nh KiÕm Bµi"},
	{207,"Hång ¶nh Môc Tóc"},
	{208,"Hång ¶nh Tô Chiªu"},
	{166,"An Bang Cóc Th¹ch ChØ Hoµn"},
	{167,"An Bang §iÒm Hoµng Ngäc Béi"},
	{168,"An Bang Kª HuyÕt Th¹ch Giíi ChØ"},
	{165,"An Bang B¨ng Tinh Th¹ch H¹ng Liªn"},
}

KINHNGHIEM={
{500000,100},
{1000000,200},
{2000000,300}
};
XUBAORUONG = 3
function logThuongTBK(str)
local gm_Log = "dulieu/SuKien/ThienBaoKho.txt"
local fs_log = openfile(gm_Log, "a");
write(fs_log, date("%H:%M:%S_%d-%m-%y").."\t"..str.."\n");
closefile(fs_log);
end
