Include("\\script\\header\\taskid.lua");


function main(nItemIdx)
 if (GetItemCount(0,6,74) >= 1) then
SetTask(TaskBCH,GetTask(TaskBCH) + 1)
RemoveItem(nItemIdx,1);
Msg2Player("Bπch c«u hoµn hi÷n tπi Æang c„: <color=yellow>"..GetTask(TaskBCH).."<color>")
else
end
end



function no()
end;





























