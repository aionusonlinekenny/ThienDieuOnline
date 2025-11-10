-----Quan Ly Danh Hieu by SON-----
-------3/1/2022---------
--------AddSkillState chua hoan thien-------------------
-------- SHOP FF chua code, chua fix buysell good------------
-------------------------------------------------------------
Include("\\script\\lib\\worldlibrary.lua");
Include("\\script\\header\\taskid.lua");

function main(NpcIndex)
danhhieuvip()
end

function danhhieuvip()
	Say(" <pic=115><color=cyan> ßi”m Uy Danh hi÷n tπi : <color><color=yellow>"..GetRespect().."",4,
		--"Qu∂n L˝ VIP/quanlyvip",
		"K’t thÛc ÆËi thoπi./no")
end
----------------------Qu∂n L˝ VIP--------------------------
tbSay = {
{"NhÀn VIP 1/vip(1)",1000,1,skillid},
{"NhÀn VIP 2/vip(2)",3000,2,skillid},
{"NhÀn VIP 3/vip(3)",5000,3,skillid},
{"NhÀn VIP 4/vip(4)",7000,4,skillid},
{"NhÀn VIP 5/vip(5)",9000,5,skillid},
{"NhÀn VIP 6/vip(6)",11000,6,skillid},
{"NhÀn VIP 7/vip(7)",15000,7,skillid},
{"NhÀn VIP 8/vip(8)",20000,8,skillid},
{"NhÀn VIP 9/vip(9)",25000,9,skillid},
{"NhÀn VIP 10/vip(10)",30000,10,skillid},
{"NhÀn VIP 11/vip(11)",40000,11,skillid},
{"NhÀn VIP 12/vip(12)",50000,12,skillid}
};

function quanlyvip()
                Say("<pic=115><color=cyan> ßi”m Uy Danh hi÷n tπi : <color><color=yellow>"..GetRespect().."",13,
					tbSay[1][1],
					tbSay[2][1],
					tbSay[3][1],
					tbSay[4][1],
					tbSay[5][1],
					tbSay[6][1],
					tbSay[7][1],
					tbSay[8][1],
					tbSay[9][1],
					tbSay[10][1],
					tbSay[11][1],
					tbSay[12][1],
					"Quay Lπi/main")


end;
------------------------------danh hieu VIP----------------
function vip(nSel)
        Say("<pic=115><color=cyan> Danh Hi÷u Vip<color=yellow> "..tbSay[nSel][3].." <color>c«n:<color=yellow> "..tbSay[nSel][2].." <color> Æi”m Uy Danh <color>\n<pic=115><color=cyan> Hi÷n Tπi Bπn Æang c„ : <color=yellow>"..GetRespect().."<color> Æi”m th≠Îng <color>", 3, 
            "NhÀn Danh Hi÷u/getviprank(tbSay[nSel][3])", 
            "TrÎ Lπi/quanlyvip")
end;

function getviprank(nvip)
	local nTask = GetTask(TASK_DANHHIEU)
	local TaskVip = GetNumber(1, nTask, nvip)
	local szUD = GetRespect()
	if szUD < tbSay[nvip][2] then 
		Talk(1,"","Uy Danh cÒa ßπi Hi÷p ch≠a Æπt Æ’n "..tbSay[nvip][4].." kh´ng th” nhÀn Æ≠Óc !")
	return end
	if TaskVip == 1  then
		Talk(1,"","ßπi Hi÷p Æ∑ nhÀn danh hi÷u nµy rÂi ! Kh´ng th” nhÀn th™m !")
	return end
	SetTask(TASK_DANHHIEU, SetNumber(1, nTask, nvip, 1))
	AddSkillState(tbSay[nvip][4], 1, 1, 9999*24*60*60*18, 1);
end

-------------------------------SHOP UY DANH------------------------------------

-------------------------------------------
function no()
end;

