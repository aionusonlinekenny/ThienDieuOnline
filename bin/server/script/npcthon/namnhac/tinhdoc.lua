
function main(NpcIndex)
Say("<npc>: Hay thËt, hay thËt chØ cÇn cóng d­êng 10 v¹n ®Ó tu söa t­îng PhËt.",2,
"Quyªn gãp 10 v¹n l­îng./Wswear_yes",
"Thæi bá ®i!/no") 
end; 

function Wswear_yes() 
	if (GetCash() >= 100000 and GetLevel() > 100) then 
		Pay(100000) 
                            AddRepute(2)
		Talk(1,"","C¶m ¬n B¹n ®· quyªn gãp x©y dùng t­îng phËt, tÆng b¹n 2 danh väng")
		 else 
Talk(1,"","ThÊy thİ chñ cßn nghÌo h¬n c¶ ta n÷a, th«i kh«ng cÇn ®©u.")
	end 
end; 


function no() 
end; 

