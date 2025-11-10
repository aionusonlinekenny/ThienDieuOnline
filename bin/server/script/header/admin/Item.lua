-- Author: Hoang
-- NameTool: Lenh Bai Gm

Include( "\\script\\header\\taskid.lua" );

GMRole = {}
GMRole.Task = {
	EQUIP_DETAIL		= 0,
	EQUIP_PARTICULAR 	= 1,
	EQUIP_LEVEL			= 2,
	SEX_CHOOSE			= 3,
}


function WPlayer_Equip()
nW,nX,nY = GetWorldPos()
	Tab_inSert = {
	"<color=red>HÖ Thèng:<color> <color=orange>Cuéc sèng nµy biÕt bao ®iÒu tu¬i ®Ñp, Minh Qu©n xin h·y b×nh tÜnh suy xÐt\n<color=green>Täa ®é hiÖn t¹i: B¶n ®å: "..nW.." - X: "..nX.."-Y: "..nY.."",
	"Trang bÞ xanh/func_blueItem",
	"Trang bÞ Hoµng Kim C¬ b¶n/PL_BasicGoldEquip",
	"Trang bÞ Hoµng Kim M«n Ph¸i/PL_PremiumGoldEquip",
	"LÊy mÆt n¹/PL_Mask",
	"LÊy ngùa/PL_Hourse",
	"LÊy vËt phÈm kh¸c/func_leader",
	"Ta kh«ng cÇn ng¬i d¹y b¶o/no"
	}
Say(Tab_inSert[1],getn(Tab_inSert),Tab_inSert[2],Tab_inSert[3],Tab_inSert[4],Tab_inSert[5],
Tab_inSert[6],
Tab_inSert[7])	
end


--------------------------------------------
---------Trang bi xanh---------------
--------------------------------------------

function func_blueItem()
	local sInfo = "<color=red>HÖ thèng<color>: Xin mêi <color=orange>[ "..GetName().." ]<color> tr¶i nghiÖm"
	local Tab_inSert = {
			"Vò KhÝ./PL_BlueEquipA",
			"Y Phôc./PL_BlueEquipA",
			"NhÉn./PL_BlueEquipA",
			"H¹ng Liªn./PL_BlueEquipA",
			"Hµi Tö./PL_BlueEquipA",
			"Yªu §¸i./PL_BlueEquipA",
			"§Ønh M¹o./PL_BlueEquipA",
			"Hé UyÓn./PL_BlueEquipA",
			"Ngäc Béi./PL_BlueEquipA",
			"Trë vÒ tr­íc./func_blueItem",
			"Tho¸t ra./no",
		}
	Say(sInfo,getn(Tab_inSert),Tab_inSert[1],Tab_inSert[2],Tab_inSert[3],Tab_inSert[4],Tab_inSert[5],Tab_inSert[6],Tab_inSert[7],Tab_inSert[8],Tab_inSert[9],Tab_inSert[10],Tab_inSert[11])	
end
----------------------------
--
----------------------------
function PL_BlueEquipA(nSel)
	local sInfo = "<color=red>HÖ thèng<color>: Xin mêi <color=orange>[ "..GetName().." ]<color> tr¶i nghiÖm"
	if(nSel == 0) then
		local Tab_inSert = {
			"Tr­êng KiÕm./PL_Weapon",
			"§¬n §ao./PL_Weapon",
			"C«n-Bæng./PL_Weapon",
			"Th­¬ng-KÝch./PL_Weapon",
			"Song Chïy./PL_Weapon",
			"Song §ao./PL_Weapon",
			"Phi Tiªu./PL_Weapon",
			"Phi §ao./PL_Weapon",
			"Tô TiÔn./PL_Weapon",
			"Trë vÒ tr­íc./func_blueItem",
			"Tho¸t ra./no",
		}
	Say(sInfo,getn(Tab_inSert),Tab_inSert[1],Tab_inSert[2],Tab_inSert[3],Tab_inSert[4],Tab_inSert[5],Tab_inSert[6],Tab_inSert[7],Tab_inSert[8],Tab_inSert[9],Tab_inSert[10],Tab_inSert[11])	
	elseif(nSel == 1) then
		local Tab_inSert = {
			"Nam./PL_Armor",
			"N÷./PL_Armor",
			"Trë vÒ tr­íc./func_blueItem",
			"Tho¸t ra./no",
		}
	Say(sInfo,getn(Tab_inSert),Tab_inSert[1],Tab_inSert[2],Tab_inSert[3],Tab_inSert[4])	
	elseif(nSel == 2) then
		local Tab_inSert = {
			"CÊp 1./PL_Ring",
			"CÊp 2./PL_Ring",
			"CÊp 3./PL_Ring",
			"CÊp 4./PL_Ring",
			"CÊp 5./PL_Ring",
			"CÊp 6./PL_Ring",
			"CÊp 7./PL_Ring",
			"CÊp 8./PL_Ring",
			"CÊp 9./PL_Ring",
			"CÊp 10./PL_Ring",
			"Trë vÒ tr­íc./func_blueItem",
			"Tho¸t ra./no",
		}
	Say(sInfo,getn(Tab_inSert),Tab_inSert[1],Tab_inSert[2],Tab_inSert[3],Tab_inSert[4],Tab_inSert[5],Tab_inSert[6],Tab_inSert[7],Tab_inSert[8],Tab_inSert[9],Tab_inSert[10],Tab_inSert[11],Tab_inSert[12])	
	elseif(nSel == 3) then	
		local Tab_inSert = {
			"Nam./PL_Amulet",
			"N÷./PL_Amulet",
			"Trë vÒ tr­íc./func_blueItem",
			"Tho¸t ra./no",
		}
	Say(sInfo,getn(Tab_inSert),Tab_inSert[1],Tab_inSert[2],Tab_inSert[3],Tab_inSert[4])	
	elseif(nSel == 4) then	
		local Tab_inSert = {
			"Nam./PL_Boot",
			"N÷./PL_Boot",
			"Trë vÒ tr­íc./func_blueItem",
			"Tho¸t ra./no",
		}
	Say(sInfo,getn(Tab_inSert),Tab_inSert[1],Tab_inSert[2],Tab_inSert[3],Tab_inSert[4])	
	elseif(nSel == 5) then
		local Tab_inSert = {
			"§ai Da./PL_Belt",
			"§ai Kim Lo¹i./PL_Belt",
			"Trë vÒ tr­íc./func_blueItem",
			"Tho¸t ra./no",
		}
	Say(sInfo,getn(Tab_inSert),Tab_inSert[1],Tab_inSert[2],Tab_inSert[3],Tab_inSert[4])	
	elseif(nSel == 6) then	
		local Tab_inSert = {
			"Nam./PL_Helm",
			"N÷./PL_Helm",
			"Trë vÒ tr­íc./func_blueItem",
			"Tho¸t ra./no",
		}
	Say(sInfo,getn(Tab_inSert),Tab_inSert[1],Tab_inSert[2],Tab_inSert[3],Tab_inSert[4])	
	elseif(nSel == 7) then	
		local Tab_inSert = {
			"Nam./PL_Cuff",
			"N÷./PL_Cuff",
			"Trë vÒ tr­íc./func_blueItem",
			"Tho¸t ra./no",
		}
	Say(sInfo,getn(Tab_inSert),Tab_inSert[1],Tab_inSert[2],Tab_inSert[3],Tab_inSert[4])	
	elseif(nSel == 8) then	
		local Tab_inSert = {
			"Nam./PL_Pendant",
			"N÷./PL_Pendant",
			"Trë vÒ tr­íc./func_blueItem",
			"Tho¸t ra./no",
		}
	Say(sInfo,getn(Tab_inSert),Tab_inSert[1],Tab_inSert[2],Tab_inSert[3],Tab_inSert[4])	
	end
end
----------------------------
--
----------------------------
function PL_Weapon(nSel)
	if(nSel < 6) then
		SetTaskTemp(GMRole.Task.EQUIP_DETAIL,0)
		SetTaskTemp(GMRole.Task.EQUIP_PARTICULAR,nSel)
	else
		SetTaskTemp(GMRole.Task.EQUIP_DETAIL,1)
		SetTaskTemp(GMRole.Task.EQUIP_PARTICULAR,nSel-6)
	end
	local sInfo = "<color=gold>Hu©n Nhi<color>: Xin mêi <color=fire>[ "..GetName().." ]<color> tr¶i nghiÖm"
	local tbSay = {
			"CÊp 1./PL_WeaponA",
			"CÊp 2./PL_WeaponA",
			"CÊp 3./PL_WeaponA",
			"CÊp 4./PL_WeaponA",
			"CÊp 5./PL_WeaponA",
			"CÊp 6./PL_WeaponA",
			"CÊp 7./PL_WeaponA",
			"CÊp 8./PL_WeaponA",
			"CÊp 9./PL_WeaponA",
			"CÊp 10./PL_WeaponA",
			"Trë vÒ tr­íc./PL_BlueEquipA",
			"Tho¸t ra./no",
		}
	Say(sInfo,getn(tbSay),tbSay)
end

----------------------------
--
----------------------------
function PL_WeaponA(nSel)
	SetTaskTemp(GMRole.Task.EQUIP_LEVEL, nSel + 1)
	local sInfo = "<color=gold>Hu©n Nhi<color>: Xin mêi <color=fire>[ "..GetName().." ]<color> tr¶i nghiÖm"
	local tbSay = {
			"HÖ Kim./PL_AddEquip",
			"HÖ Méc./PL_AddEquip",
			"HÖ Thñy./PL_AddEquip",
			"HÖ Háa./PL_AddEquip",
			"HÖ Thæ./PL_AddEquip",
			"Trë vÒ tr­íc./PL_Weapon",
			"Tho¸t ra./no",
		}
	Say(sInfo,getn(tbSay),tbSay)
end

