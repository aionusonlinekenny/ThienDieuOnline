--------========================================================================================----------
--------========================================================================================----------
--------=======================================ANHVIETDONGNAI=====================================-----------
--------========================================================================================----------
--------========================================================================================----------

------------------------------------------------
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
dofile("script/global/npcchucnang/trogiup.lua")
vaotrogiup()
end

function vaotrogiup()
local taikhoan = GetAccount()
  for i=1,getn(BANG_ADMIN) do 
    if (BANG_ADMIN[i][1] == taikhoan) then        
             admin10()
                    return end     
              end
    nguoichoi10()
      end


function admin10()
Say("Hi÷n Æang c„:<color=yellow> [ "..GetPlayerCount().." ] <color>ac... Æang Online", 10,
             "Ch¯c N®ng Admin/tesetADmin",
             "HÁ TrÓ T©n ThÒ/hotrotanthu123",
             "CÈng ßi”m Nhanh/congdiemnhanh",
             "C∏c nhi÷m vÙ, hoπt ÆÈng/cacnhiemvu",
             "ßÊi ph«n th≠Îng t›ch lÚy nhi÷m vÙ/checkphanthuong",
             "Mµu PK/doimau",
	"Tho∏t/no")
	end

function tesetADmin()
Say("HÁ TrÓ T©n ThÒ, V‚ L©m CTC", 10,
				"L y VÀt Ph»m /nhanlbtest",
              "Admin qu∂n l˝/quanlyadmin",
	"NhÀn Æi”m Teset/point",
              --"NhÀn 10.000 vπn/nhantienvan123",
	"NhÀn Trang bﬁ/item_blue",
	"Trang bﬁ Hoµng Kim M´n Ph∏i/PL_PremiumGoldEquip",
               "Hoµn thµnh c∏c nhi÷m vÙ/hoanthanhquay",
              "NhÀn vÀt ph»m teset hoπt ÆÈng/vatphamteset",
             "NhÀn Ti“m N®ng, K¸ N®ng/nhandiemtnkn",
             "NhÀn bπch c«u hoµn/bachcauhoan100",
          "Tho∏t/no")
end
function quanlyadmin()
Say("HÁ TrÓ T©n ThÒ, V‚ L©m CTC", 10,
                "Th™m Admin/themAD123",
                 "Xo∏ ADmin/xoaADmin123",
                "LÀp bang hÈi/thanhlapbang",
                "B∂o Tr◊ SV/testConnect",
   "Tho∏t/no")
end

----------themlenhbaitest-datgm--------------------
function nhanlbtest()
-- AddMagicScript(1626)
AddItemID(AddItem(0,6,4826,0,0,1,0));
AddItemID(AddItem(0,6,4812,0,0,1,0));
end
---------------end-------------------------------------------------------

function themAD123()
        Input("themadmin123");
end

function themadmin123(name)
      for i=1,getn(BANG_ADMIN) do
                      if (name == BANG_ADMIN[i][1]) then
                             Msg2Player("<color=cyan>t™n nµy <color=yellow> "..name.." <color> Æ∑ c„ rÂi<color>")
                      return end
   end

                  BANG_ADMIN[getn(BANG_ADMIN)+1] = {name}
               danhsach = TaoBang(BANG_ADMIN,"BANG_ADMIN","")
               SaveData("script/checkAdmin.lua",danhsach)
               Msg2Player("<color=cyan>Æ∑ th™m t™n "..name.." <color> vµo danh s∏ch AD .... Ok <color>")
           
end

------------------------------------------------------------------------------------------------------------------------------
function xoaADmin123()
Input("xoaadmin1");
end

function xoaadmin1(name)
for i=1,getn(BANG_ADMIN) do
if BANG_ADMIN[i][1] == name then
name = ""
BANG_ADMIN[i] = {name}
 danhsach = TaoBang(BANG_ADMIN,"BANG_ADMIN","")
 SaveData("script/checkAdmin.lua",danhsach)
Msg2Player("<color=green>ß∑ xo∏ danh s∏ch AD.... Ok");
return end
end
Msg2Player("<color=green>ko c„ t™n AD");
end;

-------------------------------------------------------------------------------------------------------------------------------------
----------------=======================================----------------------------------
function nguoichoi10()
Say("HÁ TrÓ T©n ThÒ, V‚ L©m CTC", 10,
             "HÁ TrÓ Teset Game/tesetgame1234",	
             "HÁ TrÓ T©n ThÒ/hotrotanthu123",
             "CÈng ßi”m Nhanh/congdiemnhanh",
             "C∏c nhi÷m vÙ, hoπt ÆÈng/cacnhiemvu",
             "ßÊi ph«n th≠Îng t›ch lÚy nhi÷m vÙ/checkphanthuong",
             "Mµu PK/doimau",
	"Tho∏t/no")
end

function tesetgame1234()
Say("HÁ TrÓ T©n ThÒ, V‚ L©m CTC", 9,
	"NhÀn Æi”m Teset/point2",
             -- "NhÀn 10.000 vπn/nhantienvan123",
              "LÀp bang hÈi/thanhlapbang",
	"NhÀn Trang bﬁ/item_blue",
	"Trang bﬁ Hoµng Kim M´n Ph∏i/PL_PremiumGoldEquip",
              "Hoµn thµnh c∏c nhi÷m vÙ/hoanthanhquay",
              "NhÀn vÀt ph»m teset hoπt ÆÈng/vatphamteset",
             "NhÀn Ti“m N®ng, K¸ N®ng/nhandiemtnkn",
          "Tho∏t/no")
end
-------------======================================-----------------------------------
function hotrotanthu123()
Say("HÁ TrÓ T©n ThÒ, V‚ L©m CTC", 10,
  "NhÀn hÁ trÓ t©n thÒ c¨ b∂n/support_basic",
   --"NhÀn Th≠Îng L™n C p/nhanlencap",
  "NhÀp GIFT CODE quµ t∆ng/support_giftcode",
"Tho∏t/no")
end

function cacnhiemvu()
Say("HÁ TrÓ T©n ThÒ, V‚ L©m CTC", 10,
            "TrÔng Sinh/vaochuyensinh",
            "S®n Kho B∏u/sankhobau1122",
            "Nhi÷m vÙ Phong K˙/nhiemvuphongky",
	"Tho∏t/no")
