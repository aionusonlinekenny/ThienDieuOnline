function addnpcvantieu()
	AddNpcNew(308,1,121,2004*32,4482*32,"\\script\\feature\\van_tieu\\tieudau.lua",6,"Long M«n Tiªu Côc")-----map bi error
	--AddNpcNew(308,1,53,1618*32,3169*32,"\\script\\feature\\van_tieu\\tieudau.lua",6,"Long M«n Tiªu Côc") ----- Ba Lang Huyen
	AddNpcNew(376,1,21,62460,112211,"\\script\\feature\\van_tieu\\tieusu.lua",6,"Thµnh §« tiªu s­")   ---- Thanh Thanh Son
	
	nNpcIdx = AddNpcNew(701,100,21,78957,124476,"\\script\\feature\\van_tieu\\bossvantieu.lua",
	5,"S¬n tÆc h¹",nil,RANDOMC(0,1,2,3,4),0,1000000,nil,5000,100,1,1,1,500,50,nil,"\\script\\feature\\van_tieu\\bossvantieu.lua")
	SetNpcValue(nNpcIdx,1)
	nNpcIdx = AddNpcNew(701,100,21,72793,122074,"\\script\\feature\\van_tieu\\bossvantieu.lua",
	5,"S¬n tÆc trung",nil,RANDOMC(0,1,2,3,4),0,1000000,nil,5000,100,1,1,1,500,50,nil,"\\script\\feature\\van_tieu\\bossvantieu.lua")
	SetNpcValue(nNpcIdx,2)
	nNpcIdx = AddNpcNew(701,100,21,64069,119871,"\\script\\feature\\van_tieu\\bossvantieu.lua",
	5,"S¬n tÆc th­îng",nil,RANDOMC(0,1,2,3,4),0,1000000,nil,5000,100,1,1,1,500,50,nil,"\\script\\feature\\van_tieu\\bossvantieu.lua")
	SetNpcValue(nNpcIdx,3)
end

function addtrapvantieu()
	AddTrapEx1(21,2624,4521,30,"\\script\\maps\\khac\\trap\\thanhthanhson-thanhdo.lua")--trap thanh thanh son-> thanh do
	AddTrapEx1(11,2813,4803,30,"\\script\\maps\\khac\\trap\\thanhdo-thanhthanhson.lua")--trap thanh do-> thanh thanh son
	AddTrapEx3(21,1864,3674,30,"\\script\\feature\\van_tieu\\trap.lua")--trap chan. khu vuc bi loi~
	AddTrapEx4(21,2452,3867,25,"\\script\\feature\\van_tieu\\trap_sontac1.lua")
	AddTrapEx1(21,2253,3803,30,"\\script\\feature\\van_tieu\\trap_sontac2.lua")
	AddTrapEx2(21,1974,3758,30,"\\script\\feature\\van_tieu\\trap_sontac3.lua")
end
