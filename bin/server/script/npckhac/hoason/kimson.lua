--hoangnhk
function main(NpcIndex)
	Say(12251,4,
	"Thµnh lËp bang héi/thanhlap",
	"T×m hiÓu vÒ bang héi/timhieu",
	"§ãng/no")
end;


function thanhlap()
	if(GetTongName() ~= "") then
		Talk(1,"",12263)
	return end
	OpenTong(1)
end;

function timhieu()
	Talk(1,"","cÇn cã 1 nh¹c v­¬ng kiÕm,300 ®iÓm danh väng,500 ®iÓm phóc duyªn,30 ®iÓm tµi l·nh ®¹o vµ 2000 v¹n");
end;

function no()
end;




