--------========================================================================================----------
--------========================================================================================----------
--------=======================================ANHVIETDONGNAI=====================================-----------
--------========================================================================================----------
--------========================================================================================----------
Include("\\script\\event\\demhuyhoang\\event.lua")

function main(nNpcIdx)
	local nPlayerLevel = GetLevel();

	if (nPlayerLevel < 90) then
		nGetSeedLevel = 1;
	elseif (nPlayerLevel >= 90 and nPlayerLevel < 120) then
		nGetSeedLevel = 2;
	elseif (nPlayerLevel >= 120) then
		nGetSeedLevel = 3;
	end
	local nSeedLevel = GetNpcParam(nNpcIdx, 1)
	
	if  nSeedLevel ~= 4 and nGetSeedLevel~= nSeedLevel then
		if (1 == GetNpcParam(nNpcIdx, 1)) then
			Msg2Player("ChØ cã ng­êi ch¬i cÊp d­íi 90 míi cã thÓ h¸i qu¶ nµy!")
		elseif (2 == GetNpcParam(nNpcIdx, 1)) then
			Msg2Player("Lo¹i qu¶ nµy chØ tõ cÊp 90 ®Õn cÊp 119 ng­êi ch¬i míi cã thÓ h¸i ®­îc.")
		else
			Msg2Player("Lo¹i qu¶ nµy ng­êi ch¬i tõ cÊp 120 trë lªn míi cã thÓ h¸i!")
		end
		return
	elseif nSeedLevel == 4 and nGetSeedLevel ~= 3 then
			Msg2Player("ChØ cã ng­êi ch¬i tõ cÊp 120 trë lªn míi cã thÓ h¸i qu¶ nµy!")
			return
	end;
	Msg2Player("§ang thu thËp...");
	--OpenProgressBar(1) // thanh tamLTM code
	PaceBar("thuthap("..nNpcIdx..")",4*18) -- 10*18 giay // roi do e test lai di xem ok chua.
end;

function thuthap(nNpcIdx)
	if(nNpcIdx <= 0) then 
	return end;
	if(GetNpcParam(nNpcIdx, 1) >= 1 and GetNpcParam(nNpcIdx, 1) <= 3) then
		if(GetNpcParam(nNpcIdx,4) >= 10) then
			return
		end;	
		if(CheckRoom(1,1) == 0) then
		Talk(1,"","Hµnh trang cña ng­¬i kh«ng cßn chç trèng")
		return end
		
		local nValue = GetTask(TASK_RESET);
		local nNum = GetNumber(1,nValue,2);		
		SetTask(TASK_RESET,SetNumber(1,nValue,2,nNum+1))
		local nItemIdx = AddItemID(AddItem(0,6,904+GetNpcParam(nNpcIdx, 1),0,0,5,0,0));
		AddTimeItem(nItemIdx, 604800);
		Msg2Player(format("B¹n nhËn ®­îc mét %s ",GetNameItem(nItemIdx)));
		SetNpcParam(nNpcIdx, 4, GetNpcParam(nNpcIdx,4)+1)		
		if(GetNpcParam(nNpcIdx,4) >= 10) then
			DelNpc(nNpcIdx)
		end
	elseif(GetNpcParam(nNpcIdx, 1) == 4) then
		if(GetNpcParam(nNpcIdx,4) >= 1) then
			return
		end;	
		if(CheckRoom(1,1) == 0) then
		Talk(1,"","Hµnh trang cña ng­¬i kh«ng cßn chç trèng")
		return end
		local nMoney = random(20,50)
		local nItemIdx = AddItemID(AddItem(0,6,908,0,0,5,0,0));
		AddTimeItem(nItemIdx, 604800);
		Msg2Player(format("B¹n nhËn ®­îc ",nMoney));
		SetNpcParam(nNpcIdx, 4, GetNpcParam(nNpcIdx,4)+1)		
		DelNpc(nNpcIdx)
	end
end;

function Timeout(nNpcIdx)
	DelNpc(nNpcIdx);
end;
