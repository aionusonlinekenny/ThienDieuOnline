Include("\\script\\lib\\worldlibrary.lua");
Include("\\script\\header\\taskid.lua");
Include( "\\script\\header\\admin\\point.lua");
Include( "\\script\\header\\admin\\item.lua");
Include( "\\script\\header\\factionhead.lua");
Include( "\\script\\header\\trangbi.lua");
Include( "\\script\\global\\npcchucnang\\quanlydanhhieu.lua");
Include("\\script\\header\\chuyensinh.lua");
Include( "\\script\\global\\npcchucnang\\phantang.lua");
Include("\\script\\checkAdmin.lua");
Include( "\\script\\taocard.lua");
Include("\\script\\npcthon\\balang\\npcnhiemvu.lua");
Include("\\script\\cacsukien\\phongky\\dichquan.lua");
Include("\\script\\cacsukien\\duangua\\xuatphat.lua");
Include("\\script\\feature\\congthanh\\npccongthanh.lua");
Include("\\datascript\\congthanh\\danhsachcongthanh.lua");
Include("\\script\\checkIPtongkim.lua");
Include("\\script\\event\\30thang4\\Tuongquan.lua");
Include("\\script\\header\\testgame.lua");


function main(NpcIndex)
dofile("script/global/npcchucnang/hotrotanthu.lua")
local nW, nX, nY = GetWorldPos()----khai b¸o täa ®é ®ang ®øng
local soao = GetPlayerCount() + 1----khai b¸o ng­êi ch¬i online
local nNam = tonumber(GetLocalDate("%Y"));-----------local khai b¸o n¨m
local nThang = tonumber(GetLocalDate("%m"));--thang
local nNgay = tonumber(GetLocalDate("%d"));---ngay
local nGio = tonumber(GetLocalDate("%H"));---gio
local nPhut = tonumber(GetLocalDate("%M"));-----phut
local nGiay = tonumber(GetLocalDate("%S"));----giay
local now = tonumber(GetLocalDate("%Y%m%d%H%M"));----tæng hîp ngµy giê
 Say("<color=cyan>Hoan nghªnh b¹n tham gia vµo:\n<pic=135>M¸y Chñ:<color=yellow> C«ng Thµnh ChiÕn<color>\n<pic=135>Trang Chñ:<color=yellow> VolamTruyenKy<color>\n<pic=135>Uy Danh: <color=yellow>"..GetRespect().."<color>\n<pic=135>Ng­êi Ch¬i Online: <color=yellow>"..soao.."<color>\n<pic=135>H«m nay: <color=orange>"..nNgay.."/"..nThang.."/"..nNam.."<color> vµo lóc: <color=orange>"..nGio..":"..nPhut..":"..nGiay.."\n<pic=135><color=red>Hæ Trî T©n Thñ Chµo Mõng <color=green>"..GetName().." <color>Gia NhËp Sever! ",10,
	"NhËn Hç Trî T©n Thñ/HoTro_TanThu",
	"NhËp Giftcode T©n Thñ/Gift_Code",
	"Tho¸t/no")
end
-----------------------Ho Tro Tan Thu------------
function HoTro_TanThu()
	local nTaskValue = GetTask(TASK_TANTHU);
	if GetNumber(1,nTaskValue,1) > 0 then
		Talk(1,"","Nhµ ng­¬i ®· nhËn råi!");
		return
	end

	if(CheckRoom(6,6) == 0) then
		Talk(1, "", 12266)
		return
	end

	if GetLevel() < 10 then
		SetLevel(10);
	end

	--- TIEN THAO LO 1gio
	local nIndex ={};
	for i = 1,2 do
		nIndex[i] = AddItemID(AddItem(0,6,71,0,0,5,0,random(0,10)));
		AddTimeItem(LockItem(nIndex[i]),30*24*60*60);
	end;

	--- THO DI PHU + THAN HANH PHU + ngua
	AddItemID(AddItem(0,5,1,0,0,5,0,0));
	AddItemID(AddItem(0,5,2,0,0,5,0,0));
	-- Earn(20000)  ---2 v¹n l­îng

	-----NGUA
	AddItemID(AddItem(0,0,10,2,10,0,0,0))      ---ngua tuc s­¬ng
	--- Trang bi Kim Phong
	for i = 176,184 do
		AddItemID(AddItem(2,0,i,0,0,5,0,random(5,10)));
	end

	SetTask(TASK_TANTHU, SetNumber(1,nTaskValue,1,1));
	KickOutSelf()
end

---------------------GIFT CODE----------------------------------------------
function Gift_Code()
	local nTaskValue = GetTask(TASK_TANTHU);
	if (GetNumber(1,nTaskValue,3) > 0) then
		Talk(1,"","Nhµ ng­¬i ®· nhËn råi!");
	else
		Input("ExcuteGift");
	end
end

function ExcuteGift(nCode)
	if (nCode == "vltk") then
		if(CheckRoom(6,6) == 0) then
			Talk(1, "", 12266)
			return
		end

		---TIEN THAO LO 1 gio x2 exp
		local nIndex ={};
		for i = 1,6 do
			nIndex[i] = AddItemID(AddItem(0,6,71,0,0,5,0,random(0,10)));
			AddTimeItem(LockItem(nIndex[i]),30*24*60*60);
		end

		---TU MAU LENH
		nIndex2 = AddItemID(AddItem(0,6,1436,0,0,5,0,random(0,10)));
		AddTimeItem(LockItem(nIndex2),30*24*60*60);
		local nTaskValue = GetTask(TASK_TANTHU);
		SetTask(TASK_TANTHU, SetNumber(1,nTaskValue,3,1));

		Talk(1,"","C¸c h¹ ®· nhËn ®­îc phÇn th­ëng gi¸ trÞ tõ GIFT CODE c¶m ¬n ®¹i hiÖp ®· tr¶i nghiÖm m¸y chñ");
		Msg2SubWorld("<color=yellow>§¹i hiÖp<color=green> "..GetName().." <color>®· nhËn ®­îc phÇn th­ëng gi¸ trÞ tõ GIFT CODE<color>");
	end
end