function PL_AddEquip(nSel)
	nIndex = 0;
	Tab = {}; -- Buoc phai co tab moi co the add chinh xac nIndex
	local nDetail,nParti,nLevel = 0,0,0;
	
	local		type1 , value1_1, value1_3,
				type2 , value2_1, value2_3,
				type3 , value3_1, value3_3,
				type4 , value4_1, value4_3,
				type5 , value5_1, value5_3,
				type6 , value6_1, value6_3,
				type7 , value7_1, value7_3,
				type8 , value8_1, value8_3;
	for i = 1,1 do
	local nDetail = GetTaskTemp(GMRole.Task.EQUIP_DETAIL)
	local nParti = GetTaskTemp(GMRole.Task.EQUIP_PARTICULAR)
	local nLevel = GetTaskTemp(GMRole.Task.EQUIP_LEVEL)
	nIndex = AddItem(0,0,nDetail,nParti,nLevel,nSel,0);
	--Msg2Player("nIndex"..i..": "..nIndex.." ")
	-- Msg2Player(""..nDetail.." -- "..nParti.." -- "..nLevel.." --"..nSel.."") debug_error
	if nDeltail ~= 1 then
		if(nSel == 0) then
			type1 , value1_1, value1_3,
			type2 , value2_1, value2_3,
			type3 , value3_1, value3_3,
			type4 , value4_1, value4_3,
			type5 , value5_1, value5_3,
			type6 , value6_1, value6_3,
			type7 , value7_1, value7_3,
			type8 , value8_1, value8_3
		=
			115 , 30, 0,
			121 , 30, 0,
			126 , 80, 0,
			140 , 80, 0,
			137 , 8, 0,
			101 , 20, 0,
			0 , 0, 0,
			0 , 0, 0;
		elseif(nSel == 1) then
			type1 , value1_1, value1_3,
			type2 , value2_1, value2_3,
			type3 , value3_1, value3_3,
			type4 , value4_1, value4_3,
			type5 , value5_1, value5_3,
			type6 , value6_1, value6_3,
			type7 , value7_1, value7_3,
			type8 , value8_1, value8_3
		=
			115 , 30, 0,
			125 , 30, 0,
			137 , 3, 0,
			144 , 30, 0,
			126 , 80, 0,
			103 , 25, 0,
			0 , 0, 0,
			0 , 0, 0;
		elseif(nSel == 2) then
			type1 , value1_1, value1_3,
			type2 , value2_1, value2_3,
			type3 , value3_1, value3_3,
			type4 , value4_1, value4_3,
			type5 , value5_1, value5_3,
			type6 , value6_1, value6_3,
			type7 , value7_1, value7_3,
			type8 , value8_1, value8_3
		=
			115 , 30, 0,
			123 , 50, 0,
			126 , 80, 0,
			141 , 80, 0,
			166 , 80, 0,
			102 , 20, 0,
			0 , 0, 0,
			0 , 0, 0;
		elseif(nSel == 3) then
			type1 , value1_1, value1_3,
			type2 , value2_1, value2_3,
			type3 , value3_1, value3_3,
			type4 , value4_1, value4_3,
			type5 , value5_1, value5_3,
			type6 , value6_1, value6_3,
			type7 , value7_1, value7_3,
			type8 , value8_1, value8_3
		=
			137 , 3, 0,
			142 , 80, 0,
			115 , 30, 0,
			106 , 30, 0,
			85 , 120, 0,
			0 , 0, 0,
			0 , 0, 0,
			0 , 0, 0;
		else
			type1 , value1_1, value1_3,
			type2 , value2_1, value2_3,
			type3 , value3_1, value3_3,
			type4 , value4_1, value4_3,
			type5 , value5_1, value5_3,
			type6 , value6_1, value6_3,
			type7 , value7_1, value7_3,
			type8 , value8_1, value8_3
		=
			166 , 80, 0,
			143 , 80, 0,
			136 , 3, 0,
			108 , 30, 0,
			58 , 1, 0,
			0 , 0, 0,
			0 , 0, 0,
			0 , 0, 0;
		end
	elseif nDeltail == 1 then
	if(nSel == 0) then
		type1 , value1_1, value1_3,
		type2 , value2_1, value2_3,
		type3 , value3_1, value3_3,
		type4 , value4_1, value4_3,
		type5 , value5_1, value5_3,
		type6 , value6_1, value6_3,
		type7 , value7_1, value7_3,
		type8 , value8_1, value8_3
	=
		115 , 30, 0,
		121 , 30, 0,
		126 , 80, 0,
		140 , 80, 0,
		136 , 3, 0,
		101 , 20, 0,
		0 , 0, 0,
		0 , 0, 0;
	elseif(nSel == 1) then
		type1 , value1_1, value1_3,
		type2 , value2_1, value2_3,
		type3 , value3_1, value3_3,
		type4 , value4_1, value4_3,
		type5 , value5_1, value5_3,
		type6 , value6_1, value6_3,
		type7 , value7_1, value7_3,
		type8 , value8_1, value8_3
	=
		115 , 30, 0,
		125 , 30, 0,
		137 , 3, 0,
		144 , 30, 0,
		126 , 80, 0,
		103 , 25, 0,
		0 , 0, 0,
		0 , 0, 0;
	elseif(nSel == 2) then
		type1 , value1_1, value1_3,
		type2 , value2_1, value2_3,
		type3 , value3_1, value3_3,
		type4 , value4_1, value4_3,
		type5 , value5_1, value5_3,
		type6 , value6_1, value6_3,
		type7 , value7_1, value7_3,
		type8 , value8_1, value8_3
	=
		115 , 30, 0,
		123 , 50, 0,
		126 , 80, 0,
		141 , 80, 0,
		166 , 80, 0,
		102 , 20, 0,
		0 , 0, 0,
		0 , 0, 0;
	elseif(nSel == 3) then
		type1 , value1_1, value1_3,
		type2 , value2_1, value2_3,
		type3 , value3_1, value3_3,
		type4 , value4_1, value4_3,
		type5 , value5_1, value5_3,
		type6 , value6_1, value6_3,
		type7 , value7_1, value7_3,
		type8 , value8_1, value8_3
	=
		137 , 3, 0,
		142 , 80, 0,
		115 , 30, 0,
		106 , 30, 0,
		85 , 120, 0,
		0 , 0, 0,
		0 , 0, 0,
		0 , 0, 0;
	else
		type1 , value1_1, value1_3,
		type2 , value2_1, value2_3,
		type3 , value3_1, value3_3,
		type4 , value4_1, value4_3,
		type5 , value5_1, value5_3,
		type6 , value6_1, value6_3,
		type7 , value7_1, value7_3,
		type8 , value8_1, value8_3
	=
		166 , 80, 0,
		143 , 80, 0,
		136 , 3, 0,
		108 , 30, 0,
		58 , 1, 0,
		0 , 0, 0,
		0 , 0, 0,
		0 , 0, 0;
	end
end
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

	Tab[i] = nIndex ;
		
end

	for i = 1,getn(Tab) do
	AddItemID(Tab[i]);	
	end

end 

----------------------------
--
----------------------------
function PL_Armor(nSel)
	SetTaskTemp(GMRole.Task.SEX_CHOOSE, nSel)
	local sInfo = "<color=gold>Hu©n Nhi<color>: Xin mêi <color=fire>[ "..GetName().." ]<color> tr¶i nghiÖm"
	local tbSay = {
			"T¨ng Y•/PL_ArmorA",
			"§¹o SÜ•/PL_ArmorA",
			"S¸t thñ•/PL_ArmorA",
			"§Ñp Trai-Xinh G¸i•/PL_ArmorA",
			"Kim Gi¸p•/PL_ArmorA",
			"¡n Mµy•/PL_ArmorA",
			"Long Bµo•/PL_ArmorA",
			"Trë vÒ tr­íc./PL_BlueEquipA",
			"Tho¸t ra./no",
		}
	Say(sInfo,getn(tbSay),tbSay)
end
----------------------------
--
----------------------------
function PL_ArmorA(nSel)
	local nSex = GetTaskTemp(GMRole.Task.SEX_CHOOSE)
	SetTaskTemp(GMRole.Task.EQUIP_DETAIL,2)
	if(nSex == 0) then
		SetTaskTemp(GMRole.Task.EQUIP_PARTICULAR, nSel)
	else
		SetTaskTemp(GMRole.Task.EQUIP_PARTICULAR, nSel + 7)
	end
	local sInfo = "<color=gold>Hu©n Nhi<color>: Xin mêi <color=fire>[ "..GetName().." ]<color> tr¶i nghiÖm"
	local tbSay = {
			"CÊp 1./PL_ArmorB",
			"CÊp 2./PL_ArmorB",
			"CÊp 3./PL_ArmorB",
			"CÊp 4./PL_ArmorB",
			"CÊp 5./PL_ArmorB",
			"CÊp 6./PL_ArmorB",
			"CÊp 7./PL_ArmorB",
			"CÊp 8./PL_ArmorB",
			"CÊp 9./PL_ArmorB",
			"CÊp 10./PL_ArmorB",
			"Trë vÒ tr­íc./PL_Armor",
			"Tho¸t ra./no",
		}
	Say(sInfo,getn(tbSay),tbSay)
end
----------------------------
--
----------------------------

function PL_ArmorB(nSel)
	SetTaskTemp(GMRole.Task.EQUIP_LEVEL, nSel + 1)
	local sInfo = "<color=gold>Hu©n Nhi<color>: Xin mêi <color=fire>[ "..GetName().." ]<color> tr¶i nghiÖm"
	local tbSay = {
			"HÖ Kim./PL_AddEquipArmor",
			"HÖ Méc./PL_AddEquipArmor",
			"HÖ Thñy./PL_AddEquipArmor",
			"HÖ Háa./PL_AddEquipArmor",
			"HÖ Thæ./PL_AddEquipArmor",
			"Trë vÒ tr­íc./PL_ArmorA",
			"Tho¸t ra./no",
		}
	Say(sInfo,getn(tbSay),tbSay)
