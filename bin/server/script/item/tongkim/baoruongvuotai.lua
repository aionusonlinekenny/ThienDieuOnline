--Author: Kinnox
--Date: 21/10/2020
--NameTool: Bao Ruong Tong Kim
Include("\\script\\lib\\worldlibrary.lua");
function main(nItemIdx)
	local nRan = random(1,15);
	if (nRan == 1) then
		AddQuestKey(random(238,240)); -- thuy tinh;
	elseif (nRan == 2) then
		AddMagicScript(random(121,123)); -- phuc duyen;
	elseif (nRan == 3) then
		AddQuestKey(353); -- tinh hong bao thach;
	elseif (nRan == 4) then
		local nIndex = AddItemID(AddItem(0,4,417,0,0,5,0,0)) --tien dong 10 cai
		nXu = 10;
		SetStackItem(nIndex,nXu);
		Msg2SubWorld("ßπi hi÷p <color=yellow>"..GetName().."<color> vıa nhÀn Æ≠Óc <color=yellow>"..nXu.."<color> xu tı b∂o r≠¨ng tËng kim!");
	elseif (nRan == 5) then
		AddMagicScript(2126); -- long huyet hoan
	elseif (nRan == 6) then
		local nHorse = random(1,10);
		local nIndex = AddItemID(AddItem(0,6,random(2337,2341),0,0,5,0,0)) --Ma bai
		if nHorse == 4 then
			AddItemID(AddItem(0,0,10,5,random(1,5),5,0));
			Msg2SubWorld("ßπi hi÷p <color=yellow>"..GetName().."<color> vıa nhÀn Æ≠Óc <color=yellow>Chi’n bµi v‹nh vi‘n<color> tı b∂o r≠¨ng tËng kim!");
		else
			AddTimeItem(nIndex,30*24*60*60) -- 30 ngay;
			Msg2SubWorld("ßπi hi÷p <color=yellow>"..GetName().."<color> vıa nhÀn Æ≠Óc <color=yellow>M∑ bµi<color> tı b∂o r≠¨ng tËng kim!");
		end
	else
		AddQuestKey(489);
	end
	Msg2Player("C∏c hπ vıa nhÀn Æ≠Óc mÈt vÀt ph»m tı b∂o r≠¨ng tËng kim!");
	RemoveItem(nItemIdx,1)
end