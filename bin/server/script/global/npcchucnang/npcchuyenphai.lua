Include("\\script\\header\\factionhead.lua");
Include("\\script\\lib\\worldlibrary.lua");
Include("\\script\\header\\taskid.lua");
Include("\\script\\header\\admin\\point.lua");
Include("\\script\\global\\npcchucnang\\phantang.lua");
-- Include( "\\script\\mrpham\\huyvatphamkhoa.lua");



TinVatMonPhai			 = 117	
function myplayersex()
	if GetSex() == 1 then 
		return "N÷ HiÖp";
	else
		return "§¹i HiÖp";
	end
end

function main(NpcIndex)
dofile("script/global/npcchucnang/npcchuyenphai.lua")
local nW, nX, nY = GetWorldPos()
local soao = GetPlayerCount()+1
 Say("<color=cyan>Hoan nghªnh b¹n tham gia vµo:\n<pic=135>M¸y Chñ:<color=yellow> C«ng Thµnh ChiÕn<color>\n<pic=135>Trang Chñ:<color=yellow> VolamTruyenKy<color>\n<pic=135>Uy Danh: <color=yellow>"..GetRespect().."<color>\n<pic=135>Ng­êi Ch¬i Online: <color=yellow>"..soao.."<color>\n<pic=135><color=green>§iÓm ChuyÓn Ph¸i Cña<color=red> "..myplayersex().." <color>HiÖn T¹i<color=red> "..GetTask(117).."",10,
			 "PhÈu ThuËt ThÉm Mü(ChuyÓn Giíi)/DoiGioiTinh",
			 "KiÓm Tra TÝn VËt ChuyÓn Ph¸i/NopTinVat",
			"§¸i NghÖ §Çu S­ Gia NhËp M«n Ph¸i/ChonMonPhai",
		"Tho¸t/no")
	end

function NopTinVat()
	--ThiÕu L©m
	if GetFaction() == "shaolin" then
	Say("Muèn ChuyÓn M«n Ph¸i CÇn Giao Nép TÝn VËt M«n Ph¸i",3,"Nép TÝn VËt Ph¸i ThiÕu L©m/Trinh5165","Th«i §Ó Ta Suy NghÜ/no")
	--Thiªn V­¬ng
	elseif GetFaction() == "tianwang" then
	Say("Muèn ChuyÓn M«n Ph¸i CÇn Giao Nép TÝn VËt M«n Ph¸i",3,"Nép TÝn VËt Ph¸i Thiªn V­¬ng/Trinh5165","Th«i §Ó Ta Suy NghÜ/no") 
	--D­êng M«n
	elseif GetFaction() == "tangmen" then
	Say("Muèn ChuyÓn M«n Ph¸i CÇn Giao Nép TÝn VËt M«n Ph¸i",3,"Nép TÝn VËt Ph¸i §­êng M«n/Trinh5165","Th«i §Ó Ta Suy NghÜ/no")
	--Ngñ §éc
	elseif GetFaction() == "wudu" then
	Say("Muèn ChuyÓn M«n Ph¸i CÇn Giao Nép TÝn VËt M«n Ph¸i",3,"Nép TÝn VËt Ph¸i Ngò §éc/Trinh5165","Th«i §Ó Ta Suy NghÜ/no")
	--Nga My
	elseif GetFaction() == "emei" then	
	Say("Muèn ChuyÓn M«n Ph¸i CÇn Giao Nép TÝn VËt M«n Ph¸i",3,"Nép TÝn VËt Ph¸i Nga My/Trinh5165","Th«i §Ó Ta Suy NghÜ/no")
	--Thóy Yªn
	elseif GetFaction() == "cuiyan" then
	Say("Muèn ChuyÓn M«n Ph¸i CÇn Giao Nép TÝn VËt M«n Ph¸i",3,"Nép TÝn VËt Ph¸i Thóy Yªn/Trinh5165","Th«i §Ó Ta Suy NghÜ/no")
	--C¸i Bang
	elseif GetFaction() == "gaibang" then
Say("Muèn ChuyÓn M«n Ph¸i CÇn Giao Nép TÝn VËt M«n Ph¸i",3,"Nép TÝn VËt Ph¸i C¸i Bang/Trinh5165","Th«i §Ó Ta Suy NghÜ/no")
	--Thiªn NhÉn
	elseif GetFaction() ==  "tianren" then