end
----------------------------
--
----------------------------
function PL_AddEquipArmor(nSel)
	nIndex = 0;
	Tab = {}; -- Buoc phai co tab moi co the add chinh xac nIndex
	local nDetail,nParti,nLevel = 0,0,0;
	
	local		type1 , value1_1, value1_3,
				type2 , value2_1, value2_3,
				type3 , value3_1, value3_3,
				type4 , value4_1, value4_3,
				type5 , value5_1, value5_3,
				type6 , value6_1, value6_3,
				type7 , value7_1, value7_3,
				type8 , value8_1, value8_3;
	for i = 1,1 do
	local nDetail = GetTaskTemp(GMRole.Task.EQUIP_DETAIL)
	local nParti = GetTaskTemp(GMRole.Task.EQUIP_PARTICULAR)
	local nLevel = GetTaskTemp(GMRole.Task.EQUIP_LEVEL)
	nIndex = AddItem(0,0,nDetail,nParti,nLevel,nSel,0);
	--Msg2Player("nIndex"..i..": "..nIndex.." ")
	-- Msg2Player(""..nDetail.." -- "..nParti.." -- "..nLevel.." --"..nSel.."") debug_error
	if(nSel == 0) then
		type1 , value1_1, value1_3,
		type2 , value2_1, value2_3,
		type3 , value3_1, value3_3,
		type4 , value4_1, value4_3,
		type5 , value5_1, value5_3,
		type6 , value6_1, value6_3,
		type7 , value7_1, value7_3,
		type8 , value8_1, value8_3
	=
		113 , 30, 50,
		101 , 20, 0,
		85 , 120, 0,
		134 , 10, 0,
		88 , 3, 0,
		0 , 0, 0,
		0 , 0, 0,
		0 , 0, 0;
	elseif(nSel == 1) then
		type1 , value1_1, value1_3,
		type2 , value2_1, value2_3,
		type3 , value3_1, value3_3,
		type4 , value4_1, value4_3,
		type5 , value5_1, value5_3,
		type6 , value6_1, value6_3,
		type7 , value7_1, value7_3,
		type8 , value8_1, value8_3
	=
		85 , 120, 0,
		103 , 25, 0,
		113 , 30, 0,
		134 , 10, 0,
		117 , 10, 0,
		0 , 0, 0,
		0 , 0, 0,
		0 , 0, 0;
	elseif(nSel == 2) then
		type1 , value1_1, value1_3,
		type2 , value2_1, value2_3,
		type3 , value3_1, value3_3,
		type4 , value4_1, value4_3,
		type5 , value5_1, value5_3,
		type6 , value6_1, value6_3,
		type7 , value7_1, value7_3,
		type8 , value8_1, value8_3
	=
		89 , 120, 0,
		102 , 20, 0,
		88 , 3, 0,
		99 , 15, 0,
		113 , 30, 0,
		110 , 30, 0,
		0 , 0, 0,
		0 , 0, 0;
	elseif(nSel == 3) then
		type1 , value1_1, value1_3,
		type2 , value2_1, value2_3,
		type3 , value3_1, value3_3,
		type4 , value4_1, value4_3,
		type5 , value5_1, value5_3,
		type6 , value6_1, value6_3,
		type7 , value7_1, value7_3,
		type8 , value8_1, value8_3
	=
		113 , 30, 0,
		106 , 30, 0,
		117 , 10, 0,
		104 , 20, 0,
		85 , 120, 0,
		98 , 15, 0,
		0 , 0, 0,
		0 , 0, 0;
	else
		type1 , value1_1, value1_3,
		type2 , value2_1, value2_3,
		type3 , value3_1, value3_3,
		type4 , value4_1, value4_3,
		type5 , value5_1, value5_3,
		type6 , value6_1, value6_3,
		type7 , value7_1, value7_3,
		type8 , value8_1, value8_3
	=
		88 , 3, 0,
		105 , 25, 0,
		85 , 120, 0,
		108 , 40, 0,
		113 , 40, 0,
		0 , 0, 0,
		0 , 0, 0,
		0 , 0, 0;
	end
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

	Tab[i] = nIndex ;
		
end

	for i = 1,getn(Tab) do
	AddItemID(Tab[i]);	
	end

end
----------------------------
--
----------------------------
function PL_Boot(nSel)
	SetTaskTemp(GMRole.Task.SEX_CHOOSE, nSel)
	local sInfo = "<color=gold>Hu©n Nhi<color>: Xin mêi <color=fire>[ "..GetName().." ]<color> tr¶i nghiÖm"
	local tbSay = {
			"Giµy Cá./PL_BootA",
			"Giµy Da./PL_BootA",
			"Trë vÒ tr­íc./PL_BlueEquipA",
			"Tho¸t ra./no",
		}
	Say(sInfo,getn(tbSay),tbSay)
end

----------------------------
--
----------------------------
function PL_BootA(nSel)
	local nSex = GetTaskTemp(GMRole.Task.SEX_CHOOSE)
	SetTaskTemp(GMRole.Task.EQUIP_DETAIL,5)
	if(nSex == 0) then
		SetTaskTemp(GMRole.Task.EQUIP_PARTICULAR, nSel)
	else
		SetTaskTemp(GMRole.Task.EQUIP_PARTICULAR, nSel + 2)
	end
	local sInfo = "<color=gold>Hu©n Nhi<color>: Xin mêi <color=fire>[ "..GetName().." ]<color> tr¶i nghiÖm"
	local tbSay = {
			"CÊp 1./PL_BootB",
			"CÊp 2./PL_BootB",
			"CÊp 3./PL_BootB",
			"CÊp 4./PL_BootB",
			"CÊp 5./PL_BootB",
			"CÊp 6./PL_BootB",
			"CÊp 7./PL_BootB",
			"CÊp 8./PL_BootB",
			"CÊp 9./PL_BootB",
			"CÊp 10./PL_BootB",
			"Trë vÒ tr­íc./PL_Boot",
			"Tho¸t ra./no",
		}
	Say(sInfo,getn(tbSay),tbSay)
end

----------------------------
--
----------------------------
function PL_BootB(nSel)
	SetTaskTemp(GMRole.Task.EQUIP_LEVEL, nSel + 1)
	local sInfo = "<color=gold>Hu©n Nhi<color>: Xin mêi <color=fire>[ "..GetName().." ]<color> tr¶i nghiÖm"
	local tbSay = {
			"HÖ Kim./PL_AddEquipBoot",
			"HÖ Méc./PL_AddEquipBoot",
			"HÖ Thñy./PL_AddEquipBoot",
			"HÖ Háa./PL_AddEquipBoot",
			"HÖ Thæ./PL_AddEquipBoot",
			"Trë vÒ tr­íc./PL_BootA",
			"Tho¸t ra./no",
		}
	Say(sInfo,getn(tbSay),tbSay)
end
----------------------------
--
----------------------------
function PL_AddEquipBoot(nSel)
	nIndex = 0;
	Tab = {}; -- Buoc phai co tab moi co the add chinh xac nIndex
	local nDetail,nParti,nLevel = 0,0,0;
	
	local		type1 , value1_1, value1_3,
				type2 , value2_1, value2_3,
				type3 , value3_1, value3_3,
				type4 , value4_1, value4_3,
				type5 , value5_1, value5_3,
				type6 , value6_1, value6_3,
				type7 , value7_1, value7_3,
				type8 , value8_1, value8_3;
	for i = 1,1 do
	local nDetail = GetTaskTemp(GMRole.Task.EQUIP_DETAIL)
	local nParti = GetTaskTemp(GMRole.Task.EQUIP_PARTICULAR)
	local nLevel = GetTaskTemp(GMRole.Task.EQUIP_LEVEL)
	nIndex = AddItem(0,0,nDetail,nParti,nLevel,nSel,0);
	--Msg2Player("nIndex"..i..": "..nIndex.." ")
	-- Msg2Player(""..nDetail.." -- "..nParti.." -- "..nLevel.." --"..nSel.."") debug_error
	if(nSel == 0) then
		type1 , value1_1, value1_3,
		type2 , value2_1, value2_3,
		type3 , value3_1, value3_3,
		type4 , value4_1, value4_3,
		type5 , value5_1, value5_3,
		type6 , value6_1, value6_3,
		type7 , value7_1, value7_3,
		type8 , value8_1, value8_3
	=
		111 , 30, 0,
		101 , 20, 0,
		85 , 120, 0,
		134 , 10, 0,
		88 , 3, 0,
		0 , 0, 0,
		0 , 0, 0,
		0 , 0, 0;
	elseif(nSel == 1) then
		type1 , value1_1, value1_3,
		type2 , value2_1, value2_3,
		type3 , value3_1, value3_3,
		type4 , value4_1, value4_3,
		type5 , value5_1, value5_3,
		type6 , value6_1, value6_3,
		type7 , value7_1, value7_3,
		type8 , value8_1, value8_3
	=
		85 , 120, 0,
		103 , 25, 0,
		111 , 30, 0,
		134 , 10, 0,
		89 , 120, 0,
		0 , 0, 0,
		0 , 0, 0,
		0 , 0, 0;
	elseif(nSel == 2) then
		type1 , value1_1, value1_3,
		type2 , value2_1, value2_3,
		type3 , value3_1, value3_3,
		type4 , value4_1, value4_3,
		type5 , value5_1, value5_3,
		type6 , value6_1, value6_3,
		type7 , value7_1, value7_3,
		type8 , value8_1, value8_3
	=
		89 , 120, 0,
		102 , 25, 0,
		88 , 3, 0,
		110 , 40, 0,
		111 , 40, 0,
		99 , 15, 0,
		0 , 0, 0,
		0 , 0, 0;
	elseif(nSel == 3) then
		type1 , value1_1, value1_3,
		type2 , value2_1, value2_3,
		type3 , value3_1, value3_3,
		type4 , value4_1, value4_3,
		type5 , value5_1, value5_3,
		type6 , value6_1, value6_3,
		type7 , value7_1, value7_3,
		type8 , value8_1, value8_3
	=
		111 , 30, 0,
		106 , 30, 0,
		89 , 120, 0,
		104 , 20, 0,
		85 , 120, 0,
		98 , 15, 0,
		0 , 0, 0,
		0 , 0, 0;
	else
		type1 , value1_1, value1_3,
		type2 , value2_1, value2_3,
		type3 , value3_1, value3_3,
		type4 , value4_1, value4_3,
		type5 , value5_1, value5_3,
		type6 , value6_1, value6_3,
		type7 , value7_1, value7_3,
		type8 , value8_1, value8_3
	=
		88 , 3, 0,
		105 , 20, 0,
		85 , 120, 0,
		108 , 30, 0,
		111 , 30, 0,
		0 , 0, 0,
		0 , 0, 0,
		0 , 0, 0;
	end
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

	Tab[i] = nIndex ;
		
