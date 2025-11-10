--hoangnhk
Include("\\script\\header\\taskid.lua");
Include("\\script\\lib\\worldlibrary.lua");
END_TALK = "KÕt thóc ®èi tho¹i/no";
RESET_TALK = "§¹i hiÖp sÏ ®­îc xãa cµi ®Æt mËt m· vµo ngµy <color=Yellow>%s<color> nÕu sau 24h ngµy <color=Yellow>%s<color> kh«ng x¸c nhËn th× ®¨ng ký xãa cµi ®Æt mËt m· sÏ bÞ hñy bá ";
function main(NpcIndex)
dofile("script/global/npcchucnang/lequan.lua");
Say("LÔ Quan, Vâ L©m CTC", 10,	
                      --  "Xãa cµi ®Æt mËt m·/xoamakhoa",
                     --   "NhËn Top Cao Thñ/NhanTopCaNhan",
                    --    "NhËn Top Liªn §Êu/NhanTopCaNhan",
                   --     "NhËn Th­ëng Bang Héi /topbanghoi123",
				   		-- "NhËn LB GM /nhanlbtest",
		-- "NhËn Trang BÞ Test /nhantrangbitest",
		-- "NhËn Xu/nhanxutest",
		-- "NhËn CÊp 80/NhanCap",
		"Tho¸t/no")

	end
	
function NhanCap()
	SetLevel(80);
end
	GetLevel()
function nhanlbtest()
-- AddMagicScript(1626)
AddItemID(AddItem(0,6,4826,0,0,1,0));
AddItemID(AddItem(0,6,4812,0,0,1,0));
end
function nhanxutest()
 AddExtPoint(10000)
end

function huyvp()
	if(GetLockState()==1) then
		Msg2Player("B¹n ph¶i më khãa b¶o vÖ tr­íc, míi cã thÓ hñy trang bÞ");
	end;
	GiveItemUI("Hñy vËt phÈm", "§¹i hiÖp h·y cÈn träng trong viÖc hñy vËt phÈm", "huyvp1", "onCancel" )
end


function nhantrangbitest()
	  --AddItemID(AddItem(0,2,34,0,0,5,0,0));   
	-- AddItemID(AddItem(2,0,1045,0,0,5,0))
		-- AddItemID(AddItem(2,0,1055,0,0,5,0))
		-- AddItemID(AddItem(2,0,1065,0,0,5,0))
	-- AddItemID(AddItem(2,0,1045,0,0,5,0))
		-- AddItemID(AddItem(2,0,1055,0,0,5,0))
		-- AddItemID(AddItem(2,0,1065,0,0,5,0))
			-- AddItemID(AddItem(2,0,1025,0,0,5,0))
		-- AddItemID(AddItem(2,0,1020,0,0,5,0))
		AddItemID(AddItem(2,0,974,0,0,5,0))
end


function huyvp1()
	local count,nFIndex,nFGenre = 0;
	for i = 0,5 do
		for j = 0, 9 do
		nFIndex,nFGenre = FindItemEx(14,i,j);
		if (nFIndex > 0  and GetLockItem(nFIndex) == -2) then--trang bi, khoa vinh vien
			RemoveItem(nFIndex, 1)
			count=count+1;
		end
		end
	end
	if count>0 then
		Msg2Player(format("§¹i hiÖp võa hñy thµnh c«ng %d vËt phÈm",count));
	end
	return 1;
end

function xoamakhoa()
	local nTaskValue = GetTask(TASK_THOIGIAN7);
	if (GetNumber(4,nTaskValue, 2) > 0) then
	Say("§¹i hiÖp t×m ta cã viÖc g×?", 3,
	"Xem thêi gian hoµn thµnh xãa cµi ®Æt mËt m·/ktthoigian",
	"Hñy xãa cµi ®Æt mËt m·/huyxoa",
		END_TALK)	
	else
	Say("§¹i hiÖp t×m ta cã viÖc g×?", 2,
	"§¨ng ký xãa cµi ®Æt mËt m·/xnxoa",
		END_TALK)	
	end
end

function xnxoa()
	local nValue = GetCurServerSec()+7*24*60*60;
	SetTask(TASK_THOIGIAN7, nValue);
	local szMsg = GetTimeDate("%Y-%m-%d %H:%M:%S", nValue);
	Talk(1, "", format(RESET_TALK, szMsg, szMsg));
end

function ktthoigian()
	local nValue = GetTask(TASK_THOIGIAN7);
	local szMsg = GetTimeDate("%Y-%m-%d %H:%M:%S", nValue);
	--Talk(1, "", format(RESET_TALK, szMsg, szMsg));
end

function huyxoa()
	SetTask(TASK_THOIGIAN7,0);
	Msg2Player("Hñy bá xãa cµi ®Æt mËt m·");
end

function no()
end;