Say("Muèn ChuyÓn M«n Ph¸i CÇn Giao Nép TÝn VËt M«n Ph¸i",3,"Nép TÝn VËt Ph¸i Thiªn NhÉn/Trinh5165","Th«i §Ó Ta Suy NghÜ/no")
	--Vâ §ang
	elseif GetFaction() ==  "wudang" then
Say("Muèn ChuyÓn M«n Ph¸i CÇn Giao Nép TÝn VËt M«n Ph¸i",3,"Nép TÝn VËt Ph¸i Vâ §ang/Trinh5165","Th«i §Ó Ta Suy NghÜ/no")
	--C«n L«n
	elseif GetFaction() == "kunlun" then
Say("Muèn ChuyÓn M«n Ph¸i CÇn Giao Nép TÝn VËt M«n Ph¸i",3,"Nép TÝn VËt Ph¸i C«n L«n/Trinh5165","Th«i §Ó Ta Suy NghÜ/no")
	--Hoa S¬n
	elseif GetFaction() ==  "huashan" then
Say("Muèn ChuyÓn M«n Ph¸i CÇn Giao Nép TÝn VËt M«n Ph¸i",3,"Nép TÝn VËt Ph¸i Hoa S¬n/Trinh5165","Th«i §Ó Ta Suy NghÜ/no")
	else
		Talk(1,"","<bclr=violet>C¸c H¹ Ch­a Gia NhËp M«n Ph¸i")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function Trinh5165()
	if (GetTask(117) == 0) then
		Say("§Ó TÝnh VËt M«n Ph¸i Ngoµi Hµnh Trang",3,
		"KiÓm Tra TÝn VËt M«n Ph¸i/KiemTra",
		"Th«i §Ó Ta Suy NghÜ/no"
		)
	else
		Talk(1,"","Ta Cho PhÐp Ng­¬i Xuèng Nói T×m §­êng Häc NghÖ Míi\nKhi Nµo Muèn Quay L¹i Bæn M«n Th× L¹i T×m Ta..!")
	end
end
function KiemTra()
-- >=
if(GetItemCount(0,6,1679) >=1) then
DelItem(1,0,6,1679)
SetTask(117,1) 

Talk(1,"","B¹n nhËn ®­îc 1 l­îc chuyÓn ph¸i");
else

Talk(1,"","Thø B¹n §Æt Vµo Kh«ng §óng");
end
end

--------------------------------------------------------------------================chon mon phai---------------------------------------======================
function ChonMonPhai()
Say(""..GetName().." H·y Lùa Chän M«n Ph¸i Muèn Gia NhËp",
14,
	"ThiÕu L©m/ThieuLam",
	"Thiªn V­¬ng/ThienVuong",
	"§­êng M«n/DuongMon",
	"Ngò §éc/NguDoc",
	"Nga My/NgaMy",
	"Thóy Yªn/ThuyYen",
	"C¸i Bang/CaiBang",
	"Thiªn NhÉn/ThienNhan",
	"Vâ §ang/VoDang",
	"C«n L«n/ConLon",
	"Th«i §Ó Ta Suy NghÜ/no"
	)
end
function ThieuLam()

	if (GetTask(117) == 0) then
	Talk(1,"main",""..GetName().." Muèn ChuyÓn M«n Ph¸i Ch­ëng M«n Cña Ng­¬i §· §ång ý Ch­a")
		return
	end
	if (GetLevel() < 80) then
		Talk(1,"",""..GetName().." Ch­a §ñ CÊp 80 H·y Cè G¾ng RÌn LuyÖn Thªm §i")
		return
	end
	if GetFaction() == "shaolin" then
				Talk(1,"","Ta Cho PhÐp Ng­¬i Xuèng Nói T×m §­êng Häc NghÖ Míi\nKhi Nµo Muèn Quay L¹i Bæn M«n Th× L¹i T×m Ta..!")
		return 0;
	end
	if(CheckRoom(2,2) == 0) then Talk(1,"",12265) return end
		if (GetSex() == 0) then
			SetFaction("shaolin")
			SetCamp(1) SetCurCamp(1)
			SetRank(72) SetSeries(0)
				taykynang();taytiemnang()
			del_all_skill();gianhapmonphai(0)		
			SetTask(117,0)
			KickOutSelf() 
		end
		Talk(1,"","Ph¸i ThiÕu L©m Tõ X­a §Õn Nay ChØ Thu NhËn Nam §Ö Tö Kh«ng Bao Giê Thu NhËn N÷ §Ö Tö")
		Msg2SubWorld("<color=cyan>Chóc mõng <color=red>"..myplayersex().." <color=green>"..GetName().."<color=cyan> chuyÓn <color=yellow>"..GetFactionName().." <color>thµnh c«ng.")