end

	for i = 1,getn(Tab) do
	AddItemID(Tab[i]);	
	end

end
----------------------------
--
----------------------------
function PL_Belt(nSel)
	SetTaskTemp(GMRole.Task.EQUIP_DETAIL,6)
	SetTaskTemp(GMRole.Task.EQUIP_PARTICULAR, nSel)
	local sInfo = "<color=gold>Hu©n Nhi<color>: Xin mêi <color=fire>[ "..GetName().." ]<color> tr¶i nghiÖm"
	local tbSay = {
			"CÊp 1./PL_BeltA",
			"CÊp 2./PL_BeltA",
			"CÊp 3./PL_BeltA",
			"CÊp 4./PL_BeltA",
			"CÊp 5./PL_BeltA",
			"CÊp 6./PL_BeltA",
			"CÊp 7./PL_BeltA",
			"CÊp 8./PL_BeltA",
			"CÊp 9./PL_BeltA",
			"CÊp 10./PL_BeltA",
			"Trë vÒ tr­íc./PL_BlueEquipA",
			"Tho¸t ra./no",
		}
	Say(sInfo,getn(tbSay),tbSay)
end

----------------------------
--
----------------------------
function PL_BeltA(nSel)
	SetTaskTemp(GMRole.Task.EQUIP_LEVEL, nSel + 1)
	local sInfo = "<color=gold>Hu©n Nhi<color>: Xin mêi <color=fire>[ "..GetName().." ]<color> tr¶i nghiÖm"
	local tbSay = {
			"HÖ Kim./PL_AddEquipBelt",
			"HÖ Méc./PL_AddEquipBelt",
			"HÖ Thñy./PL_AddEquipBelt",
			"HÖ Háa./PL_AddEquipBelt",
			"HÖ Thæ./PL_AddEquipBelt",
			"Trë vÒ tr­íc./PL_Belt",
			"Tho¸t ra./no",
		}
	Say(sInfo,getn(tbSay),tbSay)
end
----------------------------
--
----------------------------
function PL_AddEquipBelt(nSel)
	nIndex = 0;
	Tab = {}; -- Buoc phai co tab moi co the add chinh xac nIndex
	local nDetail,nParti,nLevel = 0,0,0;
	
	local		type1 , value1_1, value1_3,
				type2 , value2_1, value2_3,
				type3 , value3_1, value3_3,
				type4 , value4_1, value4_3,
				type5 , value5_1, value5_3,
				type6 , value6_1, value6_3,
				type7 , value7_1, value7_3,
				type8 , value8_1, value8_3;
	for i = 1,1 do
	local nDetail = GetTaskTemp(GMRole.Task.EQUIP_DETAIL)
	local nParti = GetTaskTemp(GMRole.Task.EQUIP_PARTICULAR)
	local nLevel = GetTaskTemp(GMRole.Task.EQUIP_LEVEL)
	nIndex = AddItem(0,0,nDetail,nParti,nLevel,nSel,0);
	--Msg2Player("nIndex"..i..": "..nIndex.." ")
	-- Msg2Player(""..nDetail.." -- "..nParti.." -- "..nLevel.." --"..nSel.."") debug_error
	if(nSel == 0) then
		type1 , value1_1, value1_3,
		type2 , value2_1, value2_3,
		type3 , value3_1, value3_3,
		type4 , value4_1, value4_3,
		type5 , value5_1, value5_3,
		type6 , value6_1, value6_3,
		type7 , value7_1, value7_3,
		type8 , value8_1, value8_3
	=
		89 , 120, 0,
		101 , 20, 0,
		85 , 120, 0,
		134 , 10, 0,
		88 , 3, 0,
		0 , 0, 0,
		0 , 0, 0,
		0 , 0, 0;
	elseif(nSel == 1) then
		type1 , value1_1, value1_3,
		type2 , value2_1, value2_3,
		type3 , value3_1, value3_3,
		type4 , value4_1, value4_3,
		type5 , value5_1, value5_3,
		type6 , value6_1, value6_3,
		type7 , value7_1, value7_3,
		type8 , value8_1, value8_3
	=
		85 , 120, 0,
		103 , 25, 0,
		88 , 3, 0,
		134 , 10, 0,
		89 , 120, 0,
		0 , 0, 0,
		0 , 0, 0,
		0 , 0, 0;
	elseif(nSel == 2) then
		type1 , value1_1, value1_3,
		type2 , value2_1, value2_3,
		type3 , value3_1, value3_3,
		type4 , value4_1, value4_3,
		type5 , value5_1, value5_3,
		type6 , value6_1, value6_3,
		type7 , value7_1, value7_3,
		type8 , value8_1, value8_3
	=
		89 , 120, 0,
		102 , 20, 0,
		88 , 3, 0,
		110 , 30, 0,
		85 , 120, 0,
		99 , 15, 0,
		0 , 0, 0,
		0 , 0, 0;
	elseif(nSel == 3) then
		type1 , value1_1, value1_3,
		type2 , value2_1, value2_3,
		type3 , value3_1, value3_3,
		type4 , value4_1, value4_3,
		type5 , value5_1, value5_3,
		type6 , value6_1, value6_3,
		type7 , value7_1, value7_3,
		type8 , value8_1, value8_3
	=
		88 , 3, 0,
		106 , 40, 0,
		89 , 120, 0,
		104 , 25, 0,
		85 , 120, 0,
		98 , 15, 0,
		0 , 0, 0,
		0 , 0, 0;
	else
		type1 , value1_1, value1_3,
		type2 , value2_1, value2_3,
		type3 , value3_1, value3_3,
		type4 , value4_1, value4_3,
		type5 , value5_1, value5_3,
		type6 , value6_1, value6_3,
		type7 , value7_1, value7_3,
		type8 , value8_1, value8_3
	=
		88 , 3, 0,
		105 , 20, 0,
		85 , 120, 0,
		108 , 30, 0,
		89 , 120, 0,
		0 , 0, 0,
		0 , 0, 0,
		0 , 0, 0;
	end
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

	Tab[i] = nIndex ;
		
end

	for i = 1,getn(Tab) do
	AddItemID(Tab[i]);	
	end

end

----------------------------
--
----------------------------
function PL_Helm(nSel)
	SetTaskTemp(GMRole.Task.SEX_CHOOSE, nSel)
	local sInfo = "<color=gold>Hu©n Nhi<color>: Xin mêi <color=fire>[ "..GetName().." ]<color> tr¶i nghiÖm"
	local tbSay = {
			"T¨ng Y•/PL_HelmA",
			"§¹o SÜ•/PL_HelmA",
			"S¸t thñ•/PL_HelmA",
			"§Ñp Trai-Xinh G¸i•/PL_HelmA",
			"Kim Gi¸p•/PL_HelmA",
			"¡n Mµy•/PL_HelmA",
			"Long Bµo•/PL_HelmA",
			"Trë vÒ tr­íc./PL_BlueEquipA",
			"Tho¸t ra./no",
		}
	Say(sInfo,getn(tbSay),tbSay)
end

----------------------------
--
----------------------------
function PL_HelmA(nSel)
	local nSex = GetTaskTemp(GMRole.Task.SEX_CHOOSE)
	SetTaskTemp(GMRole.Task.EQUIP_DETAIL,7)
	if(nSex == 0) then
		SetTaskTemp(GMRole.Task.EQUIP_PARTICULAR, nSel)
	else
		SetTaskTemp(GMRole.Task.EQUIP_PARTICULAR, nSel + 7)
	end
	local sInfo = "<color=gold>Hu©n Nhi<color>: Xin mêi <color=fire>[ "..GetName().." ]<color> tr¶i nghiÖm"
	local tbSay = {
			"CÊp 1./PL_HelmB",
			"CÊp 2./PL_HelmB",
			"CÊp 3./PL_HelmB",
			"CÊp 4./PL_HelmB",
			"CÊp 5./PL_HelmB",
			"CÊp 6./PL_HelmB",
			"CÊp 7./PL_HelmB",
			"CÊp 8./PL_HelmB",
			"CÊp 9./PL_HelmB",
			"CÊp 10./PL_HelmB",
			"Trë vÒ tr­íc./PL_Helm",
			"Tho¸t ra./no",
		}
	Say(sInfo,getn(tbSay),tbSay)
end

----------------------------
--
----------------------------
function PL_HelmB(nSel)
	SetTaskTemp(GMRole.Task.EQUIP_LEVEL, nSel + 1)
	local sInfo = "<color=gold>Hu©n Nhi<color>: Xin mêi <color=fire>[ "..GetName().." ]<color> tr¶i nghiÖm"
	local tbSay = {
			"HÖ Kim./PL_AddEquipHelm",
			"HÖ Méc./PL_AddEquipHelm",
			"HÖ Thñy./PL_AddEquipHelm",
			"HÖ Háa./PL_AddEquipHelm",
			"HÖ Thæ./PL_AddEquipHelm",
			"Trë vÒ tr­íc./PL_HelmA",
			"Tho¸t ra./no",
		}
	Say(sInfo,getn(tbSay),tbSay)
