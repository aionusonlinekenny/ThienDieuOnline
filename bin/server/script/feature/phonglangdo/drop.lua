
Include("\\script\\global\\droprate\\DropMain.lua");
Include("\\script\\global\\droprate\\SourceDrop.lua");
Include("\\script\\lib\\worldlibrary.lua");
Include("\\script\\header\\event_head.lua");
THE_BAI = { 
{4827,"ThÎ trang bÞ  <color=yellow> Kh«i M·o <color>"},
{4828,"ThÎ Trang BÞ <color=yellow> Y Phôc <color>"},
{4829,"ThÎ Trang BÞ <color=yellow> Hµi <color>"},
{4830,"ThÎ Trang BÞ <color=yellow> Yªu §¸i <color>"},
{4831,"ThÎ Trang BÞ <color=yellow> Hé UyÓn <color>"},
{4832,"ThÎ Trang BÞ <color=yellow> H¹ng Liªn <color>"},
{4833,"ThÎ Trang BÞ <color=yellow> Ngäc Béi <color>"},
{4834,"ThÎ Trang BÞ <color=yellow> Giíi ChØ <color>"},
{4835,"ThÎ Trang BÞ <color=yellow> Vò KhÝ <color>"}
}

function DropRate(NpcIndex)
local nBoss 	= GetNpcBoss(NpcIndex);
local MONEYdrop = (random(500,750))*MONEY;
local nGenre	= random(1,getn(KindItem)); --KindFiveElement[1]
local nLevel 	= random(8,10); -- level trang bi
local nSeries	= GetNpcSer(NpcIndex);
local nLuck		= GetLucky(0);	--may man cua nguoi choi
local nSel = random(0,15); -- ti le roi do
	  nDetail =KindItem[nGenre][1];
	  nParti  =random(KindItem[nGenre][2],KindItem[nGenre][3]);

if(nBoss == 0) then ------npc thuong----------------------------
		nnSel = random(1,10)
		if(nnSel == 1 ) then
				nItemIdx = AddItem(0,1,2,0,5,0,0);
				DropItem(NpcIndex, nItemIdx)--mau ngu hoa
		elseif(nnSel == 2) then
				DropMoney(NpcIndex,MONEYdrop)
		elseif(nnSel == 3) then
				if(random(2) == 1) then
					nItemIdx = AddItem(0,6,205,0,0,5,0,0); -- than bi lo chi
					SetObjPickExecute(DropItem(NpcIndex, nItemIdx),1);
				end;
		elseif (nnSel == 4) then
				nRanItem = random(1,10)
				if (nRanItem > 8) then
					nNumLine  = random(1,4); -- so dong cua trang bi xanh
					CalCulator_Drop(NpcIndex,nGenre,nDetail,nParti,nLevel,nSeries,nLuck,nNumLine);
				end
		else
				----khong rot
				AddExtPoint(500);
		end
else----------boss--------------------
	local dropnum = 5; --so' luong. cuc. do` roi
	for i=1,random(2,3) do
			nSel = RANDOM(1,10);
			if(nSel == 1) then
				for i=1,2 do 
					-- local nthebai = random(1,getn(THE_BAI))
					--DropMagicScript(NpcIndex,THE_BAI[nthebai][1]) 
					--Msg2SubWorld("§¹i HiÖp <color=yellow>"..GetName().." tiªu diÖt Thñy TÆc §Çu LÜnh r¬i <<"..THE_BAI[nthebai][2]..">>");
                                                         AddItemID(AddItem(0,2,34,0,0,5,0,0));    ---- r­¬ng ho¹t ®éng
				end
			elseif(nSel == 2) then
				nItemIdx = AddItem(0,6,212,0,0,5,0,0); -- mat chi
				SetObjPickExecute(DropItem(NpcIndex, nItemIdx),1);
                                                       AddItemID(AddItem(0,2,34,0,0,5,0,0));    ---- r­¬ng ho¹t ®éng
			elseif(nSel == 3) then -- roi bi kip 9x va 120;
				if random(50) > 30 then
					--DropMenpai(NpcIndex);
                                                               AddItemID(AddItem(0,2,34,0,0,5,0,0));    ---- r­¬ng ho¹t ®éng
				end
			elseif(nSel == 4 ) then
				DropQuestKey(NpcIndex,(random(238,240))); -- thuy tinh;
			else
				DropMoney(NpcIndex,MONEYdrop)
                                                        AddItemID(AddItem(0,2,34,0,0,5,0,0));    ---- r­¬ng ho¹t ®éng
			end
	end
	for i=1,dropnum do
			nGenre	= random(1,getn(KindItem));
			nLevel 	= random(8,10);
			nSeries	= GetNpcSer(NpcIndex);
			nLuck	= GetLucky(0)+10;-- xin hon quai thuong 1 diem may man;
			nNumLine  = random(4,6); -- so dong cua trang bi xanh
			nDetail =KindItem[nGenre][1];
			nParti  =random(KindItem[nGenre][2],KindItem[nGenre][3]);
			CalCulator_Drop(NpcIndex,nGenre,nDetail,nParti,nLevel,nSeries,nLuck,nNumLine);    
	end
	for i=1,random(2,4) do
			     DropMagicScript(NpcIndex,3361) 
	end
end
end

function DropMenpai(NpcIndex)
	local nRanMenPai = random(1,50);
	local tMenpai = random(1,getn(TAB_Menpai));
	local nMenPai = random(1,getn(TAB_Menpai[tMenpai]));
	local findMenPai = TAB_Menpai[tMenpai][nMenPai];
	if (nRanMenPai == 4) then
		DropMagicScript(NpcIndex,findMenPai);
	elseif (nRanMenPai==5) then
		-- DropMagicScript(NpcIndex,1126); -- Bi kip 120;
	else
	--Khong rot;
	end
end