end
---------------------------------------------------------Ph¸i Thiªn V­¬ng--------------------------------------------------------------------------------------------------------------------	
function ThienVuong()
	if (GetTask(117) == 0) then
		Talk(1,"main",""..GetName().." Muèn ChuyÓn M«n Ph¸i Ch­ëng M«n Cña Ng­¬i §· §ång ý Ch­a")
		return
	end
	if (GetLevel() < 80) then
		Talk(1,"",""..GetName().." Ch­a §ñ CÊp 80 H·y Cè G¾ng RÌn LuyÖn Thªm §i")
		return
	end
	if GetFaction() ==  "tianwang"then
		Talk(1,"","Ta Cho PhÐp Ng­¬i Xuèng Nói T×m §­êng Häc NghÖ Míi\nKhi Nµo Muèn Quay L¹i Bæn M«n Th× L¹i T×m Ta..!")
		return 0;
	end
	if(CheckRoom(2,2) == 0) then Talk(1,"",12265) return end

	if (GetSex() == 0) then
			SetFaction("tianwang")
			SetCamp(3) SetCurCamp(3)
			SetRank(69) SetSeries(0)
				taykynang();taytiemnang()
			del_all_skill();gianhapmonphai(1)	
			SetTask(117,0)
			 KickOutSelf()
		end
		Talk(1,"","Ph¸i ThiÕu L©m Tõ X­a §Õn Nay ChØ Thu NhËn Nam §Ö Tö Kh«ng Bao Giê Thu NhËn N÷ §Ö Tö")

		Msg2SubWorld("<color=cyan>Chóc mõng <color=red>"..myplayersex().." <color=green>"..GetName().."<color=cyan> chuyÓn <color=yellow>"..GetFactionName().." <color>thµnh c«ng.")
end

----------------------------------------------------------------Ph¸i §­êng M«n------------------------------------------------------------------------------------------------------------------------------
function DuongMon()
	if (GetTask(117) == 0) then
		Talk(1,"main",""..GetName().." Muèn ChuyÓn M«n Ph¸i Ch­ëng M«n Cña Ng­¬i §· §ång ý Ch­a")
		return
	end
	if (GetLevel() < 80) then
		Talk(1,"",""..GetName().." Ch­a §ñ CÊp 80 H·y Cè G¾ng RÌn LuyÖn Thªm §i")
		return
	end
	if GetFaction() == "tangmen" then
		Talk(1,"","Ta Cho PhÐp Ng­¬i Xuèng Nói T×m §­êng Häc NghÖ Míi\nKhi Nµo Muèn Quay L¹i Bæn M«n Th× L¹i T×m Ta..!")
		return 0;
	end
		if(CheckRoom(2,2) == 0) then Talk(1,"",12265) return end
		SetFaction("tangmen")
		SetCamp(3) SetCurCamp(3)
		SetRank(76) SetSeries(1)
			taykynang();taytiemnang()
		del_all_skill();gianhapmonphai(2)	
		SetTask(117,0)
		KickOutSelf() 

Msg2SubWorld("<color=cyan>Chóc mõng <color=red>"..myplayersex().." <color=green>"..GetName().."<color=cyan> chuyÓn <color=yellow>"..GetFactionName().." <color>thµnh c«ng.")
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NguDoc()
	if (GetTask(117) == 0) then
		Talk(1,"main",""..GetName().." Muèn ChuyÓn M«n Ph¸i Ch­ëng M«n Cña Ng­¬i §· §ång ý Ch­a")
		return
	end
	if (GetLevel() < 80) then
		Talk(1,"",""..GetName().." Ch­a §ñ CÊp 80 H·y Cè G¾ng RÌn LuyÖn Thªm §i")
		return
	end
	if GetFaction() == "wudu" then
		Talk(1,"","Ta Cho PhÐp Ng­¬i Xuèng Nói T×m §­êng Häc NghÖ Míi\nKhi Nµo Muèn Quay L¹i Bæn M«n Th× L¹i T×m Ta..!")
		return 0;
	end
		if(CheckRoom(2,2) == 0) then Talk(1,"",12265) return end
		SetFaction("wudu")
		SetCamp(2) SetCurCamp(2)
		SetRank(80) SetSeries(1)
			taykynang();taytiemnang()
	del_all_skill();gianhapmonphai(3)	
		SetTask(117,0)
		KickOutSelf() 
		Msg2SubWorld("<color=cyan>Chóc mõng <color=red>"..myplayersex().." <color=green>"..GetName().."<color=cyan> chuyÓn <color=yellow>"..GetFactionName().." <color>thµnh c«ng.")
