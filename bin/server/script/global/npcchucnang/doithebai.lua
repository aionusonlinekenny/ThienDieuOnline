Include("\\script\\header\\taskid.lua");
Include("\\script\\lib\\worldlibrary.lua");

NEED_ROOM_EMPTY = "Quý kh¸ch h·y s¾p xÕp l¹i hµnh trang."
NOT_TRADE = "§ãng/no";

function main(NpcIndex)
doithebai100()
end
function doithebai100()
	Say(12409,4,
		"§æi trang bÞ §Þnh Quèc/Doidinhquoc",
		"§æi trang bÞ An Bang/Doianbang",
		"§æi trang bÞ Hång ¶nh/Doihonganh",
		NOT_TRADE)
end;
function Doidinhquoc()
		Say(12409,6,
		"§Þnh Quèc Thanh Sa Tr­êng Sam/DoiDinhQuoc1",
		"§Þnh Quèc ¤ Sa Ph¸t Qu¸n/DoiDinhQuoc2",
		"§Þnh Quèc XÝch Quyªn NhuyÔn Ngoa/DoiDinhQuoc3",
		"§Þnh Quèc Tö §»ng Hé UyÓn/DoiDinhQuoc4",
		"§Þnh Quèc Ng©n Tµm Yªu §¸i/DoiDinhQuoc5",
		NOT_TRADE)
end
function Doianbang()
		Say(12409,5,
		"An Bang B¨ng Tinh Th¹ch H¹ng Liªn/DoiAnBang1",
		"An Bang Cóc Hoa Th¹ch ChØ Hoµn/DoiAnBang2",
		"An Bang §iÒn Hoµng Th¹ch Ngäc Béi/DoiAnBang3",
		"An Bang Kª HuyÕt Th¹ch Giíi ChØ /DoiAnBang4",
		NOT_TRADE)
end
function Doihonganh()
		Say(12409,5,
		"Hång ¶nh ThÈm Viªn UyÓn/DoiHongAnh1",
		"Hång ¶nh KiÕm Bµi/DoiHongAnh2",
		"Hång ¶nh Môc Tóc/DoiHongAnh3",
		"Hång ¶nh Tô Chiªu/DoiHongAnh4",
		NOT_TRADE)
	end
----------------------------------------------------------------------------------------------------------------------------------------------------
function DoiDinhQuoc1()
if(GetItemCount(0,6,4828) >= 20) then
DelItem(20,0,6,4828)
AddItemID(AddItem(2,0,397,0,0,5,0)) ---®Þnh quèc y phôc
Talk(1,"","B¹n nhËn ®­îc 1 trang bÞ ®Þnh quèc");
else
Talk(1,"","B¹n kh«ng ®ñ 20 thÎ bµi y phôc");
end
end

function DoiDinhQuoc2()
if(GetItemCount(0,6,4827) >= 20) then
DelItem(20,0,6,4827)
AddItemID(AddItem(2,0,398,0,0,5,0)) ---®Þnh quèc mò
Talk(1,"","B¹n nhËn ®­îc 1 trang bÞ ®Þnh quèc");
else
Talk(1,"","B¹n kh«ng ®ñ 20 thÎ bµi kh«i m·o");
end
end

function DoiDinhQuoc3()
if(GetItemCount(0,6,4829) >= 20) then
DelItem(20,0,6,4829)
AddItemID(AddItem(2,0,399,0,0,5,0)) ---®Þnh quèc hµi
Talk(1,"","B¹n nhËn ®­îc 1 trang bÞ ®Þnh quèc");
else
Talk(1,"","B¹n kh«ng ®ñ 20 thÎ bµi Hµi");
end
end

function DoiDinhQuoc4()
if(GetItemCount(0,6,4831) >= 20) then
DelItem(20,0,6,4831)
AddItemID(AddItem(2,0,400,0,0,5,0)) ---®Þnh quèc bao tay
Talk(1,"","B¹n nhËn ®­îc 1 trang bÞ ®Þnh quèc");
else
Talk(1,"","B¹n kh«ng ®ñ 20 thÎ bµi bao tay");
end
end
	
