Include("\\script\\lib\\worldlibrary.lua")
Include("\\script\\header\\taskid.lua")
Include("\\script\\lib\\thuvien.lua")

Include("\\script\\datascript\\congthanh\\danhsachKCL.lua")
Include("\\script\\datascript\\congthanh\\DauGiaKCL.lua")
Include("\\script\\datascript\\congthanh\\danhsachcongthanh.lua")
Include("\\script\\datascript\\congthanh\\LuuBangNhat.lua")

IDKCL = 1508
------------------------------------------
function save100()
BANG4 = TaoBang(bangnhat_bangnhat,"bangnhat_bangnhat")
LuuBang("script/datascript/congthanh/LuuBangNhat.lua",BANG4)
end

function save()
BANG1 = TaoBang(mang_daugiakcl,"mang_daugiakcl")
LuuBang("script/datascript/congthanh/DauGiaKCL.lua",BANG1)
BANG2 = TaoBang(mangkcl,"mangkcl")
LuuBang("script/datascript/congthanh/danhsachKCL.lua",BANG2)
BANG3 = TaoBang(DSCTC,"DSCTC")
LuuBang("script/datascript/congthanh/danhsachcongthanh.lua",BANG3)
end

function resetdaugia()
mang_daugiakcl = {{"0",0,0,"0",0}}
save()
end

function thongbaodaugia()
Msg2SubWorld("Chóc Mõng Bang<color=green> ["..DSCTC[vitrictc()][1][1].."] <color>®· th¾ng ®Êu gi¸ h«m nay")
Msg2SubWorld("C«ng Thµnh<color=green> ["..DSCTC[vitrictc()][1][1].."]<color> vs. Thñ Thµnh<color=green> ["..DSCTC[vitrictc()][2][1].."]<color>")
resetdaugia()
end



----------------------------------------------------------

function checkCTCName()
local tongname,TongID = GetTongName()
for i=1,getn(DSCTC) do
	if tongname == DSCTC[i][1][1] or  tongname == DSCTC[i][1][2] or  tongname == DSCTC[i][2][1] or TongID == DSCTC[i][2][2] then
		return 1
	end
end
return 0
end


function main()
--dofile("script/feature/congthanh/npccongthanh.lua")
batdauvao()
end

function batdauvao()
Hr = tonumber(date("%H"))
Mr = tonumber(date("%M"))
giay = tonumber(date("%S"))
w,x,y = GetWorldPos()
local tongname, TongID =GetTongName();
if( TongID == 0) then
	Talk(1,"","<pic=115><color=green>Ng­¬i ch­a gia nhËp Bang héi kh«ng thÓ tham gia C«ng Thµnh ChiÕn !<color>")
return end


		if (Hr == 18 and Mr <= 55) and GetTongFigure() == 3 then
			Say("Bang Héi §ang ChiÕm Thµnh :<color=green> ["..DSCTC[vitrictc()][2][1].."]<color> ",6,
			             "§Êu gi¸ Khiªu ChiÕn LÖnh/daugiakcl",
                                                       "Thu ThuÕ/thunhapthue",
			             "Xem sè l­îng Khiªu ChiÕn LÖnh /xemsl",
			             "Xem thêi gian §Êu Gi¸ /timedaugia",
			             "Xem thêi gian C«ng Thµnh ChiÕn /timectc",
			             "Tho¸t ./no")
		else
			if Hr == 20 then
				Say("Bang Héi §ang ChiÕm Thµnh :<color=green> ["..DSCTC[vitrictc()][2][1].."]<color> ",7,
				"Tham gia C«ng Thµnh ChiÕn /thamgia",
				"Giao nép khiªu chiÕn lÖnh /nopkcl",
                                                        "Thu ThuÕ/thunhapthue",
				"Xem sè l­îng Khiªu ChiÕn LÖnh /xemsl",
				"Xem thêi gian §Êu Gi¸ /timedaugia",
				"Xem thêi gian C«ng Thµnh ChiÕn /timectc",	
				"Tho¸t./no")

			else
			Say("Bang Héi §ang ChiÕm Thµnh :<color=green> ["..DSCTC[vitrictc()][2][1].."]<color> ",6,
				"Giao nép khiªu chiÕn lÖnh /nopkcl",
                                                        "Thu ThuÕ/thunhapthue",
				"Xem sè l­îng Khiªu ChiÕn LÖnh /xemsl",
				"Xem thêi gian §Êu Gi¸ /timedaugia",
				"Xem thêi gian C«ng Thµnh ChiÕn /timectc",
				"Tho¸t./no")
			end
		end	