end
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NgaMy()
	if (GetTask(117) == 0) then
		Talk(1,"main",""..GetName().." Muèn ChuyÓn M«n Ph¸i Ch­ëng M«n Cña Ng­¬i §· §ång ý Ch­a")
		return
	end
	if (GetLevel() < 80) then
		Talk(1,"",""..GetName().." Ch­a §ñ CÊp 80 H·y Cè G¾ng RÌn LuyÖn Thªm §i")
		return
	end
	if GetFaction() == "emei" then
		Talk(1,"","Ta Cho PhÐp Ng­¬i Xuèng Nói T×m §­êng Häc NghÖ Míi\nKhi Nµo Muèn Quay L¹i Bæn M«n Th× L¹i T×m Ta..!")
		return 0;
		end
			if(CheckRoom(2,2) == 0) then Talk(1,"",12265) return end
			if (GetSex() == 1) then
			SetFaction("emei")
			SetCamp(1) SetCurCamp(1)
			SetRank(64) SetSeries(2)
				taykynang();taytiemnang()
			del_all_skill();gianhapmonphai(4)	
			SetTask(117,0)
			KickOutSelf() 
	end
		Talk(1,"","Ph¸i Nga My Tõ X­a §Õn Nay ChØ Thu NhËn N÷ §Ö Tö Kh«ng Bao Giê Thu NhËn Nam §Ö Tö")
		Msg2SubWorld("<color=cyan>Chóc mõng <color=red>"..myplayersex().." <color=green>"..GetName().."<color=cyan> chuyÓn <color=yellow>"..GetFactionName().." <color>thµnh c«ng.")
end

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThuyYen()
	if (GetTask(117) == 0) then
		Talk(1,"main",""..GetName().." Muèn ChuyÓn M«n Ph¸i Ch­ëng M«n Cña Ng­¬i §· §ång ý Ch­a")
		return
	end
	if (GetLevel() < 80) then
		Talk(1,"",""..GetName().." Ch­a §ñ CÊp 80 H·y Cè G¾ng RÌn LuyÖn Thªm §i")
		return
	end
	if GetFaction() == "cuiyan" then
		Talk(1,"","Ta Cho PhÐp Ng­¬i Xuèng Nói T×m §­êng Häc NghÖ Míi\nKhi Nµo Muèn Quay L¹i Bæn M«n Th× L¹i T×m Ta..!")
		return 0;
	end
		if(CheckRoom(2,2) == 0) then Talk(1,"",12265) return end

	if (GetSex() == 1) then

			SetFaction("cuiyan")
			SetCamp(3) SetCurCamp(3)
			SetRank(67) SetSeries(2)
				taykynang();taytiemnang()
			del_all_skill();gianhapmonphai(5)	
			SetTask(117,0)	 
			 KickOutSelf()
end
		Talk(1,"","Ph¸i Thóy Yªn YÓu §iÖu Thôc N÷ Tõ X­a §Õn Nay ChØ Thu NhËn N÷ §Ö Tö Kh«ng Bao Giê Thu NhËn Nam §Ö Tö")
		Msg2SubWorld("<color=cyan>Chóc mõng <color=red>"..myplayersex().." <color=green>"..GetName().."<color=cyan> chuyÓn <color=yellow>"..GetFactionName().." <color>thµnh c«ng.")
