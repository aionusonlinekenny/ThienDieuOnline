--Kinnox
Include("\\script\\global\\droprate\\DropMain.lua");
Include("\\script\\global\\droprate\\SourceDrop.lua");
Include("\\script\\lib\\worldlibrary.lua");
function DropRate(NpcIndex)
local btype 	= GetNpcBoss(NpcIndex);
local MONEY_0x = (random(30,70))*MONEY;
local nGenre	= random(1,getn(KindItem)); --KindFiveElement[1]
local nLevel 	= random(1,2); -- level trang bi
local nSeries	= GetNpcSer(NpcIndex);
local nLuck		= GetLucky(0);	--may man cua nguoi choi
local nSel = random(0,15); -- ti le roi do
		nDetail =KindItem[nGenre][1];
		nParti  =random(KindItem[nGenre][2],KindItem[nGenre][3]);
----------------For blue boss-----------------------------------------------------------
	if(btype == 1) then--boss xanh
	dropnum = 5; --so' luong. cuc. do` roi
	for i=1,dropnum do
		nSel = random(0,20);
		if(nSel < 5) then
			DropMoney(NpcIndex,MONEYdrop)
		elseif(nSel == 8) then
		nItemIdx = AddItem(0,6,212,0,0,5,0,0); -- mat chi
		SetObjPickExecute(DropItem(NpcIndex, nItemIdx),1);
		elseif(nSel > 5) then
			nGenre	= random(1,getn(KindItem));
			nLevel 	= random(1,2);
			nSeries	= GetNpcSer(NpcIndex);
			nLuck	= GetLucky(0);-- xin hon quai thuong 1 diem may man;
			nNumLine  = random(1,2); -- so dong cua trang bi xanh
			nDetail =KindItem[nGenre][1];
			nParti  =random(KindItem[nGenre][2],KindItem[nGenre][3]);
			-- Msg2Player(""..nGenre.." - "..nDetail.." - "..nParti.." - "..nLevel.." - "..nSeries.." - "..nLuck.." - "..nNumLine.."  ");
			CalCulator_Drop(NpcIndex,nGenre,nDetail,nParti,nLevel,nSeries,nLuck,nNumLine);
		end
	end
	return end
-----------------------------------------------------------------------------------------
	if(nSel > 2) then	--khong rot
	return end
-----------------------------------------------------------------------------------------
	if(nSel == 2) then
		DropMoney(NpcIndex,MONEYdrop)
	elseif(nSel == 1) then
		if(random(2) == 1) then
		nItemIdx = AddItem(0,6,RANDOMC(205,391),0,0,5,0,0); -- than bi lo chi,thit tuoi
		SetObjPickExecute(DropItem(NpcIndex, nItemIdx),1);
		end;
	elseif (nSel == 4) then
		nRanItem = random(1,10)
		if (nRanItem  > 8) then
		nNumLine  = random(1,3); -- so dong cua trang bi xanh
		CalCulator_Drop(NpcIndex,nGenre,nDetail,nParti,nLevel,nSeries,nLuck,nNumLine);
		end
	end
end

function DropMenpai(NpcIndex)
	local nRanMenPai = random(1,5);
	local tMenpai	 = random(1,getn(TAB_Menpai));
	local nMenPai 	 = random(1,getn(TAB_Menpai[tMenpai]));
	local findMenPai = TAB_Menpai[tMenpai][nMenPai];
	if (nRanMenPai == 4) then
		DropMagicScript(NpcIndex,findMenPai);
	elseif (nRanMenPai == 5) then
		DropMagicScript(NpcIndex,1126); -- Bi kip 120;
	else
	-- Khong rot;
	end
end