end
----------------------------
--
----------------------------
function PL_AddEquipHelm(nSel)
	nIndex = 0;
	Tab = {}; -- Buoc phai co tab moi co the add chinh xac nIndex
	local nDetail,nParti,nLevel = 0,0,0;
	
	local		type1 , value1_1, value1_3,
				type2 , value2_1, value2_3,
				type3 , value3_1, value3_3,
				type4 , value4_1, value4_3,
				type5 , value5_1, value5_3,
				type6 , value6_1, value6_3,
				type7 , value7_1, value7_3,
				type8 , value8_1, value8_3;
	for i = 1,1 do
	local nDetail = GetTaskTemp(GMRole.Task.EQUIP_DETAIL)
	local nParti = GetTaskTemp(GMRole.Task.EQUIP_PARTICULAR)
	local nLevel = GetTaskTemp(GMRole.Task.EQUIP_LEVEL)
	nIndex = AddItem(0,0,nDetail,nParti,nLevel,nSel,0);
	--Msg2Player("nIndex"..i..": "..nIndex.." ")
	-- Msg2Player(""..nDetail.." -- "..nParti.." -- "..nLevel.." --"..nSel.."") debug_error
	if(nSel == 0) then
		type1 , value1_1, value1_3,
		type2 , value2_1, value2_3,
		type3 , value3_1, value3_3,
		type4 , value4_1, value4_3,
		type5 , value5_1, value5_3,
		type6 , value6_1, value6_3,
		type7 , value7_1, value7_3,
		type8 , value8_1, value8_3
	=
		89 , 120, 0,
		101 , 20, 0,
		85 , 120, 0,
		134 , 10, 0,
		88 , 3, 0,
		0 , 0, 0,
		0 , 0, 0,
		0 , 0, 0;
	elseif(nSel == 1) then
		type1 , value1_1, value1_3,
		type2 , value2_1, value2_3,
		type3 , value3_1, value3_3,
		type4 , value4_1, value4_3,
		type5 , value5_1, value5_3,
		type6 , value6_1, value6_3,
		type7 , value7_1, value7_3,
		type8 , value8_1, value8_3
	=
		85 , 120, 0,
		103 , 25, 0,
		88 , 3, 0,
		134 , 10, 0,
		89 , 120, 0,
		0 , 0, 0,
		0 , 0, 0,
		0 , 0, 0;
	elseif(nSel == 2) then
		type1 , value1_1, value1_3,
		type2 , value2_1, value2_3,
		type3 , value3_1, value3_3,
		type4 , value4_1, value4_3,
		type5 , value5_1, value5_3,
		type6 , value6_1, value6_3,
		type7 , value7_1, value7_3,
		type8 , value8_1, value8_3
	=
		89 , 120, 0,
		102 , 20, 0,
		88 , 3, 0,
		99 , 15, 0,
		85 , 120, 0,
		110 , 30, 0,
		0 , 0, 0,
		0 , 0, 0;
	elseif(nSel == 3) then
		type1 , value1_1, value1_3,
		type2 , value2_1, value2_3,
		type3 , value3_1, value3_3,
		type4 , value4_1, value4_3,
		type5 , value5_1, value5_3,
		type6 , value6_1, value6_3,
		type7 , value7_1, value7_3,
		type8 , value8_1, value8_3
	=
		88 , 3, 0,
		106 , 30, 0,
		89 , 120, 0,
		104 , 20, 0,
		85 , 120, 0,
		98 , 15, 0,
		0 , 0, 0,
		0 , 0, 0;
	else
		type1 , value1_1, value1_3,
		type2 , value2_1, value2_3,
		type3 , value3_1, value3_3,
		type4 , value4_1, value4_3,
		type5 , value5_1, value5_3,
		type6 , value6_1, value6_3,
		type7 , value7_1, value7_3,
		type8 , value8_1, value8_3
	=
		88 , 3, 0,
		105 , 20, 0,
		85 , 120, 0,
		108 , 30, 0,
		89 , 120, 0,
		0 , 0, 0,
		0 , 0, 0,
		0 , 0, 0;
	end
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

	Tab[i] = nIndex ;
		
end

	for i = 1,getn(Tab) do
	AddItemID(Tab[i]);	
	end

end
----------------------------
--
----------------------------
function PL_Cuff(nSel)
	SetTaskTemp(GMRole.Task.SEX_CHOOSE, nSel)
	local nSex = GetTaskTemp(GMRole.Task.SEX_CHOOSE)
	SetTaskTemp(GMRole.Task.EQUIP_DETAIL,8)
	if(nSex == 0) then
		SetTaskTemp(GMRole.Task.EQUIP_PARTICULAR, 1)
	else
		SetTaskTemp(GMRole.Task.EQUIP_PARTICULAR, 0)
	end
	local sInfo = "<color=gold>Hu©n Nhi<color>: Xin mêi <color=fire>[ "..GetName().." ]<color> tr¶i nghiÖm"
	local tbSay = {
			"CÊp 1./PL_CuffA",
			"CÊp 2./PL_CuffA",
			"CÊp 3./PL_CuffA",
			"CÊp 4./PL_CuffA",
			"CÊp 5./PL_CuffA",
			"CÊp 6./PL_CuffA",
			"CÊp 7./PL_CuffA",
			"CÊp 8./PL_CuffA",
			"CÊp 9./PL_CuffA",
			"CÊp 10./PL_CuffA",
			"Trë vÒ tr­íc./PL_BlueEquipA",
			"Tho¸t ra./no",
		}
	Say(sInfo,getn(tbSay),tbSay)
end

----------------------------
--
----------------------------
function PL_CuffA(nSel)
	SetTaskTemp(GMRole.Task.EQUIP_LEVEL, nSel + 1)
	local sInfo = "<color=gold>Hu©n Nhi<color>: Xin mêi <color=fire>[ "..GetName().." ]<color> tr¶i nghiÖm"
	local tbSay = {
			"HÖ Kim./PL_AddEquipCuff",
			"HÖ Méc./PL_AddEquipCuff",
			"HÖ Thñy./PL_AddEquipCuff",
			"HÖ Háa./PL_AddEquipCuff",
			"HÖ Thæ./PL_AddEquipCuff",
			"Trë vÒ tr­íc./PL_Cuff",
			"Tho¸t ra./no",
		}
	Say(sInfo,getn(tbSay),tbSay)
end
----------------------------
--
----------------------------
function PL_AddEquipCuff(nSel)
	nIndex = 0;
	Tab = {}; -- Buoc phai co tab moi co the add chinh xac nIndex
	local nDetail,nParti,nLevel = 0,0,0;
	
	local		type1 , value1_1, value1_3,
				type2 , value2_1, value2_3,
				type3 , value3_1, value3_3,
				type4 , value4_1, value4_3,
				type5 , value5_1, value5_3,
				type6 , value6_1, value6_3,
				type7 , value7_1, value7_3,
				type8 , value8_1, value8_3;
	for i = 1,1 do
	local nDetail = GetTaskTemp(GMRole.Task.EQUIP_DETAIL)
	local nParti = GetTaskTemp(GMRole.Task.EQUIP_PARTICULAR)
	local nLevel = GetTaskTemp(GMRole.Task.EQUIP_LEVEL)
	nIndex = AddItem(0,0,nDetail,nParti,nLevel,nSel,0);
	--Msg2Player("nIndex"..i..": "..nIndex.." ")
	-- Msg2Player(""..nDetail.." -- "..nParti.." -- "..nLevel.." --"..nSel.."") debug_error
if(nSel == 0) then
		type1 , value1_1, value1_3,
		type2 , value2_1, value2_3,
		type3 , value3_1, value3_3,
		type4 , value4_1, value4_3,
		type5 , value5_1, value5_3,
		type6 , value6_1, value6_3,
		type7 , value7_1, value7_3,
		type8 , value8_1, value8_3
	=
		89 , 120, 0,
		101 , 20, 0,
		85 , 120, 0,
		134 , 10, 0,
		88 , 3, 0,
		0 , 0, 0,
		0 , 0, 0,
		0 , 0, 0;
	elseif(nSel == 1) then
		type1 , value1_1, value1_3,
		type2 , value2_1, value2_3,
		type3 , value3_1, value3_3,
		type4 , value4_1, value4_3,
		type5 , value5_1, value5_3,
		type6 , value6_1, value6_3,
		type7 , value7_1, value7_3,
		type8 , value8_1, value8_3
	=
		85 , 120, 0,
		103 , 25, 0,
		88 , 3, 0,
		134 , 10, 0,
		89 , 120, 0,
		0 , 0, 0,
		0 , 0, 0,
		0 , 0, 0;
	elseif(nSel == 2) then
		type1 , value1_1, value1_3,
		type2 , value2_1, value2_3,
		type3 , value3_1, value3_3,
		type4 , value4_1, value4_3,
		type5 , value5_1, value5_3,
		type6 , value6_1, value6_3,
		type7 , value7_1, value7_3,
		type8 , value8_1, value8_3
	=
		89 , 120, 0,
		102 , 20, 0,
		88 , 3, 0,
		110 , 30, 0,
		85 , 120, 0,
		99 , 15, 0,
		0 , 0, 0,
		0 , 0, 0;
	elseif(nSel == 3) then
		type1 , value1_1, value1_3,
		type2 , value2_1, value2_3,
		type3 , value3_1, value3_3,
		type4 , value4_1, value4_3,
		type5 , value5_1, value5_3,
		type6 , value6_1, value6_3,
		type7 , value7_1, value7_3,
		type8 , value8_1, value8_3
	=
		88 , 3, 0,
		106 , 30, 0,
		89 , 120, 0,
		104 , 20, 0,
		85 , 120, 0,
		98 , 15, 0,
		0 , 0, 0,
		0 , 0, 0;
	else
		type1 , value1_1, value1_3,
		type2 , value2_1, value2_3,
		type3 , value3_1, value3_3,
		type4 , value4_1, value4_3,
		type5 , value5_1, value5_3,
		type6 , value6_1, value6_3,
		type7 , value7_1, value7_3,
		type8 , value8_1, value8_3
	=
		88 , 3, 0,
		105 , 20, 0,
		85 , 120, 0,
		108 , 30, 0,
		89 , 120, 0,
		0 , 0, 0,
		0 , 0, 0,
		0 , 0, 0;
	end
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

	Tab[i] = nIndex ;
		