end

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function CaiBang()
	if (GetTask(117) == 0) then
		Talk(1,"main",""..GetName().." Muèn ChuyÓn M«n Ph¸i Ch­ëng M«n Cña Ng­¬i §· §ång ý Ch­a")
		return
	end
	if (GetLevel() < 80) then
		Talk(1,"",""..GetName().." Ch­a §ñ CÊp 80 H·y Cè G¾ng RÌn LuyÖn Thªm §i")
		return
	end
	if GetFaction() == "gaibang" then
		Talk(1,"","Ta Cho PhÐp Ng­¬i Xuèng Nói T×m §­êng Häc NghÖ Míi\nKhi Nµo Muèn Quay L¹i Bæn M«n Th× L¹i T×m Ta..!")
		return 0;
	end
	if(CheckRoom(2,2) == 0) then Talk(1,"",12265) return end

		SetFaction("gaibang")
		SetCamp(1) SetCurCamp(1)
		SetRank(78) SetSeries(3)
			taykynang();taytiemnang()
	del_all_skill();gianhapmonphai(6)	
		SetTask(117,0)
		KickOutSelf() 
		Msg2SubWorld("<color=cyan>Chóc mõng <color=red>"..myplayersex().." <color=green>"..GetName().."<color=cyan> chuyÓn <color=yellow>"..GetFactionName().." <color>thµnh c«ng.")
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ThienNhan()
	if (GetTask(117) == 0) then
		Talk(1,"main",""..GetName().." Muèn ChuyÓn M«n Ph¸i Ch­ëng M«n Cña Ng­¬i §· §ång ý Ch­a")
		return
	end
	if (GetLevel() < 80) then
		Talk(1,"",""..GetName().." Ch­a §ñ CÊp 80 H·y Cè G¾ng RÌn LuyÖn Thªm §i")
		return
	end
	if GetFaction() == "tianren" then
		Talk(1,"","Ta Cho PhÐp Ng­¬i Xuèng Nói T×m §­êng Häc NghÖ Míi\nKhi Nµo Muèn Quay L¹i Bæn M«n Th× L¹i T×m Ta..!")
		return 0;
	end
		if(CheckRoom(2,2) == 0) then Talk(1,"",12265) return end

		SetFaction("tianren")
		SetCamp(2) SetCurCamp(2)
		SetRank(81) SetSeries(3)
			taykynang();taytiemnang()
		del_all_skill();gianhapmonphai(7)	
		SetTask(117,0)
		 KickOutSelf()
		 Msg2SubWorld("<color=cyan>Chóc mõng <color=red>"..myplayersex().." <color=green>"..GetName().."<color=cyan> chuyÓn <color=yellow>"..GetFactionName().." <color>thµnh c«ng.")
end
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function VoDang()
	if (GetTask(117) == 0) then
		Talk(1,"main",""..GetName().." Muèn ChuyÓn M«n Ph¸i Ch­ëng M«n Cña Ng­¬i §· §ång ý Ch­a")
		return
	end
	if (GetLevel() < 80) then
		Talk(1,"",""..GetName().." Ch­a §ñ CÊp 80 H·y Cè G¾ng RÌn LuyÖn Thªm §i")
		return
	end
	if GetFaction() == "wudang" then
		Talk(1,"","Ta Cho PhÐp Ng­¬i Xuèng Nói T×m §­êng Häc NghÖ Míi\nKhi Nµo Muèn Quay L¹i Bæn M«n Th× L¹i T×m Ta..!")
		return 0;
	end
	if(CheckRoom(2,2) == 0) then Talk(1,"",12265) return end

		SetFaction("wudang")
		SetCamp(1) SetCurCamp(1)
		SetRank(73) SetSeries(4)
		taykynang();taytiemnang()
		del_all_skill();gianhapmonphai(8)	
		SetTask(117,0)
		 
		 KickOutSelf()

Msg2SubWorld("<color=cyan>Chóc mõng <color=red>"..myplayersex().." <color=green>"..GetName().."<color=cyan> chuyÓn <color=yellow>"..GetFactionName().." <color>thµnh c«ng.")
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ConLon()
	if (GetTask(117) == 0) then
		Talk(1,"main",""..GetName().." Muèn ChuyÓn M«n Ph¸i Ch­ëng M«n Cña Ng­¬i §· §ång ý Ch­a")
		return
	end
	if (GetLevel() < 80) then
		Talk(1,"",""..GetName().." Ch­a §ñ CÊp 80 H·y Cè G¾ng RÌn LuyÖn Thªm §i")
		return
	end
	if GetFaction() == "kunlun" then
		Talk(1,"","Ta Cho PhÐp Ng­¬i Xuèng Nói T×m §­êng Häc NghÖ Míi\nKhi Nµo Muèn Quay L¹i Bæn M«n Th× L¹i T×m Ta..!")
		return 0;
	end
	if(CheckRoom(2,2) == 0) then Talk(1,"",12265) return end

		SetFaction("kunlun")
		SetCamp(3) SetCurCamp(3)
		SetRank(5) SetSeries(4)
		taykynang();taytiemnang()
		del_all_skill();gianhapmonphai(9)	
		SetTask(117,0)
		
		KickOutSelf() 