function DoiDinhQuoc5()
if(GetItemCount(0,6,4830) >= 20) then
DelItem(20,0,6,4830)
AddItemID(AddItem(2,0,401,0,0,5,0)) ---®Þnh quèc th¾t l­ng
Talk(1,"","B¹n nhËn ®­îc 1 trang bÞ ®Þnh quèc");
else
Talk(1,"","B¹n kh«ng ®ñ 20 thÎ bµi th¾t l­ng");
end
end	
------=======================================================================================-----	
	
function DoiAnBang1()
if(GetItemCount(0,6,4832) >= 30) then
DelItem(30,0,6,4832)
AddItemID(AddItem(2,0,215,0,0,5,0)) ---An Bang H¹ng Liªn
Talk(1,"","B¹n nhËn ®­îc 1 trang bÞ An Bang");
else
Talk(1,"","B¹n kh«ng ®ñ 30 thÎ bµi d©y chuyÒn");
end
end	

function DoiAnBang2()
if(GetItemCount(0,6,4834) >= 25) then
DelItem(25,0,6,4834)
AddItemID(AddItem(2,0,216,0,0,5,0)) ---An Bang nhÉn
Talk(1,"","B¹n nhËn ®­îc 1 trang bÞ An Bang");
else
Talk(1,"","B¹n kh«ng ®ñ 25 thÎ bµi nhÉn");
end
end

function DoiAnBang3()
if(GetItemCount(0,6,4833) >= 25) then
DelItem(25,0,6,4833)
AddItemID(AddItem(2,0,217,0,0,5,0)) ---An Bang ngäc béi
Talk(1,"","B¹n nhËn ®­îc 1 trang bÞ An Bang");
else
Talk(1,"","B¹n kh«ng ®ñ 25 thÎ bµi ngäc béi");
end
end
	
function DoiAnBang4()
if(GetItemCount(0,6,4834) >= 25) then
DelItem(25,0,6,4834)
AddItemID(AddItem(2,0,217,0,0,5,0)) ---An Bang nhÉn
Talk(1,"","B¹n nhËn ®­îc 1 trang bÞ An Bang");
else
Talk(1,"","B¹n kh«ng ®ñ 25 thÎ bµi nhÉn");
end
end	
---========================================================================--------------------	
function DoiHongAnh1()	
if(GetItemCount(0,6,4832) >= 20) then
DelItem(20,0,6,4832)
AddItemID(AddItem(2,0,203,0,0,5,0)) ---Hång ¶nh d©y chuyÒn
Talk(1,"","B¹n nhËn ®­îc 1 trang bÞ Hång ¶nh");
else
Talk(1,"","B¹n kh«ng ®ñ 20 thÎ bµi d©y chuyÒn");
end
end	

function DoiHongAnh2()	
if(GetItemCount(0,6,4834) >= 20) then
DelItem(20,0,6,4834)
AddItemID(AddItem(2,0,204,0,0,5,0)) ---Hång ¶nh nhÉn
Talk(1,"","B¹n nhËn ®­îc 1 trang bÞ Hång ¶nh");
else
Talk(1,"","B¹n kh«ng ®ñ 20 thÎ bµi nhÉn");
end
end

function DoiHongAnh3()	
if(GetItemCount(0,6,4834) >= 20) then
DelItem(20,0,6,4834)
AddItemID(AddItem(2,0,205,0,0,5,0)) ---Hång ¶nh nhÉn
Talk(1,"","B¹n nhËn ®­îc 1 trang bÞ Hång ¶nh");
else
Talk(1,"","B¹n kh«ng ®ñ 20 thÎ bµi nhÉn");
end
end

function DoiHongAnh4()	
if(GetItemCount(0,6,4833) >= 20) then
DelItem(20,0,6,4833)
AddItemID(AddItem(2,0,206,0,0,5,0)) ---Hång ¶nh ngäc béi
Talk(1,"","B¹n nhËn ®­îc 1 trang bÞ Hång ¶nh");
else
Talk(1,"","B¹n kh«ng ®ñ 20 thÎ bµi ngäc béi");
end
end


function no()
end;
