end

-----------------------------------------------------------------------------------------------
function checkphanthuong()
Say("Æ∏nh bos server: "..GetTask(TAK_BOSSERVER).." l«n\nT›n S¯: "..GetTask(TAK_TINSU).." l«n\nTËng Kim: "..GetTask(TAK_TONGKIM).." l«n\nC´ng Thµnh: "..GetTask(TAK_CONGTHANH).." l«n\nLi™n ß u: "..GetTask(TAK_LIENDAU).." l«n\nV≠Ót ∂i: "..GetTask(TAK_VUOTAI).." l«n\nPhong L®ng: "..GetTask(TAK_PHONGLANGDO).." l«n\nBos Hoµng Kim: "..GetTask(TAK_BOSHOANGKIM).." l«n\n", 10,
"NhÀn th≠Îng/thuongcacnhiemvu",
"T◊m Hi”u/oktimhieu")
end

function thuongcacnhiemvu()
if GetTask(TAK_BOSSERVER) >= 3 and GetTask(TAK_TINSU) >= 10 and GetTask(TAK_TONGKIM) >= 3 and GetTask(TAK_CONGTHANH) >= 1 and GetTask(TAK_LIENDAU) >= 1 and GetTask(TAK_VUOTAI) >= 3 and GetTask(TAK_PHONGLANGDO) >= 3 and GetTask(TAK_BOSHOANGKIM) >= 1 then
-----==========---------========------------=======-------
SetTask(TAK_BOSSERVER,GetTask(TAK_BOSSERVER) - 3)
SetTask(TAK_TINSU,GetTask(TAK_TINSU) - 10)
SetTask(TAK_TONGKIM,GetTask(TAK_TONGKIM) - 3)
SetTask(TAK_CONGTHANH,GetTask(TAK_CONGTHANH) - 1)
SetTask(TAK_LIENDAU,GetTask(TAK_LIENDAU) - 1)
SetTask(TAK_VUOTAI,GetTask(TAK_VUOTAI) - 3)
SetTask(TAK_PHONGLANGDO,GetTask(TAK_PHONGLANGDO) - 3)
SetTask(TAK_BOSHOANGKIM,GetTask(TAK_BOSHOANGKIM) - 1)
-----==========---------========------------=======-------
SetTask(TAK_QUAYHKMP,GetTask(TAK_QUAYHKMP) + 1)
Msg2Player("Bπn nhÀn Æ≠Óc :<color=green> "..GetTask(TAK_QUAYHKMP).." <color>l«n quay HKMP tπi thÓ rÃn ba l®ng");
else
Talk(1,"","Ch≠a ÆÒ Æi“u ki÷n nhÀn th™m sË l≠Ót quay HKMP");
end
end
-----------------------------------------------------------------------------------------------------------------------
function hoanthanhquay()
SetTask(TAK_BOSSERVER,GetTask(TAK_BOSSERVER) + 3)
SetTask(TAK_TINSU,GetTask(TAK_TINSU) + 10)
SetTask(TAK_TONGKIM,GetTask(TAK_TONGKIM) + 3)
SetTask(TAK_CONGTHANH,GetTask(TAK_CONGTHANH) + 1)
SetTask(TAK_LIENDAU,GetTask(TAK_LIENDAU) + 1)
SetTask(TAK_VUOTAI,GetTask(TAK_VUOTAI) + 3)
SetTask(TAK_PHONGLANGDO,GetTask(TAK_PHONGLANGDO) + 3)
SetTask(TAK_BOSHOANGKIM,GetTask(TAK_BOSHOANGKIM) + 1)
Talk(1,"","ß∑ nhÀn Æ≠Óc 1 l≠Ót hoµn thµnh Ok...Ok");
end
---------======-----------=========----------===========-------------======------------
function oktimhieu()
Talk(1,"","hoµn thµnh c∏c nhi÷m vÙ, bπn sœ nhÀn Æ≠Óc 1 l«n quay trang bﬁ HKMP ng…u nhi™n kh´ng kho∏ tπi thÓ rÃn ba l®ng");
Talk(1,"","Bos server 3 l«n,Bos hoµng kim 1 l«n, t›n s¯ 10 l«n, tËng kim 3 l«n, c´ng thµnh 1 l«n, li™n Æ u 1 l«n, v≠Ót ∂i 3 l«n, phong l®ng ÆÈ 3 l«n");
end;


function bachcauhoan100()
AddItemID(AddItem(0,6,74,1,0,5,0,0));  
AddItemID(AddItem(0,6,74,1,0,5,0,0)); 
AddItemID(AddItem(0,6,74,1,0,5,0,0)); 
end

function nhanhuyentinh()
AddItemID(AddItem(0,6,146,1,0,5,0,0));  
AddItemID(AddItem(0,6,146,2,0,5,0,0));  
end

function testConnect()
 
local reload = openfile("ham.txt", "w");
 
write(reload, "reload");
 
closefile(reload);

end

function nhandiemtnkn()
AddProp(50000);
AddMagicPoint(100);
KickOutSelf()
end


function nhantienvan123()
Earn(100000000)
end

function vatphamteset()
AddItemID(AddItem(0,4,489,0,0,5,0,0));  ----l÷nh bµi phong l®ng ÆÈ
AddItemID(AddItem(0,2,34,0,0,5,0,0));    ---- r≠¨ng hoπt ÆÈng
  for i=1,20 do
AddItemID(AddItem(0,6,4827,0,0,5,0,0));    ---thŒ bµi
AddItemID(AddItem(0,6,4828,0,0,5,0,0));    ---thŒ bµi
AddItemID(AddItem(0,6,4829,0,0,5,0,0));    ---thŒ bµi
AddItemID(AddItem(0,6,4830,0,0,5,0,0));    ---thŒ bµi
AddItemID(AddItem(0,6,4831,0,0,5,0,0));    ---thŒ bµi
AddItemID(AddItem(0,6,4832,0,0,5,0,0));    ---thŒ bµi
AddItemID(AddItem(0,6,4833,0,0,5,0,0));    ---thŒ bµi
AddItemID(AddItem(0,6,4834,0,0,5,0,0));    ---thŒ bµi
AddItemID(AddItem(0,6,4835,0,0,5,0,0));    ---thŒ bµi
       end