end

	for i = 1,getn(Tab) do
	AddItemID(Tab[i]);	
	end

end

----------------------------
--
----------------------------
function PL_Ring(nSel)
	SetTaskTemp(GMRole.Task.EQUIP_DETAIL,3)
	SetTaskTemp(GMRole.Task.EQUIP_PARTICULAR, 0)
	SetTaskTemp(GMRole.Task.EQUIP_LEVEL, nSel + 1)
	local sInfo = "<color=gold>Hu©n Nhi<color>: Xin mêi <color=fire>[ "..GetName().." ]<color> tr¶i nghiÖm"
	local tbSay = {
			"HÖ Kim./PL_AddEquipRing",
			"HÖ Méc./PL_AddEquipRing",
			"HÖ Thñy./PL_AddEquipRing",
			"HÖ Háa./PL_AddEquipRing",
			"HÖ Thæ./PL_AddEquipRing",
			"Trë vÒ tr­íc./PL_BlueEquipA",
			"Tho¸t ra./no",
		}
	Say(sInfo,getn(tbSay),tbSay)
end


----------------------------
--
----------------------------
function PL_AddEquipRing(nSel)
	nIndex = 0;
	Tab = {}; -- Buoc phai co tab moi co the add chinh xac nIndex
	local nDetail,nParti,nLevel = 0,0,0;
	
	local		type1 , value1_1, value1_3,
				type2 , value2_1, value2_3,
				type3 , value3_1, value3_3,
				type4 , value4_1, value4_3,
				type5 , value5_1, value5_3,
				type6 , value6_1, value6_3,
				type7 , value7_1, value7_3,
				type8 , value8_1, value8_3;
	for i = 1,1 do
	local nDetail = GetTaskTemp(GMRole.Task.EQUIP_DETAIL)
	local nParti = GetTaskTemp(GMRole.Task.EQUIP_PARTICULAR)
	local nLevel = GetTaskTemp(GMRole.Task.EQUIP_LEVEL)
	nIndex = AddItem(0,0,nDetail,nParti,nLevel,nSel,0);
	--Msg2Player("nIndex"..i..": "..nIndex.." ")
	-- Msg2Player(""..nDetail.." -- "..nParti.." -- "..nLevel.." --"..nSel.."") debug_error
if(nSel == 0) then
		type1 , value1_1, value1_3,
		type2 , value2_1, value2_3,
		type3 , value3_1, value3_3,
		type4 , value4_1, value4_3,
		type5 , value5_1, value5_3,
		type6 , value6_1, value6_3,
		type7 , value7_1, value7_3,
		type8 , value8_1, value8_3
	=
		89 , 150, 0,
		97 , 5, 0,
		85 , 150, 0,
		101 , 25, 0,
		96 , 3, 0,
		0 , 0, 0,
		0 , 0, 0,
		0 , 0, 0;
	elseif(nSel == 1) then
		type1 , value1_1, value1_3,
		type2 , value2_1, value2_3,
		type3 , value3_1, value3_3,
		type4 , value4_1, value4_3,
		type5 , value5_1, value5_3,
		type6 , value6_1, value6_3,
		type7 , value7_1, value7_3,
		type8 , value8_1, value8_3
	=
		93 , 63, 0,
		135 , 10, 0,
		85 , 76, 0,
		103 , 8, 0,
		0 , 0, 0,
		0 , 0, 0,
		0 , 0, 0,
		0 , 0, 0;
	elseif(nSel == 2) then
		type1 , value1_1, value1_3,
		type2 , value2_1, value2_3,
		type3 , value3_1, value3_3,
		type4 , value4_1, value4_3,
		type5 , value5_1, value5_3,
		type6 , value6_1, value6_3,
		type7 , value7_1, value7_3,
		type8 , value8_1, value8_3
	=
		89 , 150, 0,
		99 , 20, 0,
		96 , 9, 0,
		110 , 40, 0,
		93 , 120, 0,
		134 , 15, 0,
		0 , 0, 0,
		0 , 0, 0;
	elseif(nSel == 3) then
		type1 , value1_1, value1_3,
		type2 , value2_1, value2_3,
		type3 , value3_1, value3_3,
		type4 , value4_1, value4_3,
		type5 , value5_1, value5_3,
		type6 , value6_1, value6_3,
		type7 , value7_1, value7_3,
		type8 , value8_1, value8_3
	=
		85 , 150, 0,
		98 , 7, 0,
		93,150,0,
		106 , 40, 0,
		96 , 9, 0,
		0 , 0, 0,
		0 , 0, 0,
		0 , 0, 0;
	else
		type1 , value1_1, value1_3,
		type2 , value2_1, value2_3,
		type3 , value3_1, value3_3,
		type4 , value4_1, value4_3,
		type5 , value5_1, value5_3,
		type6 , value6_1, value6_3,
		type7 , value7_1, value7_3,
		type8 , value8_1, value8_3
	=
		96 , 9, 0,
		108 , 40, 0,
		93 , 150, 0,
		105 , 7, 0,
		85 , 150, 0,
		134 , 15, 0,
		0 , 0, 0,
		0 , 0, 0;
	end
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

	Tab[i] = nIndex ;
		
end

	for i = 1,getn(Tab) do
	AddItemID(Tab[i]);		
	end

end
----------------------------
--
----------------------------
function PL_Amulet(nSel)
	SetTaskTemp(GMRole.Task.SEX_CHOOSE, nSel)
	local nSex = GetTaskTemp(GMRole.Task.SEX_CHOOSE)
	SetTaskTemp(GMRole.Task.EQUIP_DETAIL,4)
	if(nSex == 0) then
		SetTaskTemp(GMRole.Task.EQUIP_PARTICULAR, 1)
	else
		SetTaskTemp(GMRole.Task.EQUIP_PARTICULAR, 0)
	end
	local sInfo = "<color=gold>Hu©n Nhi<color>: Xin mêi <color=fire>[ "..GetName().." ]<color> tr¶i nghiÖm"
	local tbSay = {
			"CÊp 1./PL_AmuletA",
			"CÊp 2./PL_AmuletA",
			"CÊp 3./PL_AmuletA",
			"CÊp 4./PL_AmuletA",
			"CÊp 5./PL_AmuletA",
			"CÊp 6./PL_AmuletA",
			"CÊp 7./PL_AmuletA",
			"CÊp 8./PL_AmuletA",
			"CÊp 9./PL_AmuletA",
			"CÊp 10./PL_AmuletA",
			"Trë vÒ tr­íc./PL_BlueEquipA",
			"Tho¸t ra./no",
		}
	Say(sInfo,getn(tbSay),tbSay)
end

----------------------------
--
----------------------------
function PL_AmuletA(nSel)
	SetTaskTemp(GMRole.Task.EQUIP_LEVEL, nSel + 1)
	local sInfo = "<color=gold>Hu©n Nhi<color>: Xin mêi <color=fire>[ "..GetName().." ]<color> tr¶i nghiÖm"
	local tbSay = {
			"HÖ Kim./PL_AddEquipAmulet",
			"HÖ Méc./PL_AddEquipAmulet",
			"HÖ Thñy./PL_AddEquipAmulet",
			"HÖ Háa./PL_AddEquipAmulet",
			"HÖ Thæ./PL_AddEquipAmulet",
			"Trë vÒ tr­íc./PL_Amulet",
			"Tho¸t ra./no",
		}
	Say(sInfo,getn(tbSay),tbSay)
end
function PL_AddEquipAmulet(nSel)
	nIndex = 0;
	Tab = {}; -- Buoc phai co tab moi co the add chinh xac nIndex
	local nDetail,nParti,nLevel = 0,0,0;
	
	local		type1 , value1_1, value1_3,
				type2 , value2_1, value2_3,
				type3 , value3_1, value3_3,
				type4 , value4_1, value4_3,
				type5 , value5_1, value5_3,
				type6 , value6_1, value6_3,
				type7 , value7_1, value7_3,
				type8 , value8_1, value8_3;
	for i = 1,1 do
	local nDetail = GetTaskTemp(GMRole.Task.EQUIP_DETAIL)
	local nParti = GetTaskTemp(GMRole.Task.EQUIP_PARTICULAR)
	local nLevel = GetTaskTemp(GMRole.Task.EQUIP_LEVEL)
	nIndex = AddItem(0,0,nDetail,nParti,nLevel,nSel,0);
	--Msg2Player("nIndex"..i..": "..nIndex.." ")
	-- Msg2Player(""..nDetail.." -- "..nParti.." -- "..nLevel.." --"..nSel.."") debug_error
	if(nSel == 0) then
		type1 , value1_1, value1_3,
		type2 , value2_1, value2_3,
		type3 , value3_1, value3_3,
		type4 , value4_1, value4_3,
		type5 , value5_1, value5_3,
		type6 , value6_1, value6_3,
		type7 , value7_1, value7_3,
		type8 , value8_1, value8_3
	=
		89 , 150, 0,
		97 , 7, 0,
		85 , 150, 0,
		101 , 7, 0,
		114 , 20, 0,
		0 , 0, 0,
		0 , 0, 0,
		0 , 0, 0;
	elseif(nSel == 1) then
		type1 , value1_1, value1_3,
		type2 , value2_1, value2_3,
		type3 , value3_1, value3_3,
		type4 , value4_1, value4_3,
		type5 , value5_1, value5_3,
		type6 , value6_1, value6_3,
		type7 , value7_1, value7_3,
		type8 , value8_1, value8_3
	=
		114 , 11, 0,
		135 , 10, 0,
		85 , 86, 0,
		103 , 12, 0,
		0 , 0, 0,
		0 , 0, 0,
		0 , 0, 0,
		0 , 0, 0;
	elseif(nSel == 2) then
		type1 , value1_1, value1_3,
		type2 , value2_1, value2_3,
		type3 , value3_1, value3_3,
		type4 , value4_1, value4_3,
		type5 , value5_1, value5_3,
		type6 , value6_1, value6_3,
		type7 , value7_1, value7_3,
		type8 , value8_1, value8_3
	=
		89 , 150, 0,
		99 , 20, 0,
		96 , 9, 0,
		110 , 40, 0,
		114 , 20, 0,
		134 , 15, 0,
		0 , 0, 0,
		0 , 0, 0;
	elseif(nSel == 3) then
		type1 , value1_1, value1_3,
		type2 , value2_1, value2_3,
		type3 , value3_1, value3_3,
		type4 , value4_1, value4_3,
		type5 , value5_1, value5_3,
		type6 , value6_1, value6_3,
		type7 , value7_1, value7_3,
		type8 , value8_1, value8_3
	=
		85 , 150, 0,
		98 , 20, 0,
		114,20,0,
		106 , 40, 0,
		96 , 9, 0,
		0 , 0, 0,
		0 , 0, 0,
		0 , 0, 0;
	else
		type1 , value1_1, value1_3,
		type2 , value2_1, value2_3,
		type3 , value3_1, value3_3,
		type4 , value4_1, value4_3,
		type5 , value5_1, value5_3,
		type6 , value6_1, value6_3,
		type7 , value7_1, value7_3,
		type8 , value8_1, value8_3
	=
		96 , 9, 0,
		108 , 40, 0,
		114 , 20, 0,
		105 , 7, 0,
		85 , 150, 0,
		134 , 15, 0,
		0 , 0, 0,
		0 , 0, 0;
	end
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

	Tab[i] = nIndex ;
		
