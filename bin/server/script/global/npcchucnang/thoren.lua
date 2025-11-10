--author:Rim
--date: 6-02-2021

Include("\\script\\header\\taskid.lua");
Include( "\\script\\header\\trangbi.lua");
Include( "\\script\\header\\admin\\item2.lua");

function no()
end;
function noinput()
end;
function onCancel()
end;

NOT_EPHKMP = "L≠Ót Quay Hoµng Kim/HKMPVV";
OK_HUYDO = "X„a Trang Bﬁ,VÀt Ph»m/huytb123";
NOT_CHETAO = "Ch’ Tπo T›m/duc";
NOT_TRADE1 = "K’t thÛc ÆËi thoπi/no";
OK_TREMBLE = "Khπm nπm trang bﬁ/khamnam";
OK_REPAIRITEM = "Sˆa trang bﬁ Xanh h≠ tÊn/SayRepair";
NEED_ROOM_EMPTY = "Hµnh trang ph∂i c„ ÆÒ 2x4 ´ trËng.";
SAME_5HANH = "Trang bﬁ Æ∑ c„ ngÚ hµnh th›ch hÓp. Xin l˘a ch‰n ngÚ hµnh kh∏c.";



function main(NpcIndex)
	local OK_TRADE = format("Giao dﬁch/giaodich(%d)",NpcIndex);
	SetTaskTemp(NPCINDEX, NpcIndex)
	local NOT_TRADE1 = "Nh©n ti÷n gh– qua th´i/no";
	local w,x,y = GetWorldPos();
	if (w == 53) then--ba lang
	Say("SË l«n Quay HKMP mi‘n ph› cÒa bπn lµ: <color=green> "..GetTask(TAK_QUAYHKMP).." <color>l«n", 7,
	             OK_TRADE,
                     NOT_CHETAO,
                           NOT_EPHKMP,
	             OK_TREMBLE,
                           OK_REPAIRITEM,
                           OK_HUYDO,
	             NOT_TRADE1)
	return end
	if (w == 20) then--giang tan
	if(nvgiangtan() == 1) then
	return end;
	Say(12950,6,
	             OK_TRADE,
                           NOT_EPHKMP,
	             OK_TREMBLE,
                           OK_REPAIRITEM,
                           OK_HUYDO,
	             NOT_TRADE1)
	return end
	if (w == 99) then--vinh lac
	Say(12407,6,
	             OK_TRADE,
                           NOT_EPHKMP,
	             OK_TREMBLE,
                           OK_REPAIRITEM,
                           OK_HUYDO,
	             NOT_TRADE1)
	return end
	if (w == 100) then--chu tien
	Say(14571,6,
	             OK_TRADE,
                           NOT_EPHKMP,
	             OK_TREMBLE,
                           OK_REPAIRITEM,
                           OK_HUYDO,
	             NOT_TRADE1)
	return end
	if (w == 101) then--dao huong
	Say(14865,6,
	             OK_TRADE,
                           NOT_EPHKMP,
	             OK_TREMBLE,
                           OK_REPAIRITEM,
                           OK_HUYDO,
	             NOT_TRADE1)
	return end
	if (w == 121) then--long mon
	Say(12101,6,
	             OK_TRADE,
                           NOT_EPHKMP,
	             OK_TREMBLE,
                           OK_REPAIRITEM,
                           OK_HUYDO,
	             NOT_TRADE1)
	return end
	if (w == 153) then--thach co
	Say(13979,6,
	             OK_TRADE,
                           NOT_EPHKMP,
	             OK_TREMBLE,
                           OK_REPAIRITEM,
                           OK_HUYDO,
	             NOT_TRADE1)
	return end
	if (w == 174) then--long tuyen thon
	Say(10944,6,
	             OK_TRADE,
                           NOT_EPHKMP,
	             OK_TREMBLE,
                           OK_REPAIRITEM,
                           OK_HUYDO,
	             NOT_TRADE1)
	return end
	if (w == 1) then--phuong tuong
	Say(12236,6,
	             OK_TRADE,
                           NOT_EPHKMP,
	             OK_TREMBLE,
                           OK_REPAIRITEM,
                           OK_HUYDO,
	             NOT_TRADE1)
	return end
	if (w == 11) then--thanh do
	Say(12236,6,
	             OK_TRADE,
                           NOT_EPHKMP,
	             OK_TREMBLE,
                           OK_REPAIRITEM,
                           OK_HUYDO,
	             NOT_TRADE1)
	return end
	if (w == 162) then--dai ly
	Say(13901,6,
	             OK_TRADE,
                           NOT_EPHKMP,
	             OK_TREMBLE,
                           OK_REPAIRITEM,
                           OK_HUYDO,
	             NOT_TRADE1)
	return end
	if (w == 78) then--tuong duong
	Say(15275,6,
	             OK_TRADE,
                           NOT_EPHKMP,
	             OK_TREMBLE,
                           OK_REPAIRITEM,
                           OK_HUYDO,
	             NOT_TRADE1)
	return end
	if (w == 37) then--bien kinh
	Say(14803,6,
	             OK_TRADE,
                           NOT_EPHKMP,
	             OK_TREMBLE,
                           OK_REPAIRITEM,
                           OK_HUYDO,
	             NOT_TRADE1)
	return end
	if (w == 80) then--duong chau
	Say(15454,6,
	             OK_TRADE,
                           NOT_EPHKMP,
	             OK_TREMBLE,
                           OK_REPAIRITEM,
                           OK_HUYDO,
	             NOT_TRADE1)
	return end
	if (w == 176) then--lam an
	Say(12236,6,
	             OK_TRADE,
                           NOT_EPHKMP,
	             OK_TREMBLE,
                           OK_REPAIRITEM,
                           OK_HUYDO,
	             NOT_TRADE1)
	return end
	Say(15454,6,
	             OK_TRADE,
                           NOT_EPHKMP,
	             OK_TREMBLE,
                           OK_REPAIRITEM,
                           OK_HUYDO,
	             NOT_TRADE1)
