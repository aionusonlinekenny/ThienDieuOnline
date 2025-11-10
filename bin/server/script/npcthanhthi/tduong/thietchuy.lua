--hoangnhk
Include("\\script\\header\\repute_head.lua");

function main()
Talk(1,"calc",10103);	
end;

function calc()
	local nRepute = GetRepute();
	local nReputeLv = GetReputeLevel(nRepute);
	Talk(1,"",format("Danh väng giang hå cña ng­¬i hiÖn t¹i lµ %d. Giang hå xem ng­¬i hiÖn giê lµ <color=Red>%s ",nRepute,GetReputeStr(nReputeLv)));
end

function no()
end;