Msg2SubWorld("<color=cyan>Chóc mõng <color=red>"..myplayersex().." <color=green>"..GetName().."<color=cyan> chuyÓn <color=yellow>"..GetFactionName().." <color>thµnh c«ng.")
end

-----------------------------------------------------------------------------------------------------------
function DoiGioiTinh()
	Say("<npc><color=Pink>Nam<color> => Nga My hoÆc Thóy Yªn <color=Green>N÷ <color> => ThiÕu L©m hoÆc Thiªn V­¬ng<enter> Sau khi gia nhËp m«n ph¸i cã thÓ ®Õn gÆp ta ®Ó ®æi giíi tÝnh ",3,
		"ChuyÓn Nam Thµnh N÷/NamNu",
		"ChuyÓn N÷ Thµnh Nam/NuNam",
	"KÕt thóc ®èi tho¹i/no")

end

function NamNu()
local nFaction = GetFaction()
if nFaction == "shaolin" then
Talk(1,"no","<color=red>M«n Ph¸i ThiÕu L©m Kh«ng ThÓ ChuyÓn Giíi.")
				return 			
			end
if nFaction == "tianwang" then
Talk(1,"no","<color=red>M«n Ph¸i Thiªn V­¬ng Kh«ng ThÓ ChuyÓn Giíi.")
				return 			
			end
if GetCurCamp() == 0 then
		Talk(1, "", "<color=green>"..myplayersex().."<color> vÉn ch­a gia nhËp m«n ph¸i ?")
return end

if GetSex() == 1 then
Talk(1, "", "<color=green>"..myplayersex().."<color> ®ang lµ <color=red>G¸i §Ñp<color> mµ?\n Cã ph¶i "..myplayersex().." thuéc thÕ giíi thø 3 kh«ng?")
return end
	 if (GetItemCount(0,4,343) < 5) then
	 Talk(1,"","b¹n kh«ng ®ñ 5 KNB ®Ó ®æi");
	return end;
	DelItem(5,0,4,343);
SetSex(1) ---nu 1
KickOutSelf()
Msg2SubWorld("<color=cyan>Chóc mõng nam ®¹i hiÖp <color=green>"..GetName().."<color=cyan> chuyÓn ®æi giíi tÝnh thµnh c«ng thµnh N÷ Giai Nh©n T¹i NPC ChuyÓn Ph¸i")
end


function NuNam()
local nFaction = GetFaction()
if nFaction == "emei" then
Talk(1,"no","<color=red>M«n Ph¸i - Nga My Kh«ng ThÓ ChuyÓn Giíi.")
return 			
end
if nFaction == "cuiyan" then
Talk(1,"no","<color=red>M«n Ph¸i - THuy yen Kh«ng ThÓ ChuyÓn Giíi.")
return 			
end

if GetCurCamp() == 0 then
		Talk(1, "", "<color=green>"..myplayersex().."<color> vÉn ch­a gia nhËp m«n ph¸i ?")
return end
if GetSex() == 0 then
Talk(1, "", "<color=green>"..myplayersex().."<color> ®ang lµ <color=red>Trai Xinh<color> mµ?\n Cã ph¶i "..myplayersex().." thuéc thÕ giíi thø 3 kh«ng?")
return end
	 if (GetItemCount(0,4,343) < 5) then
	 Talk(1,"","b¹n kh«ng ®ñ 5 KNB ®Ó ®æi");
	return end;
	DelItem(5,0,4,343);
SetSex(0)---nam 0
KickOutSelf()
Msg2SubWorld("<color=cyan>Chóc mõng n÷ ®¹i hiÖp <color=green>"..GetName().."<color=cyan> chuyÓn ®æi giíi tÝnh thµnh c«ng thµnh Nam Mü Nh©n T¹i NPC ChuyÓn Ph¸i")
end