end

	for i = 1,getn(Tab) do
	AddItemID(Tab[i]);	
	end

end

----------------------------
--
----------------------------
function PL_Pendant(nSel)
	SetTaskTemp(GMRole.Task.SEX_CHOOSE, nSel)
	local nSex = GetTaskTemp(GMRole.Task.SEX_CHOOSE)
	SetTaskTemp(GMRole.Task.EQUIP_DETAIL,9)
	if(nSex == 0) then
		SetTaskTemp(GMRole.Task.EQUIP_PARTICULAR, 1)
	else
		SetTaskTemp(GMRole.Task.EQUIP_PARTICULAR, 0)
	end
	local sInfo = "<color=gold>Hu©n Nhi<color>: Xin mêi <color=fire>[ "..GetName().." ]<color> tr¶i nghiÖm"
	local tbSay = {
			"CÊp 1./PL_PendantA",
			"CÊp 2./PL_PendantA",
			"CÊp 3./PL_PendantA",
			"CÊp 4./PL_PendantA",
			"CÊp 5./PL_PendantA",
			"CÊp 6./PL_PendantA",
			"CÊp 7./PL_PendantA",
			"CÊp 8./PL_PendantA",
			"CÊp 9./PL_PendantA",
			"CÊp 10./PL_PendantA",
			"Trë vÒ tr­íc./PL_BlueEquipA",
			"Tho¸t ra./no",
		}
	Say(sInfo,getn(tbSay),tbSay)
end

----------------------------
--
----------------------------
function PL_PendantA(nSel)
	SetTaskTemp(GMRole.Task.EQUIP_LEVEL, nSel + 1)
	local sInfo = "<color=gold>Hu©n Nhi<color>: Xin mêi <color=fire>[ "..GetName().." ]<color> tr¶i nghiÖm"
	local tbSay = {
			"HÖ Kim./PL_AddEquipPendant",
			"HÖ Méc./PL_AddEquipPendant",
			"HÖ Thñy./PL_AddEquipPendant",
			"HÖ Háa./PL_AddEquipPendant",
			"HÖ Thæ./PL_AddEquipPendant",
			"Trë vÒ tr­íc./PL_AddEquipPendant",
			"Tho¸t ra./no",
		}
	Say(sInfo,getn(tbSay),tbSay)
end
----------------------------
--
----------------------------
function PL_AddEquipPendant(nSel)
	nIndex = 0;
	Tab = {}; -- Buoc phai co tab moi co the add chinh xac nIndex
	local nDetail,nParti,nLevel = 0,0,0;
	
	local		type1 , value1_1, value1_3,
				type2 , value2_1, value2_3,
				type3 , value3_1, value3_3,
				type4 , value4_1, value4_3,
				type5 , value5_1, value5_3,
				type6 , value6_1, value6_3,
				type7 , value7_1, value7_3,
				type8 , value8_1, value8_3;
	for i = 1,1 do
	local nDetail = GetTaskTemp(GMRole.Task.EQUIP_DETAIL)
	local nParti = GetTaskTemp(GMRole.Task.EQUIP_PARTICULAR)
	local nLevel = GetTaskTemp(GMRole.Task.EQUIP_LEVEL)
	nIndex = AddItem(0,0,nDetail,nParti,nLevel,nSel,0);
	--Msg2Player("nIndex"..i..": "..nIndex.." ")
	-- Msg2Player(""..nDetail.." -- "..nParti.." -- "..nLevel.." --"..nSel.."") debug_error
if(nSel == 0) then
		type1 , value1_1, value1_3,
		type2 , value2_1, value2_3,
		type3 , value3_1, value3_3,
		type4 , value4_1, value4_3,
		type5 , value5_1, value5_3,
		type6 , value6_1, value6_3,
		type7 , value7_1, value7_3,
		type8 , value8_1, value8_3
	=
		89 , 150, 0,
		97 , 20, 0,
		85 , 150, 0,
		101 , 25, 0,
		96 , 3, 0,
		0 , 0, 0,
		0 , 0, 0,
		0 , 0, 0;
	elseif(nSel == 1) then
		type1 , value1_1, value1_3,
		type2 , value2_1, value2_3,
		type3 , value3_1, value3_3,
		type4 , value4_1, value4_3,
		type5 , value5_1, value5_3,
		type6 , value6_1, value6_3,
		type7 , value7_1, value7_3,
		type8 , value8_1, value8_3
	=
		85 , 120, 0,
		103 , 16, 0,
		93 , 43, 0,
		135 , 10, 0,
		0 , 0, 0,
		0 , 0, 0,
		0 , 0, 0,
		0 , 0, 0;
	elseif(nSel == 2) then
		type1 , value1_1, value1_3,
		type2 , value2_1, value2_3,
		type3 , value3_1, value3_3,
		type4 , value4_1, value4_3,
		type5 , value5_1, value5_3,
		type6 , value6_1, value6_3,
		type7 , value7_1, value7_3,
		type8 , value8_1, value8_3
	=
		89 , 80, 0,
		99 , 20, 0,
		96 , 9, 0,
		110 , 20, 0,
		93 , 120, 0,
		134 , 15, 0,
		0 , 0, 0,
		0 , 0, 0;
	elseif(nSel == 3) then
		type1 , value1_1, value1_3,
		type2 , value2_1, value2_3,
		type3 , value3_1, value3_3,
		type4 , value4_1, value4_3,
		type5 , value5_1, value5_3,
		type6 , value6_1, value6_3,
		type7 , value7_1, value7_3,
		type8 , value8_1, value8_3
	=
		85 , 150, 0,
		98 , 20, 0,
		93,150,0,
		106 , 40, 0,
		96 , 9, 0,
		0 , 0, 0,
		0 , 0, 0,
		0 , 0, 0;
	else
		type1 , value1_1, value1_3,
		type2 , value2_1, value2_3,
		type3 , value3_1, value3_3,
		type4 , value4_1, value4_3,
		type5 , value5_1, value5_3,
		type6 , value6_1, value6_3,
		type7 , value7_1, value7_3,
		type8 , value8_1, value8_3
	=
		96 , 9, 0,
		108 , 40, 0,
		93 , 150, 0,
		105 , 25, 0,
		85 , 150, 0,
		134 , 15, 0,
		0 , 0, 0,
		0 , 0, 0;
	end
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

	Tab[i] = nIndex ;
		
end

	for i = 1,getn(Tab) do
	AddItemID(Tab[i]);	
	end

end

----------------------------
--
----------------------------
function PL_BasicGoldEquip()
	local sInfo = "<color=gold>Hu©n Nhi<color>: Xin mêi <color=fire>[ "..GetName().." ]<color> tr¶i nghiÖm"
	local tbSay = {
			"Kim phong./PL_BasicGoldEquipA",
			"An Bang./PL_BasicGoldEquipA",
			"§Þnh Quèc./PL_BasicGoldEquipA",
			"Thiªn Hoµng./PL_BasicGoldEquipA",
			"§éng S¸t./PL_BasicGoldEquipA",
			"Hång ¶nh./PL_BasicGoldEquipA",
			"HiÖp Cèt./PL_BasicGoldEquipA",
			"Nhu T×nh./PL_BasicGoldEquipA",
			"Trë vÒ tr­íc./WPlayer_Equip",
			"Tho¸t./no",
		}
	Say(sInfo,getn(tbSay),tbSay)
end
-- do hang kim -
function PL_PremiumGoldEquip()
	Say("<color=metal>¡n Mµy<color>: ¸i chµ! L©u l¾m råi míi thÊy Admin ghÐ th¨m kÎ hÌn nµy. T×nh h×nh server cã g× bÊt tr¾c sao?",11,
				"§å HKMP ThiÕu L©m/hkmp6",
				"§å HKMP Thiªn V­¬ng/hkmp1",
				"§å HKMP Ngò §éc/hkmp4",
				"§å HKMP §­êng M«n/hkmp5",
				"§å HKMP Nga My/hkmp2",
				"§å HKMP Thóy Yªn/hkmp3",
				"§å HKMP Thiªn NhÉn/hkmp7",
				"§å HKMP C¸i Bang/hkmp8",
				"§å HKMP Vâ §ang/hkmp9",
				"§å HKMP C«n L«n/hkmp10",
				"Trë vÒ/no")
end

function hkmp5()
Say("Xin chµo <color=wood>"..GetName().."<color>!",5,
"§­êng M«n B¨ng Hµn/dm1",
"§­êng M«n TiÓu Lý/dm2",
"§­êng M«n Bao Vò/dm3",
"§­êng M«n BÉy/dm4",
"KÕt thóc ®æi tho¹i/no")
end


