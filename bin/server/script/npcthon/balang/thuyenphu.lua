Include("\\script\\header\\taskid.lua");

function main(nNpcIndex)
	local nTaskValue = GetTask(TASK_DAOTAYTUY);
	local nTask = GetNumber(1,nTaskValue,8);
	if(nTask == 1) then
	AddItemID(AddItem(0,4,182,0,0,5,0,0))	
              Talk(1,"","H·y quay mang ngäc béi nµy cho cæ l·o th¸i, con trai æng chÕt ch×m råi");
              SetTask(TASK_DAOTAYTUY, SetNumber(1,GetTask(TASK_DAOTAYTUY),8,2));
	return end

	Say(11234,2,
	"§i Thiªn V­¬ng ®¶o/gothienvuong",
	"Kh«ng ngåi/no")
	
	
end;



function gothienvuong()
NewWorld(59,1415,3467)	
end

function no()	
end