end;

function giaodich(NpcIndex)
	local nParam = GetNpcValue(NpcIndex)
	if(nParam ~= nil and nParam > 0) then
	Sale(nParam)
	end
end;

function nvgiangtan()
	local nTaskValue = GetTask(TASK_NVDANHVONG2);
	local nTask = GetNumber(1,nTaskValue,9);
	if(nTask == 1) then
	SetTask(TASK_NVDANHVONG2, SetNumber(1,nTaskValue,9,2));
	Talk(1,"",12946)
	Msg2Player("ThÓ rÃn b∂o bπn ra ngoµi th´n t◊m chπc c©y: 433-390 vµ da tr©u: 466-396 Æ” lµm c©y n∏.")
	return 1	end
	if(nTask == 2) then
		if(GetItemCount(0,4,176) > 0) then
		return 0 end
		if(GetItemCount(0,4,177) < 1 or GetItemCount(0,4,178) < 1) then
		Say(12949,2,
		OK_TRADE,
		--OK_ENCHASE,
		NOT_TRADE)
		else
		AddItemID(AddItem(0,4,176,0,0,5,0,0))
		DelItem(1,0,4,177)
		DelItem(1,0,4,178)
		Msg2Player("NhÀn Æ≠Óc 1 giµn n∏.")
		Talk(2,"",12947,12948)
		end
	return 1	end
	return 0
end;



function duc()
OpenEnchase()
end;

-----==================------------=====================------------------------------===============--------

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function huytb123()
	GiveItemUI("HÒy vÀt ph»m", "ßπi hi÷p h∑y c»n tr‰ng trong vi÷c hÒy vÀt ph»m", "huyvp12", "onCancel" )
end

function huyvp12()
	local count,nFIndex,nFGenre = 0;
	for i = 0,5 do
		for j = 0, 9 do
		nFIndex,nFGenre = FindItemEx(14,i,j);
		if (nFIndex > 0) then
			RemoveItem(nFIndex, 1)
			count=count+1;
		end
		end
	end
	if count > 0 then
	    Msg2Player(format("ßπi Hi÷p vıa xo∏ Thµnh C´ng %d VÀt Ph»m",count));
	end
	return 1;
end


-----==================------------=====================------------------------------===============--------

