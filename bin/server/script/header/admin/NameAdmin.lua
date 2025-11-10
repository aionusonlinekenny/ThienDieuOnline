--Author: Kinnox
--Name Tool: Manager Player
--Date:25/10/2020
function Admin_Manager()
	local Name1 = "";
	local Name2 = "";
	local Name3 = "";
	local Name4 = "";
	local Name5 = "";
	-- TamLTM Add lenh bai gm admin
	if GetAccount() == Name1 or GetAccount() == Name2  or GetAccount() == Name3 or GetAccount() == Name4 or GetAccount() == Name5 then
		if GetItemCount(0,6,4812) < 1 then
			--AddItemID(AddItem(0,6,4812,0,0,5,0,0));
		end
	end;

end