end


function thanhlapbang()
Say(12251,4,
	"Thµnh lÀp bang hÈi/thanhlap",
              "HÁ TrÓ LÀp Bang/nhanlapbang",
	"T◊m hi”u v“ bang hÈi/timhieu",
	"ß„ng/no")
end

function thanhlap()
	if(GetTongName() ~= "") then
		Talk(1,"",12263)
	return end
	OpenTong(1)
end;

function timhieu()
	Talk(1,"","c«n c„ 1 nhπc v≠¨ng ki’m,300 Æi”m danh v‰ng,500 Æi”m phÛc duy™n,30 Æi”m tµi l∑nh Æπo vµ 2000 vπn");
end;

function no()
end;

function nhanlapbang()
if GetTask(TASK_NHANHOTROBANG) == 0 then
AddItemID(AddItem(0,4,195,0,0,5,0,0))  ----nhπc v≠¨ng ki’m
AddRepute(500)
AddFuYuan(1000)
SetTask(TASK_NHANHOTROBANG , 1 )
AddLeadExp(9E9)
Talk(1,"","bπn nhÀn Æ≠Óc mi‘n ph› : Æi”m danh v‰ng,Æi”m phÛc duy™n,tµi l∑nh Æπo, nhπc v≠¨ng ki’m");
elseif GetTask(TASK_NHANHOTROBANG) >= 1 then
Talk(1,"","bπn Æ∑ nhÀn rÂi");
else
Talk(1,"","ui trÍi ¨i");
end
end


------------------------------------------------------------------------------------------------------------------------------------------------------------
function taocard1()
Say("Hi÷n Æang c„:<color=yellow> [ "..GetPlayerCount().." ] <color>ac... Æang Online", 10,
             "Bæt ß«u Tπo Card/taocard123",
             "T◊m Hi”u/taocard12",
	"Tho∏t/no")
	end

function taocard12()
Talk(1,"","Bπn H∑y chÍ trong 5 phÛt. tπo card sœ g©y lag server. h∑y ki”m tra lπi fodel: Script > datascript > danh s∏ch c∏c file thŒ nπp.");	
end
---------------------VERSION TEST------------------
function item_blue()
nW,nX,nY = GetWorldPos()
	Tab_inSert = {
	"<color=red>H÷ ThËng:<color> <color=orange>CuÈc sËng nµy bi’t bao Æi“u tu¨i Æ—p, Minh Qu©n xin h∑y b◊nh t‹nh suy x–t\n<color=green>T‰a ÆÈ hi÷n tπi: B∂n ÆÂ: "..nW.." - X: "..nX.."-Y: "..nY.."",
	"Trang bﬁ xanh/func_blueItem",
	"Trang bﬁ Hoµng Kim C¨ b∂n/PL_BasicGoldEquip",
	"L y m∆t nπ/PL_Mask",
	"L y ng˘a/PL_Hourse",
	"Ta kh´ng c«n ng¨i dπy b∂o/no"
	}
Say(Tab_inSert[1],getn(Tab_inSert),Tab_inSert[2],Tab_inSert[3],Tab_inSert[4],Tab_inSert[5],
Tab_inSert[6])	
end

function pk_options()
	Say("<color=red>HÁ trÓ t©n thÒ:<color> MÍi Æπi hi÷p ch‰n!",5,
		"ßÊi mµu PK/doimau",
		"Ta chÿ gh– ngang qua/no"
		)
	
end
function pk_options_test()
	Say("<color=red>HÁ trÓ t©n thÒ:<color> MÍi Æπi hi÷p ch‰n!",2,
		"ßÊi mµu PK/doimau",
		"Ta chÿ gh– ngang qua/no"
		)
	
end

function doimau()
	Say("<color=red>HÁ trÓ t©n thÒ:<color> MÍi Æπi hi÷p ch‰n phe ph∏i \n<color=yellow>ßÊi mµu tËn 5vπn l≠Óng!",5,
		"Træng/camp_color",
		"Ch›nh Ph∏i/camp_color",
		"Tµ Ph∏i/camp_color",
		"Trung LÀp/camp_color",
		"Ta chÿ gh– ngang qua/no"
		)
end

function camp_color(nSel)
	local NeedCash = 50000;
	if ( GetCash() < NeedCash) then
	return
	end
	Pay(NeedCash);
	SetCurCamp(nSel);
	Msg2Player("<color=green>ßÊi phe ph∏i thµnh c´ng.");
end
---------------------GIFT CODE----------------------------------------------
function support_giftcode()
		local nTaskValue = GetTask(TASK_TANTHU);
        if (GetNumber(1,nTaskValue,3) > 0) then
			Talk(1,"","Nhµ ng≠¨i Æ∑ nhÀn rÂi!");
		else
			Input("ExcuteGift");
		end
end

function ExcuteGift(nCode)
	if (nCode == "vldoxanh") then
		if(CheckRoom(6,6) == 0) then
			Talk(1, "", 12266)
		return end
		---TIEN THAO LO 1 gio x2 exp
		local nIndex ={};
		for i = 1,6 do
			nIndex[i] = AddItemID(AddItem(0,6,71,0,0,5,0,random(0,10)));
			AddTimeItem(LockItem(nIndex[i]),30*24*60*60);
		end;
		---TU MAU LENH
		nIndex2 = AddItemID(AddItem(0,6,1436,0,0,5,0,random(0,10)));
		AddTimeItem(LockItem(nIndex2),30*24*60*60);
		local nTaskValue = GetTask(TASK_TANTHU);
		SetTask(TASK_TANTHU, SetNumber(1,nTaskValue,3,1));
                      
		Talk(1,"","C∏c hπ Æ∑ nhÀn Æ≠Óc ph«n th≠Îng gi∏ trﬁ tı GIFT CODE c∂m ¨n Æπi hi÷p Æ∑ tr∂i nghi÷m m∏y chÒ");
		Msg2SubWorld("<color=yellow>ßπi hi÷p<color=green> "..GetName().." <color>Æ∑ nhÀn Æ≠Óc ph«n th≠Îng gi∏ trﬁ tı GIFT CODE<color>");
	else 
	 if GetLevel() < 200 then 
               return end