function khamnam()
	Say("LINK:<npc>",0,"ThÒy tinh kh∂m nπm li™n quan Æ’n s˘ c©n bªng ngÚ hµnh, ph≠¨ng ph∏p chuy”n linh kh› tuy÷t nhi™n kh´ng th” dÔng s¯c ng≠Íi Æ≠Óc, kh´ng hºn nh≠ Æπi hi÷p hi v‰ng thµnh vÀt ph»m tuy÷t th’ nh©n gian, mµ vÚ kh› ÆÂ phÊ vµ v˘c ngoµi k˙ tr©n chÿ giÛp chuy”n ÆÊi Æºng c p cÒa trang bﬁ. C∏c hπ muËn kh∂m nπm trang bﬁ nµy kh´ng?",4,
	"Bæt Æ«u kh∂m nπm/Exkhamnam",
	"Li™n quan kh∂m nπm/help",
	"ß” ta suy ngh‹ k¸ lπi xem/no");
end

function Exkhamnam()
	TrembleItem();
end


function help()
	str = 
	{
		"Qu∏ tr◊nh kh∂m nπm: Æ∆t trang bﬁ vµo giao di÷n ch›nh gi˜a, sau Æ„ Æem vÀt ph»m kh∂m nπm Æ∆t vµo chÁ t≠¨ng ¯ng. VÀt ph»m kh∂m nπm t®ng vµ gi∂m Æºng c p Æ∆t vµo thanh Æºng c p; thay ÆÊi thuÈc t›nh ma ph∏p Æ∆t vµo thanh linh l˘c; thay ÆÊi thuÈc t›nh ngÚ hµnh Æ∆t vµo thanh ngÚ hµnh. Nh n 'Kh∂m nπm' Æ” hoµn thµnh. M∆t nπ kh´ng th” kh∂m nπm.",
		"Li™n quan kh∂m nπm thÒy tinh/crystalhelp",
		"Li™n quan kh∂m nπm trang bﬁ /itemhelp",
		"Ta Æ∑ bi’t rÂi /no",
	};
	Say(str[1], 5, str[2], str[3], str[4], str[5],str[6]);
end

function crystalhelp()
	str =
	{
		"Ng‰c thπch c«n cho qu∏ tr◊nh kh∂m nπm c„ 3 loπi: <color=pink>Tˆ thÒy tinh<color>, <color=blue>Lam thÒy tinh<color>, <color=green>LÙc thÒy tinh<color>\n<color=pink>Tˆ thÒy tinh<color>: T®ng c p ÆÈ trang bﬁ\n<color=green>LÙc thÒy tinh<color>: Thay ÆÊi thuÈc t›nh trang bﬁ\n<color=blue>Lam thÒy tinh<color>: thay ÆÊi ngÚ hµnh trang bﬁ",
		"Ta Æ∑ bi’t rÂi/no",
	}
	Say(str[1], 2, str[2]);
end

function itemhelp()
	str =
	{
		"ßπi hi÷p h∑y hi”u rªng tr™n th’ gian nµy kh´ng c„ g◊ lµ tuy÷t ÆËi, ta Æ∑ rÃn trang bﬁ bao n®m nay cÚng c„ lÛc th t bπi:\nThay ÆÊi ngÚ hµnh trang bﬁ: <color=green>25%<color> thµnh c´ng\nN©ng c p trang bﬁ: <color=green>50%<color> thµnh c´ng.\nThay ÆÊi thuÈc t›nh trang bﬁ: <color=green>75%<color> thµnh c´ng.",
		"Ta Æ∑ bi’t rÂi/no",
	}
	Say(str[1], 2, str[2]);
end
function SayRepair()
	str = 
	{
		"T›nh n®ng chÿ sˆa trang bﬁ xanh!",
		"Sˆa trang bﬁ bªng ti“n vπn [50v]/ExRepair",
		"Sˆa trang bﬁ bªng ti“n xu [20xu]/ExRepair",
		"Ta chÿ gh– ngang qua/no",
	}
	Say(str[1],3,str[2],str[3],str[4]);
end

------------------------------------------------------------------------------------------------------------------
function ExRepair(nSel)
 local nSel = nSel + 1;
 if nSel == 1 then
	GiveItemUI("Sˆa trang bﬁ h·ng n∆ng", "Vﬁ Æπi hi÷p nµy giao cho ta sˆa\n MÁi l«n 1 trang bﬁ\nTi“n c´ng: 20xu ho∆c 50vπn","RepairItem","no")
else
	GiveItemUI("Sˆa trang bﬁ h·ng n∆ng", "Vﬁ Æπi hi÷p nµy giao cho ta sˆa\n MÁi l«n 1 trang bﬁ\nTi“n c´ng: 20xu ho∆c 50vπn","RepairItem2","no")