function dm1()
	for i=70,74 do
	AddItemID(AddItem(2,0,i,0,0,5,0))
	end
end

function dm2()
	for i=80,84 do
	AddItemID(AddItem(2,0,i,0,0,5,0))
	end
end

function dm3()
	for i=75,79 do
	AddItemID(AddItem(2,0,i,0,0,5,0))
	end
end

function dm4()
	for i=85,89 do
	AddItemID(AddItem(2,0,i,0,0,5,0))
	end
end

function hkmp4()
Say("Xin chµo <color=wood>"..GetName().."<color>!",4,
"Ngò §éc §ao/nd1",
"Ngò §éc Ch­ëng /nd2",
"Ngò §éc Bïa /nd3",
"KÕt thóc ®æi tho¹i/no")
end


function nd1()
	for i=60,64 do
	AddItemID(AddItem(2,0,i,0,0,5,0))
	end
end

function nd2()
	for i=55,59 do
	AddItemID(AddItem(2,0,i,0,0,5,0))
	end
end

function nd3()
	for i=65,69 do
	AddItemID(AddItem(2,0,i,0,0,5,0))
	end
end


function hkmp3()
Say("Xin chµo <color=wood>"..GetName().."<color>!",3,
"Thóy Yªn §ao/ty1",
"Thóy Yªn S«ng §ao/ty2",
"KÕt thóc ®æi tho¹i/no")
end


function ty1()
	for i=45,49 do
	AddItemID(AddItem(2,0,i,0,0,5,0))
	end
end

function ty2()
	for i=50,54 do
	AddItemID(AddItem(2,0,i,0,0,5,0))
	end
end




function hkmp2()
Say("Xin chµo <color=wood>"..GetName().."<color>!",4,
"Nga My KiÕm/nm1",
"Nga My Ch­ëng /nm2",
"Nga My Buff /nm3",
"KÕt thóc ®æi tho¹i/no")
end


function nm1()
	for i=30,34 do
	AddItemID(AddItem(2,0,i,0,0,5,0))
	end
end

function nm2()
	for i=35,39 do
	AddItemID(AddItem(2,0,i,0,0,5,0))
	end
end

function nm3()
	for i=40,44 do
	AddItemID(AddItem(2,0,i,0,0,5,0))
	end
end

function hkmp1()
Say("Xin chµo <color=wood>"..GetName().."<color>!",4,
"Thiªn V­¬ng Chïy/tv1",
"Thiªn V­¬ng Th­¬ng /tv2",
"Thiªn V­¬ng §ao /tv3",
"KÕt thóc ®æi tho¹i/no")
end


function tv1()
	for i=15,19 do
	AddItemID(AddItem(2,0,i,0,0,5,0))
	end
end

function tv2()
	for i=20,24 do
	AddItemID(AddItem(2,0,i,0,0,5,0))
	end
end

function tv3()
	for i=25,29 do
	AddItemID(AddItem(2,0,i,0,0,5,0))
	end
end

function hkmp6()
Say("Xin chµo <color=wood>"..GetName().."<color>!",4,
"ThiÕu L©m QuyÒn/tl1",
"ThiÕu L©m Bæng /tl2",
"ThiÕu L©m §ao /tl3",
"KÕt thóc ®æi tho¹i/no")
end


function tl1()
	for i=0,4 do
	AddItemID(AddItem(2,0,i,0,0,5,0))
	end
end

function tl2()
	for i=5,9 do
	AddItemID(AddItem(2,0,i,0,0,5,0))
	end
end

function tl3()
	for i=10,14 do
	AddItemID(AddItem(2,0,i,0,0,5,0))
	end
end

function hkmp7()
Say("Xin chµo <color=wood>"..GetName().."<color>!",5,
"Thiªn NhÉn S¸t/boTN1",
"Thiªn NhÉn Hoµng/boTN2",
"Thiªn NhÉn ThÞ/boTN3",
"KÕt thóc ®æi tho¹i/no")
end


function boTN1()
for i=100,104 do
	AddItemID(AddItem(2,0,i,0,0,5,0))
	end
end

function boTN2()
for i=105,109 do
	AddItemID(AddItem(2,0,i,0,0,5,0))
	end
end

function boTN3()
for i=110,114 do
	AddItemID(AddItem(2,0,i,0,0,5,0))
	end
end

function hkmp8()
Say("Xin chµo <color=wood>"..GetName().."<color>!",3,
"C¸i Bang Rång/boCB1",
"C¸i Bang Bæng/boCB2",
"KÕt thóc ®æi tho¹i/no")
end


function boCB1()
for i=90,94 do
	AddItemID(AddItem(2,0,i,0,0,5,0))
	end
end

function boCB2()
for i=95,99 do
	AddItemID(AddItem(2,0,i,0,0,5,0))
	end
end

function hkmp9()
Say("Xin chµo <color=wood>"..GetName().."<color>!",3,
"Vâ §ang KhÝ/boVD1",
"Vâ §ang KiÕm/boVD2",
"KÕt thóc ®æi tho¹i/no")
end

function boVD1()
for i=115,119 do
	AddItemID(AddItem(2,0,i,0,0,5,0))
	end
end

function boVD2()
for i=120,124 do
	AddItemID(AddItem(2,0,i,0,0,5,0))
	end
end


function hkmp10()
Say("Xin chµo <color=wood>"..GetName().."<color>!",4,
"C«n L«n §ao/boCL1",
"Con L«n KiÕm/boCL2",
"C«n L«n Buff/boCL3",
"KÕt thóc ®æi tho¹i/no")
end

function boCL1()
for i=125,129 do
	AddItemID(AddItem(2,0,i,0,0,5,0))
	end
end

function boCL2()
for i=130,134 do
	AddItemID(AddItem(2,0,i,0,0,5,0))
	end
end

function boCL3()
for i=135,139 do
	AddItemID(AddItem(2,0,i,0,0,5,0))
	end
end
--- end do hoang kim 
----------------------------
--
----------------------------
function PL_BasicGoldEquipA(nSel)
	if(nSel == 0) then
		for i=176, 184 do
			AddItemID(AddItem(2,0,i,0,0,5,0))
		end
	elseif(nSel == 1) then
		for i=215, 218 do
			AddItemID(AddItem(2,0,i,0,0,5,0))
		end
	elseif(nSel == 2) then
		for i=397, 401 do
			AddItemID(AddItem(2,0,i,0,0,5,0))
		end
	elseif(nSel == 3) then
		for i=167, 175 do
			AddItemID(AddItem(2,0,i,0,0,5,0))
		end
	elseif(nSel == 4) then
		for i=142, 145 do
			AddItemID(AddItem(2,0,i,0,0,5,0))
		end
	elseif(nSel == 5) then
		for i=203, 206 do
			AddItemID(AddItem(2,0,i,0,0,5,0))
		end
	elseif(nSel == 6) then
		for i=185, 188 do
			AddItemID(AddItem(2,0,i,0,0,5,0))
		end
	elseif(nSel == 7) then
		for i=189, 192 do
			AddItemID(AddItem(2,0,i,0,0,5,0))
		end
	end
end
----------------------------
--MAT NA
----------------------------
function PL_Mask()
local TAB_MASK ={
205,125,126,443,448,265,266,267,268,269,270,271,272,477,478,
}
for i = 1,getn(TAB_MASK) do
AddItemID(AddItem(0,0,11,TAB_MASK[i],0,0,0,0))
end
end  
----------------------------
--NGUA
----------------------------
function PL_Hourse()
	local sInfo = "<color=gold>Hu©n Nhi<color>: Xin mêi <color=fire>[ "..GetName().." ]<color> tr¶i nghiÖm"
	local tbSay = {
			"B«n Tiªu/PL_HorseA",
			"Phiªn Vò/PL_HorseA",
			"Phi V©n/PL_HorseA",
			"XÝch Long C©u/PL_HorseA",
			"TuyÖt §Þa/PL_HorseA",
			"Du Huy/PL_HorseA",
			"§»ng Vô/PL_HorseA",
			"Siªu Quang/PL_HorseA",
			"Kim Tinh Hæ V­¬ng/PL_HorseA",
			"Háa Tinh Kim Hæ V­¬ng/PL_HorseA",
			"Kim Tinh B¹ch Hæ V­¬ng/PL_HorseA",
			"Long Tinh H¾c Hæ V­¬ng/PL_HorseA",
			"Trang sau/PL_HorseB",
			"Tho¸t ra./no",
		}
	Say(sInfo,getn(tbSay),tbSay)
end 
function PL_HorseB()
	local sInfo = "<color=gold>Hu©n Nhi<color>: Xin mêi <color=fire>[ "..GetName().." ]<color> tr¶i nghiÖm"
	local tbSay = {
			"H·n HuyÕt Long C©u/PL_HorseBS",
			"Phong V©n B¹ch M·/PL_HorseBS",
			"Phong V©n ChiÕn M·/PL_HorseBS",
			"Phong V©n ThÇn M·/PL_HorseBS",
			"S­ tö/PL_HorseBS",
			"L¹c ®µ/PL_HorseBS",
			"D­¬ng §µ/PL_HorseBS",
			"TuÇn Léc/PL_HorseBS",
			"D­¬ng Sa/PL_HorseBS",
			"Ngù Phong/PL_HorseBS",
			"Truy ®iÖn/PL_HorseBS",
			"L­u Tinh/PL_HorseBS",
			-- "Siªu Quang/PL_HorseA",
			--"Trang sau/PL_Horse",
			"Tho¸t ra./no",
		}
	Say(sInfo,getn(tbSay),tbSay)
end

function PL_HorseA(nSel)
local nSel = nSel + 6
AddItemID(AddItem(0,0,10,nSel,10,0,0,0))
end
function PL_HorseBS(nSel)
local nSel = nSel + 18
AddItemID(AddItem(0,0,10,nSel,10,0,0,0))
end
function no()
end