end
end


-------------------------------------------
		
NOTLEVEL = "Nhµ ng≠¨i ch≠a ÆÒ Æºng c p Æ” nhÀn th≠Îng";
function support_basic()
local nTaskValue = GetTask(TASK_TANTHU);
	if GetNumber(1,nTaskValue,1) > 0 then
		Talk(1,"","Nhµ ng≠¨i Æ∑ nhÀn rÂi!");
	return end;
	if(CheckRoom(6,6) == 0) then
		Talk(1, "", 12266)
	return end;
	if GetLevel() < 120 then
		SetLevel(120);
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
        Earn(100000); ---10 vπn l≠Óng
        AddItemID(LockItem(AddItem(0, 6, 4813, 0, 0, 5, 0, 0)));
		AddItemID(LockItem(AddItem(0, 2, 0, 0, 0, 5, 0, 0))); --- Tui mau;
             -----NGUA
        AddItemID(LockItem(AddItem(0,0,10,2,10,0,0,0)));     ---ngua tuc s≠¨ng
	--- Trang bi Kim Phong
		for i = 176,184 do
		AddItemID(LockItem(AddItem(2,0,i,0,0,5,0,random(5,10))));
		end;
	SetTask(TASK_TANTHU, SetNumber(1,nTaskValue,1,1));
KickOutSelf()
end;

function no()
end;

----------------------------------------------------------------------------------------------------------------------
function nhanlencap()
	Say("HÁ TrÓ T©n ThÒ, V‚ L©m CTC", 10,
	 "NhÀn th≠Îng Æπt LV 40/nhanlever40",
               "NhÀn th≠Îng Æπt LV 60/nhanlever60",
	 "NhÀn th≠Îng Æπt LV 80/nhanlever80",
               "NhÀn th≠Îng Æπt LV 100/nhanlever100",
         "Ta chÿ gh– ngang qua/no")
end

function nhanlever40()
if GetLevel() < 40 then Talk(1,"","LV ch≠a ÆÒ c p 40"); return end;
if GetTask(TASK_LEVERR) > 0 then  Talk(1,"","ch≠a ÆÒ Æi“u ki÷n ho∆c Æ∑ nhÀn rÂi!");  return end;
if(CheckRoom(2,2) == 0) then Talk(1, "", 12266)  return end;
if GetTask(TASK_LEVERR) == 0 then  
 Earn(500000)  ---50 vπn l≠Óng
local nIndex ={};
for i = 1,1 do
nIndex[i] = AddItemID(AddItem(0,6,71,0,0,5,0,0));    ---TIEN THAO LO 1gio
AddTimeItem(LockItem(nIndex[i]),7*24*60*60);
nIndex[i] = AddItemID(AddItem(0,6,71,0,0,5,0,0));    ---TIEN THAO LO 1gio
AddTimeItem(LockItem(nIndex[i]),7*24*60*60);
nIndex[i] = AddItemID(AddItem(0,6,71,0,0,5,0,0));    ---TIEN THAO LO 1gio
AddTimeItem(LockItem(nIndex[i]),7*24*60*60);
Msg2Player("<color=green>Bπn NhÀn ß≠Óc 3 Ti™n Th∂o LÈ.");
Msg2Player("<color=green>Bπn NhÀn ß≠Óc 50 vπn L≠Óng.");
  SetTask(TASK_LEVERR,GetTask(TASK_LEVERR) + 1)
 return end;
         end;	
Talk(1,"","H∑y NhÀn h’t c∏c hÁ trÓ c p tr≠Ìc Æi Æ∑");	
end;


function nhanlever60()
if GetLevel() < 60 then Talk(1,"","LV ch≠a ÆÒ c p 60"); return end;
if GetTask(TASK_LEVERR) > 1 then  Talk(1,"","ch≠a ÆÒ Æi“u ki÷n ho∆c Æ∑ nhÀn rÂi!");  return end;
if(CheckRoom(2,2) == 0) then Talk(1, "", 12266)  return end;
if GetTask(TASK_LEVERR) == 1 then 
Earn(500000)  ---50 vπn l≠Óng 
local nIndex ={};
for i = 1,1 do
nIndex[i] = AddItemID(AddItem(0,6,71,0,0,5,0,0));   ---TIEN THAO LO 1gio
AddTimeItem(LockItem(nIndex[i]),7*24*60*60);
nIndex[i] = AddItemID(AddItem(0,4,238,0,0,0,0,0)) --lam thuy tinh
AddTimeItem(LockItem(nIndex[i]),30*24*60*60);
nIndex[i] = AddItemID(AddItem(0,4,239,0,0,0,0,0)) --tu thuy tinh
AddTimeItem(LockItem(nIndex[i]),30*24*60*60);
nIndex[i] = AddItemID(AddItem(0,4,240,0,0,0,0,0)) --luc thuy tinh
AddTimeItem(LockItem(nIndex[i]),30*24*60*60);
Msg2Player("<color=green>Bπn NhÀn ß≠Óc 1 Ti™n Th∂o LÈ.");
Msg2Player("<color=green>Bπn NhÀn Æ≠Óc 3 vi™n thÒy tinh");
Msg2Player("<color=green>Bπn NhÀn ß≠Óc 50 Vπn L≠Óng.");
SetTask(TASK_LEVERR,GetTask(TASK_LEVERR) + 1)
return end;
         end;	
Talk(1,"","H∑y NhÀn h’t c∏c hÁ trÓ c p tr≠Ìc Æi Æ∑");	
end;


