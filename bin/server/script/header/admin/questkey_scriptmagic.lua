-- Author: Hoang
-- NameTool: Lenh Bai Gm

Include( "\\script\\header\\taskid.lua" );

function fuc_qsitem()
local nW,nX,nY = GetWorldPos()
	Tab_inSert = {
	"<color=red>HÖ Thèng:<color> <color=orange>Cuéc sèng nµy biÕt bao ®iÒu tu¬i ®Ñp, Minh Qu©n xin h·y b×nh tÜnh suy xÐt\n<color=green>Täa ®é hiÖn t¹i: B¶n ®å: "..nW.." - X: "..nX.."-Y: "..nY.."",
	"Thñy tinh - Tinh Hång/tt_th",
	"S¸t thñ gi¶n/stg",
	"Nh¹c v­¬ng KiÕm/nvk",
	"LÖnh Bµi PLD/lb_PLD",
	"VËt phÈm tµi xØu/tai_xiu",
	"Ta kh«ng cÇn ng­¬i d¹y b¶o/no"
	}
	Say(Tab_inSert[1],getn(Tab_inSert),
		Tab_inSert[2],
		Tab_inSert[3],
		Tab_inSert[4],
		Tab_inSert[5],
		Tab_inSert[6],
		Tab_inSert[7]
		)	
end

function tt_th()
	for i = 1,6 do
	AddItemID(AddItem(0,4,353,0,0,0,0,0)) -- tinh hong
	end
	AddItemID(AddItem(0,4,238,0,0,0,0,0)) --lam thuy tinh
	AddItemID(AddItem(0,4,239,0,0,0,0,0)) --tu thuy tinh
	AddItemID(AddItem(0,4,240,0,0,0,0,0)) --luc thuy tinh
end

function stg()
	AddItemID(AddItem(0,6,399,0,0,0,0)); -- sat thu gian
	AddItemID(AddItem(0,6,399,0,0,1,0));
	AddItemID(AddItem(0,6,399,0,0,2,0));
	AddItemID(AddItem(0,6,399,0,0,3,0));
	AddItemID(AddItem(0,6,399,0,0,4,0));
end

function nvk()
	AddItemID(AddItem(0,4,195,0,0,5,0,0));
end

function lb_PLD()
	AddItemID(AddItem(0,4,489,0,0,4,0,0));
end

function tai_xiu()
AddItemID(AddItem(0,6,1063,0,0,0,0,0))
AddItemID(AddItem(0,6,1063,0,0,0,0,0))
AddItemID(AddItem(0,6,1063,0,0,0,0,0))
end

function no()
end