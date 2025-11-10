Include("\\script\\library\\worldlibrary2.lua");
Include("\\script\\header\\taskid.lua");
Include("\\script\\header\\bang2.lua");
Include("\\dulieu\\item2.lua");
--------------
TIME_HAM = 60*1080
TIME_RUONG = 5*1080
---------------------------------------------------------
function main(nItemIdx)
dofile("script/item/sankhobau.lua")
local m = GetTask(TASK_TOADOX)
local n = GetTask(TASK_TOADOY)
local map = GetTask(TASK_MAP)
local d = m + n + map
if d > 0 then
Say("Hç Trî T©n Thñ, Vâ L©m CTC", 10,
	"B¾t ®Çu ®µo/daokhobau",
              "§i ®Õn n¬i ®µo kho b¸u/disaokhobau",
	"KÕt thóc/no")
return end
Msg2Player("VËt phÈm sö dông t×m kho b¸u.")
end
function no()
end

function disaokhobau()
NewWorld(99,1623,3182)
end

function daokhobau()
local m = GetTask(TASK_TOADOX)
local n = GetTask(TASK_TOADOY)
local map = GetTask(TASK_MAP)
local nPlay = GetPlayerNpcIdx()
if checkTD(m,n,map) == BANDO[1] then
		local w,x,y = GetWorldPos()
		SetTask(TASK_TOADOX,0)
		SetTask(TASK_TOADOY,0)
		SetTask(TASK_MAP,0)
			local i = 2
			SetTask(TASK_VINHLACTRAN,SetNumber(GetTask(TASK_VINHLACTRAN),7,BAUVAT[i][1])) -- loai
			Msg2Player("Thµnh C«ng T×m ®­îc<color=green> kho b¸u <color> .")
-----------------------------------------------------------phÇn th­ëng ®µo ®c kho b¸u-------------------------------------------------------------

AddItemID(AddItem(0,2,34,0,0,5,random(1,10),0));    ---- r­¬ng ho¹t ®éng

---------------------------------------------------------------------------------------------------------------------------------------------------------	
NewWorld(53,1623,3182)
SetFightState(0);
DelItem(60,0,2,35)		
return end
Msg2Player("§µo m·i kh«ng thÊy g×.")
Msg2Player("T×m c¸c täa ®é ngÉu nhiªn sau")
Msg2Player("[232,194] - [226,180] - [197,176] - [178,185] - [177,200]")
Msg2Player("[199,217] - [194,226] - [220,222] - [216,210] - [202,212]")
end

function checkTD(m,n,map)--- tinh khoang cach den toa do can tim
w,x,y = GetWorldPos()
local a = floor(x/32/8)
local b = floor(y/32/16)
local a1 = floor(m/32/8)
local b1 = floor(n/32/16)
local nX = m-x
local nY = n-y
local nH = floor(sqrt((a1-a)^2+(b1-b)^2))-- sqrt la can bac 2
if w ~= map then
return BANDO[10]
end
if w == map then
if nH < 1 or( nX == 0 and nY == 0)then
return BANDO[1]
end
if nH>= 1 then
if nX< 0 then 
	if nY< 0 then 
	return ""..BANDO[2].." "..nH.." tr­îng"
	end
	if nY> 0 then 
	return ""..BANDO[3].." "..nH.." tr­îng"
	end
	if nY == 0 then
	return ""..BANDO[4].." "..nH.." tr­îng"
	end
	end
if nX> 0 then 
	if nY< 0 then 
	return ""..BANDO[5].." "..nH.." tr­îng"
	end
	if nY> 0 then 
	return ""..BANDO[6].." "..nH.." tr­îng"
	end
	if nY == 0 then
	return ""..BANDO[7].." "..nH.." tr­îng"
	end
end
if nX== 0 then 
	if nY< 0 then 
	return ""..BANDO[8].." "..nH.." tr­îng"
	end
	if nY> 0 then 
	return ""..BANDO[9].." "..nH.." tr­îng"
	end
	end
end
end
end
------------------------- Kho bau----------------------------

BANDO={ --- dinh huong ban do
"<color=yellow> §ang ®øng trªn kho b¸u",
"H­íng T©y Nam c¸ch <color=yellow>",
"H­íng §«ng Nam c¸ch <color=yellow>",
"H­íng Nam c¸ch <color=yellow>",
"H­íng T©y B¾c c¸ch <color=yellow>",
"H­íng §«ng B¾c c¸ch <color=yellow>",
"H­íng B¾c c¸ch <color=yellow>",
"H­íng T©y c¸ch <color=yellow>",
"H­íng §«ng c¸ch <color=yellow>",
"<color=yellow> Kho b¸u kh«ng n»m trªn b¶n ®å"
}
BAUVAT = { --- so item nhan dc khi dao kho bau tuong ung Ruong
{3,"R­¬ng nhá"},
{5,"R­¬ng lín"},
{9,"R­¬ng b¶o vËt"}
}
---------------------------------------------