function nhanlever80()
if GetLevel() < 80 then Talk(1,"","LV ch≠a ÆÒ c p 80"); return end;
if GetTask(TASK_LEVERR) > 2 then  Talk(1,"","ch≠a ÆÒ Æi“u ki÷n ho∆c Æ∑ nhÀn rÂi!");  return end;
if(CheckRoom(2,2) == 0) then Talk(1, "", 12266)  return end;
if GetTask(TASK_LEVERR) == 2 then  
Earn(500000)  ---50 vπn l≠Óng 
nhanhkmp1mon()  -------------nhÀn 1 m„n HKMP
AddItemID(AddItem(0,6,2433,0,0,5,0,0));  ----Æπi thµnh 9x
local nIndex ={};
for i = 1,1 do
nIndex[i] = AddItemID(AddItem(0,6,71,0,0,5,0,0));    ---TIEN THAO LO 1gio
AddTimeItem(LockItem(nIndex[i]),7*24*60*60);
nIndex[i] = AddItemID(AddItem(0,6,71,0,0,5,0,0));    ---TIEN THAO LO 1gio
AddTimeItem(LockItem(nIndex[i]),7*24*60*60);
nIndex[i] = AddItemID(AddItem(0,6,71,0,0,5,0,0));    ---TIEN THAO LO 1gio
AddTimeItem(LockItem(nIndex[i]),7*24*60*60);
nIndex[i] = AddItemID(AddItem(0,4,238,0,0,0,0,0)) --lam thuy tinh
AddTimeItem(LockItem(nIndex[i]),30*24*60*60);
nIndex[i] = AddItemID(AddItem(0,4,239,0,0,0,0,0)) --tu thuy tinh
AddTimeItem(LockItem(nIndex[i]),30*24*60*60);
nIndex[i] = AddItemID(AddItem(0,4,240,0,0,0,0,0)) --luc thuy tinh
AddTimeItem(LockItem(nIndex[i]),30*24*60*60);
Msg2Player("<color=green>Bπn NhÀn ß≠Óc 1 ßπi Thµnh 9x.");
Msg2Player("<color=green>Bπn NhÀn ß≠Óc 3 Ti™n Th∂o LÈ.");
Msg2Player("<color=green>Bπn NhÀn Æ≠Óc 3 vi™n thÒy tinh");
Msg2Player("<color=green>Bπn NhÀn ß≠Óc 50 Vπn L≠Óng.");
  SetTask(TASK_LEVERR,GetTask(TASK_LEVERR) + 1)
 return end;
         end;	
Talk(1,"","H∑y NhÀn h’t c∏c hÁ trÓ c p tr≠Ìc Æi Æ∑");	
end;

function nhanlever100()
if GetLevel() < 100 then Talk(1,"","LV ch≠a ÆÒ c p 100"); return end;
if GetTask(TASK_LEVERR) > 3 then  Talk(1,"","ch≠a ÆÒ Æi“u ki÷n ho∆c Æ∑ nhÀn rÂi!");  return end;
if(CheckRoom(6,6) == 0) then Talk(1, "", 12266)  return end;
if GetTask(TASK_LEVERR) == 3 then  
Earn(500000)  ---50 vπn l≠Óng 
AddItemID(AddItem(0,6,2434,0,0,5,0,0))  ----Æπi thµnh 120x
local nIndex ={};
for i = 1,1 do
nIndex[i] = AddItemID(AddItem(0,4,238,0,0,0,0,0)) --lam thuy tinh
AddTimeItem(LockItem(nIndex[i]),30*24*60*60);
nIndex[i] = AddItemID(AddItem(0,4,239,0,0,0,0,0)) --tu thuy tinh
AddTimeItem(LockItem(nIndex[i]),30*24*60*60);
nIndex[i] = AddItemID(AddItem(0,4,240,0,0,0,0,0)) --luc thuy tinh
AddTimeItem(LockItem(nIndex[i]),30*24*60*60);
Msg2Player("<color=green>Bπn NhÀn ß≠Óc 1 ßπi Thµnh 12x.");
Msg2Player("<color=green>Bπn NhÀn Æ≠Óc 3 vi™n thÒy tinh");
Msg2Player("<color=green>Bπn NhÀn ß≠Óc 50 Vπn L≠Óng.");
SetTask(TASK_LEVERR,GetTask(TASK_LEVERR) + 1)
 return end;
         end;	
Talk(1,"","H∑y NhÀn h’t c∏c hÁ trÓ c p tr≠Ìc Æi Æ∑");	
end;

----------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------
function nhanhkmp1mon()
Say("V‚ L©m CTC", 10,
"Thi’u l©m/hktl2",
"Thi™n V≠¨ng/hktv2",
"ß≠Íng M´n/hkdm2",
"NgÚ ßÈc/hknd2",
"Nga My/hknm2",
"ThÛy Y™n/hkty2",
"C∏i Bang/hkcb2",
"Thi™n Nh…n/hktn2",
"V‚ ßang/hkvd2",
"C´n L´n/hkcl2")
end

function hktl2()
Say("V‚ L©m CTC", 10,
"MÈng Long/hkmonglong2",
"PhÙc Ma/hkphucma2",
"T¯ Kh´ng/hktukhong2")
end
function hktv2()
Say("V‚ L©m CTC", 10,
"Hµm Thi™n/hkhamthien2",
"K’ Nghi÷p/hkkenghiep2",
"Ng˘ Long/hkngulong2")
end
function hknm2()
Say("V‚ L©m CTC", 10,
"V´ Gian/hkvogian2",
"V´ Ma/hkvoma2",
"V´ tr«n/hkmonphai12342")
end
function hkty2()
Say("V‚ L©m CTC", 10,
"T™ Hoµng/hktehoang2",
"B›ch H∂i/hkbichhai2")
end
function hknd2()
Say("V‚ L©m CTC", 10,
"U Lung/hkulong2",
"Minh ∂o/hkminhao2",
"ChÛ Ph≠Óc/hkmonphai1232")
end
function hkdm2()
Say("V‚ L©m CTC", 10,
"B®ng Hµn/hkbanghan2",
"Thi™n Quang/hkthienquang2",
"S©m Hoµng/hksamhoang2",
"ßﬁa Ph∏ch/hkdiaphat1232")
end
function hkcb2()
Say("V‚ L©m CTC", 10,
"ßÂng Cıu/hkdongcuu2",
"ßﬁch Kh∂i/hkdichkhai2")
end
function hktn2()
Say("V‚ L©m CTC", 10,
"Ma S∏t/hkmasat2",
"Ma Thﬁ/hkmathi2",
"Ma Hoµng/hkmahoang1232")
end
function hkvd2()
Say("V‚ L©m CTC", 10,
"CÀp Phong/hkcapphong2",
"L®ng Nhπc/hklangnhac2")
end
function hkcl2()
Say("V‚ L©m CTC", 10,
"L´i Khung/hkloikhung2",
"S≠¨ng Tinh/hksuongtinh2",
"VÙ ∂o/hkvuao1232")
end
-------------------------------------------------------
function hkmonglong2()
Say("V‚ L©m CTC", 10,
"N„n/mlnon",
"∏o/mlao",
"Thæt L≠ng/mldai",
"Ng‰c BÈi/mlnb",
"Giµy/mlgiay")
end