end
end


function RepairItem()
local nMoney = 500000;
local nMoneyExt = 20;
local nTempIndex,Tgenre,Tdetail,Tparti,Tlevel,Tseries
local genre,detail,parti,level,series
local FronOP1 ={};
local FronOP2 ={};
local value1_3,
	 value2_3,
	 value3_3,
	 value4_3,
	 value5_3,
	 value6_3,
	 value7_3,
	 value8_3;	 	 
local i,j;

if (GetCash() < nMoney) then
 Talk(1,"","C∏c hπ kh´ng c„ ÆÒ 50 vπn l≠Óng")
return end
	for i=0,5 do
		for j=0,3 do
			nTempIndex,Tgenre,Tdetail,Tparti,Tlevel,Tseries = FindItemEx(14,i,j);
			if (nTempIndex > 0) then
				nIndex,genre,detail,parti,level,series = nTempIndex,Tgenre,Tdetail,Tparti,Tlevel,Tseries;
				FronOP1[1] , FronOP2[1], value1_3,
				FronOP1[2] , FronOP2[2], value2_3,
				FronOP1[3] , FronOP2[3], value3_3,
				FronOP1[4] , FronOP2[4], value4_3,
				FronOP1[5] , FronOP2[5], value5_3,
				FronOP1[6] , FronOP2[6], value6_3,
				FronOP1[7] , FronOP2[7], value7_3,
				FronOP1[8] , FronOP2[8], value8_3
				= GetMagicAttrib(nIndex);
				RemoveItem(nIndex, 1);
                                                       nIndex = AddItem(0,0,detail,parti,level,series,0);
				SetMagicAttrib(nIndex,
				FronOP1[1] , FronOP2[1], 0,
				FronOP1[2] , FronOP2[2], 0,
				FronOP1[3] , FronOP2[3], 0,
				FronOP1[4] , FronOP2[4], 0,
				FronOP1[5] , FronOP2[5], 0,
				FronOP1[6] , FronOP2[6], 0,
				FronOP1[7] , FronOP2[7], 0,
				FronOP1[8] , FronOP2[8], 0
				);
			            AddItemID(nIndex);
                                                        Pay(nMoney);
                                              Msg2Player("<color=yellow>Sˆa trang bﬁ thµnh c´ng");
				 Msg2Player(""..genre.." -- "..detail.." -- "..parti.." -- "..level.." -- "..series.."");
				 Msg2Player(" "..FronOP1[1].." - "..FronOP2[1].."");
				 Msg2Player(" "..FronOP1[2].." - "..FronOP2[2].."");
				 Msg2Player(" "..FronOP1[3].." - "..FronOP2[3].."");
				 Msg2Player(" "..FronOP1[4].." - "..FronOP2[4].."");
				 Msg2Player(" "..FronOP1[5].." - "..FronOP2[5].."");
				 Msg2Player(" "..FronOP1[6].." - "..FronOP2[6].."");
			end
                                  break
		end
	end
end;



function RepairItem2()
local nMoneyExt = 10;
local nTempIndex,Tgenre,Tdetail,Tparti,Tlevel,Tseries
local genre,detail,parti,level,series
local FronOP1 ={};
local FronOP2 ={};
local value1_3,
	 value2_3,
	 value3_3,
	 value4_3,
	 value5_3,
	 value6_3,
	 value7_3,
	 value8_3;	 	 
local i,j;

if (GetExtPoint() < nMoneyExt) then
 Talk(1,"","C∏c hπ kh´ng c„ ÆÒ 20 xu")