end


function thunhapthue()
local tongname,TongID = GetTongName()
for i=1,getn(DSCTC) do
if tongname == DSCTC[i][2][1] then
thunhapthue10()
else
Talk(1,"","B¹n kh«ng ph¶i Bang héi chiÕm thµnh lÇn nµy")
end
end
end

function thunhapthue10()
if GetTongFigure() ~= 3 then
thunhapthue20()
else
Talk(1,"","ChØ cã Bang Chñ míi xem môc nµy")
end
end


function thunhapthue20()
local tongname,TongID = GetTongName()
for i=1,getn(DSCTC) do
if tongname == DSCTC[i][2][1] then
Say("Bang Héi ChiÕm Thµnh :<color=green> ["..DSCTC[vitrictc()][2][1].."]<color> ",3,
"NhËn TiÒn ThuÕ/nhantienthue",
"t×m hiÓu/timhieuthuthue",
"Tho¸t./no")
end
end
end



function nhantienthue()
if GetTask(TASK_THUTHUE) == 0 then
Earn(random(10000000,90000000))
SetTask(TASK_THUTHUE , 1 ) 
else
Talk(1,"","H«m Nay B¹n §· thu thuÕ råi mµ, ngµy mai h·y ®Õn")
end
end

function timhieuthuthue()
Talk(1,"","B¹n sÏ nhËn ®­îc tæng tÊt c¶ c¸c thuÕ xuÊt ®­îc thu tõ bÊt kú nguån giao dÞch nµo ph¸t sinh trong server.")
end


function timedaugia()
Talk(1,"","Thêi gian ®Êu gi¸ b¾t ®Çu tõ 18h00 > 18h30 , 19h c«ng bè kÕt qu¶... t¹i NPC Qu¶n Lý Bang Héi c¸c thµnh thÞ.")
end
function timectc()
Talk(1,"","Thêi gian ®Êu gi¸ b¾t ®Çu tõ 20h00 - 22h00 t¹i NPC Qu¶n Lý Bang Héi c¸c thµnh thÞ .")
end



function daugiakcl()
if GetTongFigure() ~= 3 then
Talk(1,"","B¹n kh«ng ph¶i lµ <color=red>Bang Chñ <color>. Kh«ng cã quyÒn tham gia ®Êu gi¸ !")
return
end

if checkCTCName() == 1 then
Talk(1,"","Bang héi b¹n ®ang dÉn ®Çu,hoÆc ®· cã trong danh s¸ch c«ng thµnh. h·y chê ®îi!")
return
end


if check_daugiakcl() == 0 then
local tongname, TongID = GetTongName();
mang_daugiakcl[getn(mang_daugiakcl)+1] = {tongname,0,TongID,GetName(),GetUUID()}
Msg2Player("Khëi t¹o §Êu Gi¸ KCL thµnh c«ng !")
end
Input("daugiakcl2",999999)
end

function daugiakcl2(num)
Hr = tonumber(date("%H"))
Mr = tonumber(date("%M"))
giay = tonumber(date("%S"))


num2 = tonumber(num)
if check_daugiakcl() == 0 then
local tongname, TongID = GetTongName();
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	mang_daugiakcl[getn(mang_daugiakcl)+1] = {tongname,0,TongID(),GetName(),GetUUID()}
	Msg2Player("Khëi t¹o §Êu Gi¸ KCL thµnh c«ng !")