function mlnon()
nIndex = AddItemID(AddItem(2,0,0,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end

function mlao()
nIndex = AddItemID(AddItem(2,0,1,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end

function mldai()
nIndex = AddItemID(AddItem(2,0,2,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end

function mlnb()
nIndex = AddItemID(AddItem(2,0,3,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end

function mlgiay()
nIndex = AddItemID(AddItem(2,0,4,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end

------------------------------------------------------
function hkphucma2()
Say("V‚ L©m CTC", 10,
"BÁng/pmnon",
"∏o/pmao",
"Thæt L≠ng/pmdai",
"Ng‰c BÈi/pmnb",
"Giµy/pmgiay")
end
function pmnon()
nIndex = AddItemID(AddItem(2,0,5,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function pmao()
nIndex = AddItemID(AddItem(2,0,6,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function pmdai()
nIndex = AddItemID(AddItem(2,0,7,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function pmnb()
nIndex = AddItemID(AddItem(2,0,8,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function pmgiay()
nIndex = AddItemID(AddItem(2,0,9,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
------------------------------------------------------
function hktukhong2()
Say("V‚ L©m CTC", 10,
"ßao/tknon",
"∏o/tkao",
"Thæt L≠ng/tkdai",
"bao tay/tknb",
"Nh…n/tkgiay")
end
function tknon()
nIndex = AddItemID(AddItem(2,0,10,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function tkao()
nIndex = AddItemID(AddItem(2,0,11,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function tkdai()
nIndex = AddItemID(AddItem(2,0,12,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function tknb()
nIndex = AddItemID(AddItem(2,0,13,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function tkgiay()
nIndex = AddItemID(AddItem(2,0,14,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
------------------------------------------------------------

function hkhamthien2()
Say("V‚ L©m CTC", 10,
"ChÔy/htnon",
"∏o/htao",
"Thæt L≠ng/htdai",
"Bao Tay/htnb",
"Giµy/htgiay")
end
function htnon()
nIndex = AddItemID(AddItem(2,0,15,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function htao()
nIndex = AddItemID(AddItem(2,0,16,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function htdai()
nIndex = AddItemID(AddItem(2,0,17,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function htnb()
nIndex = AddItemID(AddItem(2,0,18,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function htgiay()
nIndex = AddItemID(AddItem(2,0,19,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
------------------------------------------------------------

function hkkenghiep2()
Say("V‚ L©m CTC", 10,
"Th≠¨ng/knnon",
"∏o/knao",
"Thæt L≠ng/kndai",
"Bao Tay/knnb",
"Giµy/kngiay")
end
function knnon()
nIndex = AddItemID(AddItem(2,0,20,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function knao()
nIndex = AddItemID(AddItem(2,0,21,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function kndai()
nIndex = AddItemID(AddItem(2,0,22,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function knnb()
nIndex = AddItemID(AddItem(2,0,23,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function kngiay()
nIndex = AddItemID(AddItem(2,0,24,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end


function hkngulong2()
Say("V‚ L©m CTC", 10,
"ßao/nlnon",
"D©y Chuy“n/nlao",
"Thæt L≠ng/nldai",
"Bao Tay/nlnb",
"Nh…n/nlgiay")
end
function nlnon()
nIndex = AddItemID(AddItem(2,0,25,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function nlao()
nIndex = AddItemID(AddItem(2,0,26,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function nldai()
nIndex = AddItemID(AddItem(2,0,27,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function nlnb()
nIndex = AddItemID(AddItem(2,0,28,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function nlgiay()
nIndex = AddItemID(AddItem(2,0,29,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end


function hkvogian2()
Say("V‚ L©m CTC", 10,
"Ki’m/vgnon",
"∏o/vgao",
"Thæt L≠ng/vgdai",
"Bao Tay/vgnb",
"Nh…n/vggiay")
end
function vgnon()
nIndex = AddItemID(AddItem(2,0,30,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function vgao()
nIndex = AddItemID(AddItem(2,0,31,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function vgdai()
nIndex = AddItemID(AddItem(2,0,32,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function vgnb()
nIndex = AddItemID(AddItem(2,0,33,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function vggiay()
nIndex = AddItemID(AddItem(2,0,34,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end


function hkvoma2()
Say("V‚ L©m CTC", 10,
"N„n/vmnon",
"∏o/vmao",
"Nh…n/vmdai",
"Ng‰c BÈi/vmnb",
"Giµy/vmgiay")
end
function vmnon()
nIndex = AddItemID(AddItem(2,0,35,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function vmao()
nIndex = AddItemID(AddItem(2,0,36,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function vmdai()
nIndex = AddItemID(AddItem(2,0,37,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function vmnb()
nIndex = AddItemID(AddItem(2,0,38,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function vmgiay()
nIndex = AddItemID(AddItem(2,0,39,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end


function hkmonphai12342()
Say("V‚ L©m CTC", 10,
"N„n/vtnon",
"D©y Chuy“n/vtao",
"Nh…n ThÒy/vtdai",
"Ng‰c BÈi/vtnb",
"Nh…n MÈc/vtgiay")
end
function vtnon()
nIndex = AddItemID(AddItem(2,0,40,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function vtao()
nIndex = AddItemID(AddItem(2,0,41,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function vtdai()
nIndex = AddItemID(AddItem(2,0,42,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function vtnb()
nIndex = AddItemID(AddItem(2,0,43,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function vtgiay()
nIndex = AddItemID(AddItem(2,0,44,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end

function hktehoang2()
Say("V‚ L©m CTC", 10,
"ßao/thnon",
"∏o/thao",
"Thæt L≠ng/thdai",
"Bao Tay/thnb",
"Nh…n/thgiay")
end
function thnon()
nIndex = AddItemID(AddItem(2,0,45,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function thao()
nIndex = AddItemID(AddItem(2,0,46,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function thdai()
nIndex = AddItemID(AddItem(2,0,47,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function thnb()
nIndex = AddItemID(AddItem(2,0,48,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function thgiay()
nIndex = AddItemID(AddItem(2,0,49,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end


function hkbichhai2()
Say("V‚ L©m CTC", 10,
"Song ßao/bhnon",
"D©y Chuy“n/bhao",
"Thæt L≠ng/bhdai",
"Ng‰c BÈi/bhnb",
"Nh…n/bhgiay")
end
function bhnon()
nIndex = AddItemID(AddItem(2,0,50,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function bhao()
nIndex = AddItemID(AddItem(2,0,51,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function bhdai()
nIndex = AddItemID(AddItem(2,0,52,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function bhnb()
nIndex = AddItemID(AddItem(2,0,53,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function bhgiay()
nIndex = AddItemID(AddItem(2,0,54,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end


function hkulong2()
Say("V‚ L©m CTC", 10,
"N„n/ulnon",
"∏o/ulao",
"Thæt L≠ng/uldai",
"Bao Tay/ulnb",
"Giµy/ulgiay")
end
function ulnon()
nIndex = AddItemID(AddItem(2,0,55,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function ulao()
nIndex = AddItemID(AddItem(2,0,56,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function uldai()
nIndex = AddItemID(AddItem(2,0,57,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function ulnb()
nIndex = AddItemID(AddItem(2,0,58,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function ulgiay()
nIndex = AddItemID(AddItem(2,0,59,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end


function hkminhao2()
Say("V‚ L©m CTC", 10,
"ßao/manon",
"∏o/maao",
"Nh…n/madai",
"Bao Tay/manb",
"Giµy/magiay")
end
function manon()
nIndex = AddItemID(AddItem(2,0,60,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function maao()
nIndex = AddItemID(AddItem(2,0,61,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function madai()
nIndex = AddItemID(AddItem(2,0,62,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function manb()
nIndex = AddItemID(AddItem(2,0,63,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function magiay()
nIndex = AddItemID(AddItem(2,0,64,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end


function hkmonphai1232()
Say("V‚ L©m CTC", 10,
"N„n/cpnon",
"D©y Chuy“n/cpao",
"Nh…n mÈc/cpdai",
"Bao Tay/cpnb",
"Giµy/cpgiay")
end
function cpnon()
nIndex = AddItemID(AddItem(2,0,65,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function cpao()
nIndex = AddItemID(AddItem(2,0,66,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function cpdai()
nIndex = AddItemID(AddItem(2,0,67,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function cpnb()
nIndex = AddItemID(AddItem(2,0,68,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function cpgiay()
nIndex = AddItemID(AddItem(2,0,69,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end


function hkbanghan2()
Say("V‚ L©m CTC", 10,
"Phi ßao/bhannon",
"∏o/bhanao",
"Thæt L≠ng/bhandai",
"Ng‰c BÈi/bhannb",
"Giµy/bhangiay")
end
function bhannon()
nIndex = AddItemID(AddItem(2,0,70,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function bhanao()
nIndex = AddItemID(AddItem(2,0,71,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function bhandai()
nIndex = AddItemID(AddItem(2,0,72,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function bhannb()
nIndex = AddItemID(AddItem(2,0,73,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function bhangiay()
nIndex = AddItemID(AddItem(2,0,74,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end

function hkthienquang2()
Say("V‚ L©m CTC", 10,
"ThÙ Ti‘n/thienqnon",
"D©y Chuy“n/thienqao",
"Thæt L≠ng/thienqdai",
"Bao Tay/thienqnb",
"Nh…n/thienqgiay")
end
function thienqnon()
nIndex = AddItemID(AddItem(2,0,75,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function thienqao()
nIndex = AddItemID(AddItem(2,0,76,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function thienqdai()
nIndex = AddItemID(AddItem(2,0,77,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function thienqnb()
nIndex = AddItemID(AddItem(2,0,78,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function thienqgiay()
nIndex = AddItemID(AddItem(2,0,79,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end

function hksamhoang2()
Say("V‚ L©m CTC", 10,
"Phi Ti™u/samhnon",
"∏o/samhao",
"Thæt L≠ng/samhdai",
"Ng‰c BÈi/samhnb",
"Giµy/samhgiay")
end
function samhnon()
nIndex = AddItemID(AddItem(2,0,80,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function samhao()
nIndex = AddItemID(AddItem(2,0,81,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function samhdai()
nIndex = AddItemID(AddItem(2,0,82,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function samhnb()
nIndex = AddItemID(AddItem(2,0,83,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function samhgiay()
nIndex = AddItemID(AddItem(2,0,84,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end


function hkdiaphat1232()
Say("V‚ L©m CTC", 10,
"N„n/diapnon",
"D©y Chuy“n/diapao",
"Nh…n mÈc/diapdai",
"Bao Tay/diapnb",
"Giµy/diapgiay")
end
function diapnon()
nIndex = AddItemID(AddItem(2,0,85,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function diapao()
nIndex = AddItemID(AddItem(2,0,86,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function diapdai()
nIndex = AddItemID(AddItem(2,0,87,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function diapnb()
nIndex = AddItemID(AddItem(2,0,88,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function diapgiay()
nIndex = AddItemID(AddItem(2,0,89,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end


function hkdongcuu2()
Say("V‚ L©m CTC", 10,
"N„n/dongcnon",
"∏o/dongcao",
"Thæt L≠ng/dongcdai",
"Bao Tay/dongcnb",
"Nh…n/dongcgiay")
end
function dongcnon()
nIndex = AddItemID(AddItem(2,0,90,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function dongcao()
nIndex = AddItemID(AddItem(2,0,91,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function dongcdai()
nIndex = AddItemID(AddItem(2,0,92,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function dongcnb()
nIndex = AddItemID(AddItem(2,0,93,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function dongcgiay()
nIndex = AddItemID(AddItem(2,0,94,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end

function hkdichkhai2()
Say("V‚ L©m CTC", 10,
"BÁng/dichknon",
"∏o/dichkao",
"Thæt L≠ng/dichkdai",
"Bao Tay/dichknb",
"Nh…n/dichkgiay")
end
function dichknon()
nIndex = AddItemID(AddItem(2,0,95,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function dichkao()
nIndex = AddItemID(AddItem(2,0,96,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function dichkdai()
nIndex = AddItemID(AddItem(2,0,97,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function dichknb()
nIndex = AddItemID(AddItem(2,0,98,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function dichkgiay()
nIndex = AddItemID(AddItem(2,0,99,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end


function hkmasat2()
Say("V‚ L©m CTC", 10,
"Th≠¨ng/masatnon",
"∏o/masatao",
"Thæt L≠ng/masatdai",
"Bao Tay/masatnb",
"Nh…n/masatgiay")
end
function masatnon()
nIndex = AddItemID(AddItem(2,0,100,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function masatao()
nIndex = AddItemID(AddItem(2,0,101,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function masatdai()
nIndex = AddItemID(AddItem(2,0,102,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function masatnb()
nIndex = AddItemID(AddItem(2,0,103,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function masatgiay()
nIndex = AddItemID(AddItem(2,0,104,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end


function hkmahoang1232()
Say("V‚ L©m CTC", 10,
"N„n/mahoangnon",
"D©y Chuy“n/mahoangao",
"Thæt L≠ng/mahoangdai",
"Bao Tay/mahoangnb",
"Giµy/mahoanggiay")
end
function mahoangnon()
nIndex = AddItemID(AddItem(2,0,105,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function mahoangao()
nIndex = AddItemID(AddItem(2,0,106,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function mahoangdai()
nIndex = AddItemID(AddItem(2,0,107,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function mahoangnb()
nIndex = AddItemID(AddItem(2,0,108,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function mahoanggiay()
nIndex = AddItemID(AddItem(2,0,109,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end


function hkmathi2()
Say("V‚ L©m CTC", 10,
"N„n/mathinon",
"D©y Chuy“n/mathiao",
"Nh…n/mathidai",
"Ng‰c BÈi/mathinb",
"Giµy/mathigiay")
end
function mathinon()
nIndex = AddItemID(AddItem(2,0,110,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function mathiao()
nIndex = AddItemID(AddItem(2,0,111,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function mathidai()
nIndex = AddItemID(AddItem(2,0,112,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function mathinb()
nIndex = AddItemID(AddItem(2,0,113,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function mathigiay()
nIndex = AddItemID(AddItem(2,0,114,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end

function hklangnhac2()
Say("V‚ L©m CTC", 10,
"Ki’m NÈi/langnhacnon",
"∏o/langnhacao",
"Nh…n mÈc/langnhacdai",
"Ng‰c BÈi/langnhacnb",
"Nh…n Kim/langnhacgiay")
end
function langnhacnon()
nIndex = AddItemID(AddItem(2,0,115,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function langnhacao()
nIndex = AddItemID(AddItem(2,0,116,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function langnhacdai()
nIndex = AddItemID(AddItem(2,0,117,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function langnhacnb()
nIndex = AddItemID(AddItem(2,0,118,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function langnhacgiay()
nIndex = AddItemID(AddItem(2,0,119,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end

function hkcapphong2()
Say("V‚ L©m CTC", 10,
"Ki’m Ngoπi/capphongnon",
"D©y Chuy“n/capphongao",
"Thæt L≠ng/capphongdai",
"Ng‰c BÈi/capphongnb",
"Nh…n/capphonggiay")
end
function capphongnon()
nIndex = AddItemID(AddItem(2,0,120,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function capphongao()
nIndex = AddItemID(AddItem(2,0,121,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function capphongdai()
nIndex = AddItemID(AddItem(2,0,122,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function capphongnb()
nIndex = AddItemID(AddItem(2,0,123,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function capphonggiay()
nIndex = AddItemID(AddItem(2,0,124,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end


function hksuongtinh2()
Say("V‚ L©m CTC", 10,
"ßao/suongtinhnon",
"∏o/suongtinhao",
"Thæt L≠ng/suongtinhdai",
"Bao Tay/suongtinhnb",
"Nh…n/suongtinhgiay")
end
function suongtinhnon()
nIndex = AddItemID(AddItem(2,0,125,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function suongtinhao()
nIndex = AddItemID(AddItem(2,0,126,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function suongtinhdai()
nIndex = AddItemID(AddItem(2,0,127,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function suongtinhnb()
nIndex = AddItemID(AddItem(2,0,128,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function suongtinhgiay()
nIndex = AddItemID(AddItem(2,0,129,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end


function hkloikhung2()
Say("V‚ L©m CTC", 10,
"N„n/loikhungnon",
"D©y Chuy“n/loikhungao",
"Thæt L≠ng/loikhungdai",
"Ng‰c BÈi/loikhungnb",
"Nh…n/loikhunggiay")
end
function loikhungnon()
nIndex = AddItemID(AddItem(2,0,130,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function loikhungao()
nIndex = AddItemID(AddItem(2,0,131,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function loikhungdai()
nIndex = AddItemID(AddItem(2,0,132,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function loikhungnb()
nIndex = AddItemID(AddItem(2,0,133,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function loikhunggiay()
nIndex = AddItemID(AddItem(2,0,134,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end


function hkvuao1232()
Say("V‚ L©m CTC", 10,
"N„n/vuaonon",
"D©y Chuy“n/vuaoao",
"Nh…n/vuaodai",
"Ng‰c BÈi/vuaonb",
"Giµy/vuaogiay")
end
function vuaonon()
nIndex = AddItemID(AddItem(2,0,135,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function vuaoao()
nIndex = AddItemID(AddItem(2,0,136,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function vuaodai()
nIndex = AddItemID(AddItem(2,0,137,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function vuaonb()
nIndex = AddItemID(AddItem(2,0,138,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function vuaogiay()
nIndex = AddItemID(AddItem(2,0,139,0,0,5,random(0,10)));
AddTimeItem(LockItem(nIndex),7*24*60*60);
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end





