------------------------------------------------------------------------nhËn th­ëng top cÊp-------------------------------------------------------------------------------------------------------------------
function NhanTopCaNhan()
	if(CheckRoom(2,3) == 0) then Talk(1,"","Vui lßng chõa 2x3 « trèng ®Ó nhËn th­ëng.") return end
	if GetName() == "thutop1hngf" and GetTask(TASK_TOPCANHAN) == 0 then
		 AddExtPoint(1000)
		SetTask(TASK_TOPCANHAN,1);
                             Msg2Player("B¹n nhËn ®­îc 1000 xu th­ëng");
		logTOP10("["..GetName().."] - [IP: "..GetIP().."] - [Level: "..GetLevel().."] - [Noi Dung: nhan TOP 1]")
	elseif GetName() == "tennguoifhgchoi2" and GetTask(TASK_TOPCANHAN) == 0 then
		 AddExtPoint(700)
		SetTask(TASK_TOPCANHAN,1);
                             Msg2Player("B¹n nhËn ®­îc 700 xu th­ëng");
		logTOP10("["..GetName().."] - [IP: "..GetIP().."] - [Level: "..GetLevel().."] - [Noi Dung: nhan TOP 2]")
	elseif GetName() == "tenngujhggoichoi3" and GetTask(TASK_TOPCANHAN) == 0 then
		 AddExtPoint(500)
		SetTask(TASK_TOPCANHAN,1);
                             Msg2Player("B¹n nhËn ®­îc 500 xu th­ëng");
		logTOP10("["..GetName().."] - [IP: "..GetIP().."] - [Level: "..GetLevel().."] - [Noi Dung: nhan TOP 3]")
	elseif GetName() == "tennguffghoichoi4" and GetTask(TASK_TOPCANHAN) == 0 then
		 AddExtPoint(300)
		SetTask(TASK_TOPCANHAN,1);
                             Msg2Player("B¹n nhËn ®­îc 300 xu th­ëng");
		logTOP10("["..GetName().."] - [IP: "..GetIP().."] - [Level: "..GetLevel().."] - [Noi Dung: nhan TOP 4]")
	elseif (GetName() == "tennguofhgfichoi5" or GetName() == "tenngugfhgfoichoi6" or GetName() == "tenngfduoichoi7" or GetName() == "tenngudgfoichoi8" or GetName() == "tennggfduoichoi9" or GetName() == "tennguogfdichoi10") and GetTask(TASK_TOPCANHAN) == 0 then
		 AddExtPoint(100)
		SetTask(TASK_TOPCANHAN,1);
                             Msg2Player("B¹n nhËn ®­îc 100 xu th­ëng");
		logTOP10("["..GetName().."] - [IP: "..GetIP().."] - [Level: "..GetLevel().."] - [Noi Dung: nhan TOP 5-10]")
	else
	Talk(1,"no","B¹n kh«ng cã tªn trong danh s¸ch nhËn th­ëng hoÆc ®· nhËn råi.")
	end
end



function topbanghoi123()
           Say("LÔ Quan, Vâ L©m CTC", 10,
	"Bang Chñ nhËn th­ëng /thuongbanghoi1",
		END_TALK)
end
----------------------------------------------------------------------------------------th­ëng bang héi ---------------------------------------------------------------------------------------------------------------
function thuongbanghoi1()
	if GetName() == "hgfhgfhfg" and GetTask(TASK_TOPBANGHOI) == 0 then
	SetTask(TASK_TOPBANGHOI,1)
	if GetTask(TASK_TOPBANGHOI) == 1 then
		AddExtPoint(1000)
                             Msg2Player("B¹n nhËn ®­îc 1000 xu th­ëng bang héi");
                             SetTask(TASK_TOPBANGHOI,2)
		logTOP1Banghoi("["..GetName().."] - [IP: "..GetIP().."] - [Level: "..GetLevel().."] - [Noi Dung: nhan bang hoi chiem thanh]")
                                   end
                       else
	Talk(1,"no","B¹n kh«ng cã tªn trong danh s¸ch nhËn th­ëng hoÆc ®· nhËn råi.")
	end
end




function logTOP1Banghoi(str)
local gm_Log = "DuLieu/SuKien/TOPbanghoi.txt"
local fs_log = openfile(gm_Log, "a");
write(fs_log, date("%H:%M:%S_%d-%m-%y").."\t"..str.."\n");
closefile(fs_log);
end

function logTOP10liendau(str)
local gm_Log = "DuLieu/SuKien/TOPliendau.txt"
local fs_log = openfile(gm_Log, "a");
write(fs_log, date("%H:%M:%S_%d-%m-%y").."\t"..str.."\n");
closefile(fs_log);
end


function logTOP10(str)
local gm_Log = "DuLieu/SuKien/NhanThuongDuaTOP.txt"
local fs_log = openfile(gm_Log, "a");
write(fs_log, date("%H:%M:%S_%d-%m-%y").."\t"..str.."\n");
closefile(fs_log);
end



function logMuaTS(str)
local gm_Log = "dulieu/SuKien/MuaBacDau.txt"
local fs_log = openfile(gm_Log, "a");
write(fs_log, date("%H:%M:%S_%d-%m-%y").."\t"..str.."\n");
closefile(fs_log);
end

function logChangeName(str)
local gm_Log = "dulieu/SuKien/DoiTenNhanVat.txt"
local fs_log = openfile(gm_Log, "a");
write(fs_log, date("%H:%M:%S_%d-%m-%y").."\t"..str.."\n");
closefile(fs_log);
end


function logGiftCode(str)
local gm_Log = "dulieu/SuKien/GiftCodeCTTB.txt"
local fs_log = openfile(gm_Log, "a");
write(fs_log, date("%H:%M:%S_%d-%m-%y").."\t"..str.."\n");
closefile(fs_log);
end

function logHoTroGop(str)
local gm_Log = "dulieu/SuKien/HoTroSapNhap.txt"
local fs_log = openfile(gm_Log, "a");
write(fs_log, date("%H:%M:%S_%d-%m-%y").."\t"..str.."\n");
closefile(fs_log);
end

function no()
end;




