else
	vtbang = checkbang()
	vt_daugia = check_daugiakcl()
	sl = mangkcl[vtbang][2]
	if num2 > sl then
	Talk(1,"","Sè l­îng Khiªu ChiÕn LÖnh trong Bang Héi ®· hÕt !")
	return
	end

	if num2 == 0 or num2 == nil then
	Talk(1,"","Kh«ng ®­îc ®Ó trèng ! ")
	return
	end
	mangkcl[vtbang][2] = mangkcl[vtbang][2] - num2
	if  mangkcl[vtbang][2] == (sl-num2) then
		mang_daugiakcl[vt_daugia][2] =  mang_daugiakcl[vt_daugia][2] + num2
		Msg2Player("B¹n ®· ®Êu gi¸ thªm "..num2.." Khiªu ChiÕn LÖnh ")
		Msg2Player("Khiªu ChiÕn LÖnh ®· ®Êu gi¸: "..mang_daugiakcl[vt_daugia][2].." ")
Msg2SubWorld("Bang héi ®ang dÉn ®Çu b¶ng ®Êu gi¸ lµ : <color=yellow>"..mang_daugiakcl[check_hang_nhat()][1].."<color> ");
DSCTC[vitritt()][1][1] = mang_daugiakcl[check_hang_nhat()][1]
DSCTC[vitritt()][1][2] = mang_daugiakcl[check_hang_nhat()][3]
DSCTC[vitritt()][1][3] = mang_daugiakcl[check_hang_nhat()][4]
DSCTC[vitritt()][1][4] = mang_daugiakcl[check_hang_nhat()][5]		

for i=1,getn(bangnhat_bangnhat) do
bangnhat_bangnhat[1][1] = mang_daugiakcl[check_hang_nhat()][1]
bangnhat_bangnhat[1][2] = mang_daugiakcl[check_hang_nhat()][3]
bangnhat_bangnhat[1][3] = mang_daugiakcl[check_hang_nhat()][4]
bangnhat_bangnhat[1][4] = mang_daugiakcl[check_hang_nhat()][5]
save()
save100()
Talk(0,"")
end
else
Talk(1,"","hack ha em")
end
end
end

----------------------------------------------------------------------------------------------------------------------------------------
function vitrictc()
return 1
end
function vitritt()
return 1
end

function check_hang_nhat()
vt_hang = 1
max = mang_daugiakcl[1][2]
for i=1,getn(mang_daugiakcl) do
	if mang_daugiakcl[i][2] > max then
		max = mang_daugiakcl[i][2]
		vt_hang = i
	end
end
return vt_hang
end


function check_daugiakcl()
local tongname,TongID = GetTongName()
vt_check = 0
for i=1,getn(mang_daugiakcl) do
	if tongname == mang_daugiakcl[i][1] and TongID == mang_daugiakcl[i][3] then
	vt_check = i
	break
	end
end
return vt_check
end

function checkbang()
local tongname,TongID = GetTongName()
vitri = 0
local nCount = getn(mangkcl)
for i=1, nCount do
if tongname == mangkcl[i][1] and TongID == mangkcl[i][3]then
vitri = i
break
end
end
return vitri
end

function nopkcl()
Input("nopkcl2",100)
end

function nopkcl2(num)
local tongname,TongID = GetTongName()
ngay = tonumber(date("%d"))
if GetTask(NGAYTHANGCTC) ~= ngay then
SetTask(TASK_NOP_KCL,0)
end
num2 = tonumber(num)
if checkbang() == 0 then
	mangkcl[getn(mangkcl)+1] = {tongname,0,TongID}
	save()
	Msg2Player("Khëi t¹o KCL thµnh c«ng !")
else
	vitri_kcl = checkbang()
	sl = GetItemCount(0,6,IDKCL)
	if num2 > sl then
		Talk(1,"","Khiªu chiÕn lÖnh trong hµnh trang kh«ng ®ñ !")
	return
	end
	if num2 == 0 or num2 == nil then
	Talk(1,"","Kh«ng ®­îc ®Ó trèng ! ")
	return
	end
	if (GetTask(TASK_NOP_KCL)+num2) > 200 then
	Talk(1,"","V­ît qu¸ giíi h¹n 200 c¸i !")
	return end
		DelItem(num2,0,6,IDKCL)
		if GetItemCount(0,6,IDKCL) == (sl-num2) then
			mangkcl[vitri_kcl ][2] = mangkcl[vitri_kcl ][2]+num2
			save()
			SetTask(TASK_NOP_KCL,GetTask(TASK_NOP_KCL)+num2)
			Msg2Player("B¹n ®· giao nép thµnh c«ng "..num2.." Khiªu ChiÕn LÖnh !")
			AddOwnExp(num2*250000)
			Msg2Player("B¹n nhËn ®­îc "..(num2*250000).." kinh nghiÖm ")
                                          save()
			Talk(0,"")
		else
			Talk(1,"","<color=red>TÝnh Hack h¶ vÞ §¹i HiÖp nµy !<color>")
		end