return end
	for i=0,5 do
		for j=0,3 do
			nTempIndex,Tgenre,Tdetail,Tparti,Tlevel,Tseries = FindItemEx(14,i,j);
			if (nTempIndex > 0) then
				nIndex,genre,detail,parti,level,series = nTempIndex,Tgenre,Tdetail,Tparti,Tlevel,Tseries;
				FronOP1[1] , FronOP2[1], value1_3,
				FronOP1[2] , FronOP2[2], value2_3,
				FronOP1[3] , FronOP2[3], value3_3,
				FronOP1[4] , FronOP2[4], value4_3,
				FronOP1[5] , FronOP2[5], value5_3,
				FronOP1[6] , FronOP2[6], value6_3,
				FronOP1[7] , FronOP2[7], value7_3,
				FronOP1[8] , FronOP2[8], value8_3
				= GetMagicAttrib(nIndex);
				RemoveItem(nIndex, 1);
				nIndex = AddItem(0,0,detail,parti,level,series,0);	
				SetMagicAttrib(nIndex,
				FronOP1[1] , FronOP2[1], 0,
				FronOP1[2] , FronOP2[2], 0,
				FronOP1[3] , FronOP2[3], 0,
				FronOP1[4] , FronOP2[4], 0,
				FronOP1[5] , FronOP2[5], 0,
				FronOP1[6] , FronOP2[6], 0,
				FronOP1[7] , FronOP2[7], 0,
				FronOP1[8] , FronOP2[8], 0
				);
				AddItemID(nIndex);
                                                        PayExtPoint(nMoneyExt);
				Msg2Player("<color=yellow>Sˆa trang bﬁ thµnh c´ng");

				 Msg2Player(""..genre.." -- "..detail.." -- "..parti.." -- "..level.." -- "..series.."");
				 Msg2Player(" "..FronOP1[1].." - "..FronOP2[1].."");
				 Msg2Player(" "..FronOP1[2].." - "..FronOP2[2].."");
				 Msg2Player(" "..FronOP1[3].." - "..FronOP2[3].."");
				 Msg2Player(" "..FronOP1[4].." - "..FronOP2[4].."");
				 Msg2Player(" "..FronOP1[5].." - "..FronOP2[5].."");
				 Msg2Player(" "..FronOP1[6].." - "..FronOP2[6].."");
			end
                                break
		end
	end
end





--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function HKMPVV()
Say("SË l«n Quay HKMP mi‘n ph› cÒa bπn lµ: <color=green> "..GetTask(TAK_QUAYHKMP).." <color>l«n", 5,
             "Quay Random Hoµng Kim M´n Ph∏i/chetaohkmp",	  
             "T◊m Hi”u/timhieuhkmp",
	"Tho∏t/no")
end


function chetaohkmp()
if GetTask(TAK_QUAYHKMP) >= 1 then
SetTask(TAK_QUAYHKMP,GetTask(TAK_QUAYHKMP) - 1)
randomhkmp()
else
Msg2Player("Bπn Kh´ng c„ l≠Ót quay nµo")
end
end



function randomhkmp()
ngaunhienhkmp = random(1,1000)
SetTask(TASK_EPHKMP, ngaunhienhkmp )
if GetTask(TASK_EPHKMP) > 900 then
nhanhkmp1mon2()
Msg2Player("ChÛc mıng Bπn vµo sË: <color=green>"..GetTask(TASK_EPHKMP).."<color>")
Msg2SubWorld("ChÛc mıng <color=green>[ "..GetName().." ]<color> Quay thÓ rÃn <color=green>[ Hoµng Kim M´n Ph∏i ]<color> Thµnh C´ng")    
SetTask(TASK_EPHKMP, 0 )
else
Msg2Player("random 1000 sË - Bπn vµo sË: <color=green>"..GetTask(TASK_EPHKMP).."<color> Tı sË 900 Æ’n 1000 sœ trÛng gi∂i ")
SetTask(TASK_EPHKMP, 0 )
end
end

function timhieuhkmp()
Talk(1,"","X∏c xu t 10% - nhÀn l≠Ót quay tπi NPC hÁ trÓ t©n thÒ");
end

----------============================================================================================------


