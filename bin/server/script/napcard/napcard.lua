Include("\\script\\lib\\thuvien.lua")
Include("\\script\\Global\\sourcejx49.lua")
Include("\\Script\\library\\worldlibrary.lua");
Include("\\script\\header\\taskid.lua");
Include("\\script\\napcard\\datascript\\card100.lua");  
Include("\\script\\napcard\\datascript\\card200.lua");  
Include("\\script\\napcard\\datascript\\card300.lua");  
Include("\\script\\napcard\\datascript\\card500.lua");  
Include("\\script\\napcard\\datascript\\card1trieu.lua");  
Include("\\script\\napcard\\datascript\\card2trieu.lua");  
Include("\\script\\napcard\\datascript\\card3trieu.lua");  
Include("\\script\\napcard\\datascript\\card5trieu.lua");  


function main()
napthebaovat()
end

function napthebaovat()
num8 = GetTask(TASK_NAPTHE999)
	Say("<color=green>Kú Tr©n C¸c : <color>  HiÖn t¹i b¹n cã <color=green>" ..num8.. "<color> Xu", 10,
	             "N¹p ThÎ/napthe",
		"Tho¸t./no")
end

function napthe()
		Say("Seri: <color=red>" .. GetTaskTemp(32) .. "<color> \nM· ThÎ  <color=green>" .. GetTaskTemp(33) .. "", 4,
			"NhËp Seri/nhapseri",
			"NhËp M· ThÎ/nhapmathe",
			"KiÔm tra vµ n¹p thÎ/napcard",
			"Tho¸t./no")
	
end
----------------------------------------------------------NhËp Seri--------------------------------------------------------------------------
function nhapseri()
 Input("acceptseri",99999999)
end

function acceptseri(num)
	num2 = tonumber(num)
	if num2 < 10000000 or num2 > 99999999 then
		Talk(1, "napthe", "Seri chØ ®­îc nhËp vµo 8 ch÷ sè tõ 10000000 - 99999999 ")
KickOutSelf()
		return
	end
	SetTaskTemp(32, num2)
	Talk(1, "napthe", "Seri ®· nhËp: <color=red> " .. num2 .. " ")
end
------------------------------------------------------------NhËp M· ThÎ---------------------------------------------------------------------
function nhapmathe()
	Input("acceptmathe",99999999)
end

function acceptmathe(num)
	num2 = tonumber(num)
	if num2 < 10000000 or num2 > 99999999 then
		Talk(1, "napthe", "M· ThÎ chØ ®­îc nhËp vµo 8 ch÷ sè tõ 10000000 - 99999999 ")
KickOutSelf()
		return
	end
	SetTaskTemp(33, num2)
	Talk(1, "napthe", "M· thÎ ®· nhËp: <color=green> " .. num2 .. " ")
end
---------------------------------------------------------KiÓm Tra Vµ N¹p ThÎ--------------------------------------------------------------------
function napcard()
	if GetTaskTemp(32) > 100000000 then
		Talk(1, "", "<color=green>Kú Tr©n C¸c<color>: Card kh«ng tån t¹i. Vui lßng kiÓm tra chÝnh x¸c giïm ! ")
		return
	end
	sr = GetTaskTemp(32)
	if sr >= 10000000 and sr <= 20000000 then
		NAPCARD1(CARD100, "CARD100")
	elseif sr >= 20000000 and sr <= 30000000 then
		NAPCARD1(CARD200, "CARD200")
	elseif sr >= 30000000 and sr <= 40000000 then
		NAPCARD1(CARD300, "CARD300")
	elseif sr >= 40000000 and sr <= 50000000 then
		NAPCARD1(CARD500, "CARD500")
	elseif sr >= 50000000 and sr <= 60000000 then
	      NAPCARD1(CARD1TRIEU, "CARD1TRIEU")
	elseif sr >= 60000000 and sr <= 70000000 then
	      NAPCARD1(CARD2TRIEU, "CARD2TRIEU")
	elseif sr >= 70000000 and sr <= 80000000 then
	      NAPCARD1(CARD3TRIEU, "CARD3TRIEU")
	elseif sr >= 80000000 and sr <= 90000000 then
	      NAPCARD1(CARD5TRIEU, "CARD5TRIEU")
	else
		Talk(1, "", "Card kh«ng tån t¹i, vui lßng kiÓm tra l¹i Seri vµ M· ThÎ")
	end
end

----------------------------------------------------------------------------------------------------------------------------------------------------------
function NAPCARD1(mang, tenmang)
	checkmt = 0
	for i = 1, getn(mang) do if GetTaskTemp(32) == mang[i][2] then if GetTaskTemp(33) == mang[i][3] then
				checkmt = 1
				if mang[i][1] == 0 then Talk(1, "", "<color=green>Kú Tr©n C¸c <color>: <color=red>ThÎ ®· ®­îc sö dông !!!") 
                                                                          else mang[i][1] = 0
					thoigian = tonumber(date("%H%M%d%m"))
					b = mang[i][4]
                                                                      ab = GetTask(TASK_NAPTHE999) + b
					SetTask(TASK_NAPTHE999, ab)
					Msg2Player("B¹n ®· n¹p thÎ thµnh c«ng. B¹n nhËn ®­îc  " .. b .. " Xu")
					luulaibang()
					Msg2Player("§· n¹p d÷ liÖu vµo hÖ thèng !")
				       end
			              end
		                      end
	                               end
	               if checkmt == 0 then
		Talk(1, "", "<color=green>Kú Tr©n C¸c <color>: <color=red>M· thÎ <color> b¹n nhËp kh«ng chÝnh x¸c !!!! ")
		return
	end
end

------------------------------------------------L­u L¹i B¶ng M· ThÎ (®· n¹p råi th× save l¹i)-------------------------------------------------------------------
function luulaibang()
danhsach1 = TaoBang(CARD100,"CARD100")
LuuBang("script/napcard/datascript/card100.lua",danhsach1) 
danhsach2 = TaoBang(CARD200,"CARD200")
LuuBang("script/napcard/datascript/card200.lua",danhsach2) 
danhsach3 = TaoBang(CARD300,"CARD300")
LuuBang("script/napcard/datascript/card300.lua",danhsach3) 
danhsach4 = TaoBang(CARD500,"CARD500")
LuuBang("script/napcard/datascript/card500.lua",danhsach4) 
danhsach5 = TaoBang(CARD500,"CARD500")
LuuBang("script/napcard/datascript/card500.lua",danhsach5) 
danhsach6 = TaoBang(CARD1TRIEU,"CARD1TRIEU")
LuuBang("script/napcard/datascript/card1trieu.lua",danhsach6) 
danhsach7 = TaoBang(CARD2TRIEU,"CARD2TRIEU")
LuuBang("script/napcard/datascript/card2trieu.lua",danhsach7) 
danhsach8 = TaoBang(CARD3TRIEU,"CARD3TRIEU")
LuuBang("script/napcard/datascript/card3trieu.lua",danhsach8) 
danhsach9 = TaoBang(CARD5TRIEU,"CARD5TRIEU")
LuuBang("script/napcard/datascript/card5trieu.lua",danhsach9) 
end






function noinput()
end
function no()
end