end
end



function xemsl()
local tongname,TongID = GetTongName()
if checkbang() == 0 then
	mangkcl[getn(mangkcl)+1] = {tongname,0,TongID}
	Msg2Player("Khëi t¹o KCL thµnh c«ng !")
else
	vt = checkbang()
	if GetTongFigure() >= 2 then
		Talk(1,"","Sè Khiªu ChiÕn LÖnh hiÖn t¹i cña Bang Héi lµ: <color=red>"..mangkcl[vt][2].."<color> ")
	else
		Talk(1,"","ChØ cã <color=red>Bang Chñ <color> hoÆc <color=red>Tr­ëng L·o<color> míi cã thÓ xem !")
	end
end
end

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function no()
end


function thamgia()
if GetGlbMissionV(9) == 0 then
end

Hr = tonumber(date("%H"))
Mr = tonumber(date("%M"))

if Hr < 19 or (Hr == 19 and Mr < 45) then
Talk(1,"","Thêi gian vµo C«ng Thµnh ChiÕn b¾t ®Çu tõ 19h45 phót !")
return
elseif Hr == 22 then
Talk(1,"","TrËn C«ng Thµnh ChiÕn h«m nay ®· kÕt thóc !")
end

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


local tongname,TongID = GetTongName()

if TongID == 0 then
Talk(1,"","<color=green>Qu¶n lý Bang héi <color>: B¹n ch­a gia nhËp bang kh«ng thÓ tham gia c«ng thµnh !")
return
end
if DSCTC[vitrictc()][1][1] == "" then
Talk(1,"","H«m nay kh«ng cã C«ng Thµnh ChiÕn do kh«ng cã Bang Héi C«ng Thµnh ")
return
end
if GetLevel() < 80 then
Talk(1,"","§¼ng cÊp d­íi 80 kh«ng thÓ tham gia C«ng Thµnh ChiÕn !")
return
end

if tongname == DSCTC[vitrictc()][1][1] and TongID == DSCTC[vitrictc()][1][2] then
	bencong()
elseif tongname == DSCTC[vitrictc()][2][1] and TongID == DSCTC[vitrictc()][2][2] then
	benthu()
else
Talk(2,"","<color=green>Qu¶n lý Bang héi <color>: Bang héi cña b¹n kh«ng cã tªn trong danh s¸ch c«ng thµnh h«m nay ",
	"C«ng thµnh bang ["..DSCTC[vitrictc()][1][1].."] - thñ thµnh bang ["..DSCTC[vitrictc()][2][1].."] ")
end
end



function bencong()
StopTimer();
SetTask(TASK_LONGTRU,0)
LeaveTeam()
SetCurCamp(2)
SetCamp(2)
SetLogoutRV(1)--dung diem phuc sinh dang nhap
SetPunish(1)	--bat tinh nang chet khong mat' gi`
SetFightState(1)
Msg2Player("Di chuyÓn ®Õn hËu ph­¬ng bªn C«ng")
NewWorld(221, 1897,3569);
 SetTask(TASK_CUACTC1,0)
 SetTask(TASK_CUACTC2,0)
 SetTask(TASK_CUACTC3,0)
end

function benthu()
StopTimer();
SetTask(TASK_LONGTRU,0)
LeaveTeam()
SetPunish(1)	--bat tinh nang chet khong mat' gi`
SetCurCamp(1)
SetCamp(1)
SetLogoutRV(1)--dung diem phuc sinh dang nhap
SetFightState(1)
Msg2Player("Di chuyÓn ®Õn hËu ph­¬ng bªn Thñ ")
NewWorld(221, 1538,3218);
 SetTask(TASK_CUACTC1,0)
 SetTask(TASK_CUACTC2,0)
 SetTask(TASK_CUACTC3,0)
end