function nhanhkmp1mon2()
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
AddItemID(AddItem(2,0,0,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end

function mlao()
AddItemID(AddItem(2,0,1,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end

function mldai()
AddItemID(AddItem(2,0,2,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end

function mlnb()
AddItemID(AddItem(2,0,3,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end

function mlgiay()
AddItemID(AddItem(2,0,4,0,0,5,random(0,10)));
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
AddItemID(AddItem(2,0,5,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function pmao()
AddItemID(AddItem(2,0,6,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function pmdai()
AddItemID(AddItem(2,0,7,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function pmnb()
AddItemID(AddItem(2,0,8,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function pmgiay()
AddItemID(AddItem(2,0,9,0,0,5,random(0,10)));
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
AddItemID(AddItem(2,0,10,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function tkao()
AddItemID(AddItem(2,0,11,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function tkdai()
AddItemID(AddItem(2,0,12,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function tknb()
AddItemID(AddItem(2,0,13,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function tkgiay()
AddItemID(AddItem(2,0,14,0,0,5,random(0,10)));
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
AddItemID(AddItem(2,0,15,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function htao()
AddItemID(AddItem(2,0,16,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function htdai()
AddItemID(AddItem(2,0,17,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function htnb()
AddItemID(AddItem(2,0,18,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function htgiay()
AddItemID(AddItem(2,0,19,0,0,5,random(0,10)));
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
AddItemID(AddItem(2,0,20,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function knao()
AddItemID(AddItem(2,0,21,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function kndai()
AddItemID(AddItem(2,0,22,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function knnb()
AddItemID(AddItem(2,0,23,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function kngiay()
AddItemID(AddItem(2,0,24,0,0,5,random(0,10)));
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
AddItemID(AddItem(2,0,25,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function nlao()
AddItemID(AddItem(2,0,26,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function nldai()
AddItemID(AddItem(2,0,27,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function nlnb()
AddItemID(AddItem(2,0,28,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function nlgiay()
AddItemID(AddItem(2,0,29,0,0,5,random(0,10)));
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
AddItemID(AddItem(2,0,30,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function vgao()
AddItemID(AddItem(2,0,31,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function vgdai()
AddItemID(AddItem(2,0,32,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function vgnb()
AddItemID(AddItem(2,0,33,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function vggiay()
AddItemID(AddItem(2,0,34,0,0,5,random(0,10)));
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
AddItemID(AddItem(2,0,35,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function vmao()
AddItemID(AddItem(2,0,36,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function vmdai()
AddItemID(AddItem(2,0,37,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function vmnb()
AddItemID(AddItem(2,0,38,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function vmgiay()
AddItemID(AddItem(2,0,39,0,0,5,random(0,10)));
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
AddItemID(AddItem(2,0,40,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function vtao()
AddItemID(AddItem(2,0,41,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function vtdai()
AddItemID(AddItem(2,0,42,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function vtnb()
AddItemID(AddItem(2,0,43,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function vtgiay()
AddItemID(AddItem(2,0,44,0,0,5,random(0,10)));
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
AddItemID(AddItem(2,0,45,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function thao()
AddItemID(AddItem(2,0,46,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function thdai()
AddItemID(AddItem(2,0,47,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function thnb()
AddItemID(AddItem(2,0,48,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function thgiay()
AddItemID(AddItem(2,0,49,0,0,5,random(0,10)));
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
AddItemID(AddItem(2,0,50,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function bhao()
AddItemID(AddItem(2,0,51,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function bhdai()
AddItemID(AddItem(2,0,52,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function bhnb()
AddItemID(AddItem(2,0,53,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function bhgiay()
AddItemID(AddItem(2,0,54,0,0,5,random(0,10)));
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
AddItemID(AddItem(2,0,55,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function ulao()
AddItemID(AddItem(2,0,56,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function uldai()
AddItemID(AddItem(2,0,57,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function ulnb()
AddItemID(AddItem(2,0,58,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function ulgiay()
AddItemID(AddItem(2,0,59,0,0,5,random(0,10)));
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
AddItemID(AddItem(2,0,60,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function maao()
AddItemID(AddItem(2,0,61,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function madai()
AddItemID(AddItem(2,0,62,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function manb()
AddItemID(AddItem(2,0,63,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function magiay()
AddItemID(AddItem(2,0,64,0,0,5,random(0,10)));
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
AddItemID(AddItem(2,0,65,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function cpao()
AddItemID(AddItem(2,0,66,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function cpdai()
AddItemID(AddItem(2,0,67,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function cpnb()
AddItemID(AddItem(2,0,68,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function cpgiay()
AddItemID(AddItem(2,0,69,0,0,5,random(0,10)));
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
AddItemID(AddItem(2,0,70,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function bhanao()
AddItemID(AddItem(2,0,71,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function bhandai()
AddItemID(AddItem(2,0,72,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function bhannb()
AddItemID(AddItem(2,0,73,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function bhangiay()
AddItemID(AddItem(2,0,74,0,0,5,random(0,10)));
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
AddItemID(AddItem(2,0,75,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function thienqao()
AddItemID(AddItem(2,0,76,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function thienqdai()
AddItemID(AddItem(2,0,77,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function thienqnb()
AddItemID(AddItem(2,0,78,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function thienqgiay()
AddItemID(AddItem(2,0,79,0,0,5,random(0,10)));
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
AddItemID(AddItem(2,0,80,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function samhao()
AddItemID(AddItem(2,0,81,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function samhdai()
AddItemID(AddItem(2,0,82,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function samhnb()
AddItemID(AddItem(2,0,83,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function samhgiay()
AddItemID(AddItem(2,0,84,0,0,5,random(0,10)));
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
AddItemID(AddItem(2,0,85,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function diapao()
AddItemID(AddItem(2,0,86,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function diapdai()
AddItemID(AddItem(2,0,87,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function diapnb()
AddItemID(AddItem(2,0,88,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function diapgiay()
AddItemID(AddItem(2,0,89,0,0,5,random(0,10)));
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
AddItemID(AddItem(2,0,90,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function dongcao()
AddItemID(AddItem(2,0,91,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function dongcdai()
AddItemID(AddItem(2,0,92,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function dongcnb()
AddItemID(AddItem(2,0,93,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function dongcgiay()
AddItemID(AddItem(2,0,94,0,0,5,random(0,10)));
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
AddItemID(AddItem(2,0,95,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function dichkao()
AddItemID(AddItem(2,0,96,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function dichkdai()
AddItemID(AddItem(2,0,97,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function dichknb()
AddItemID(AddItem(2,0,98,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function dichkgiay()
AddItemID(AddItem(2,0,99,0,0,5,random(0,10)));
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
AddItemID(AddItem(2,0,100,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function masatao()
AddItemID(AddItem(2,0,101,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function masatdai()
AddItemID(AddItem(2,0,102,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function masatnb()
AddItemID(AddItem(2,0,103,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function masatgiay()
AddItemID(AddItem(2,0,104,0,0,5,random(0,10)));
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
AddItemID(AddItem(2,0,105,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function mahoangao()
AddItemID(AddItem(2,0,106,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function mahoangdai()
AddItemID(AddItem(2,0,107,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function mahoangnb()
AddItemID(AddItem(2,0,108,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function mahoanggiay()
AddItemID(AddItem(2,0,109,0,0,5,random(0,10)));
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
AddItemID(AddItem(2,0,110,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function mathiao()
AddItemID(AddItem(2,0,111,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function mathidai()
AddItemID(AddItem(2,0,112,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function mathinb()
AddItemID(AddItem(2,0,113,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function mathigiay()
AddItemID(AddItem(2,0,114,0,0,5,random(0,10)));
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
AddItemID(AddItem(2,0,115,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function langnhacao()
AddItemID(AddItem(2,0,116,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function langnhacdai()
AddItemID(AddItem(2,0,117,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function langnhacnb()
AddItemID(AddItem(2,0,118,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function langnhacgiay()
AddItemID(AddItem(2,0,119,0,0,5,random(0,10)));
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
AddItemID(AddItem(2,0,120,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function capphongao()
AddItemID(AddItem(2,0,121,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function capphongdai()
AddItemID(AddItem(2,0,122,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function capphongnb()
AddItemID(AddItem(2,0,123,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function capphonggiay()
AddItemID(AddItem(2,0,124,0,0,5,random(0,10)));
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
AddItemID(AddItem(2,0,125,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function suongtinhao()
AddItemID(AddItem(2,0,126,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function suongtinhdai()
AddItemID(AddItem(2,0,127,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function suongtinhnb()
AddItemID(AddItem(2,0,128,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function suongtinhgiay()
AddItemID(AddItem(2,0,129,0,0,5,random(0,10)));
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
AddItemID(AddItem(2,0,130,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function loikhungao()
AddItemID(AddItem(2,0,131,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function loikhungdai()
AddItemID(AddItem(2,0,132,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function loikhungnb()
AddItemID(AddItem(2,0,133,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function loikhunggiay()
AddItemID(AddItem(2,0,134,0,0,5,random(0,10)));
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
AddItemID(AddItem(2,0,135,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function vuaoao()
AddItemID(AddItem(2,0,136,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function vuaodai()
AddItemID(AddItem(2,0,137,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function vuaonb()
AddItemID(AddItem(2,0,138,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
function vuaogiay()
AddItemID(AddItem(2,0,139,0,0,5,random(0,10)));
Msg2Player("<color=green>Bπn nhÀn Æ≠Óc trang bﬁ Hoµng Kim.")
end
