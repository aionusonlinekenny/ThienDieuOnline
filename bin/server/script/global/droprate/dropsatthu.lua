--Kinnox
Include("\\script\\header\\taskid.lua");
Include("\\script\\header\\event_head.lua");
Include("\\script\\global\\droprate\\DropMain.lua");
Include("\\script\\global\\droprate\\SourceDrop.lua");
Include("\\script\\lib\\worldlibrary.lua");
SATTHU_EXP = 150000;

function DropRate(NpcIndex)
local nValue = GetTask(TASK_NVST);
local nNum = GetNumber(2,nValue,1);
local nGenre	= random(1,getn(KindItem)); --KindFiveElement[1]
local nLevel 	= random(1,2); -- level trang bi
local nSeries	= GetNpcSer(NpcIndex);
local nLuck		= GetLucky(0);	--may man cua nguoi choi
local nSel = random(0,20); -- ti le roi do
	  nDetail =KindItem[nGenre][1];
	  nParti  =random(KindItem[nGenre][2],KindItem[nGenre][3]);

	if (nNum == GetNpcValue(NpcIndex)) then
		---------------------------------
		dropnum = 8; --so' luong. cuc. do` roi
		--phan rot vat pham trang bi-----------------
		for i=1,dropnum do
			nGenre	= random(1,getn(KindItem));
			nLevel 	= random(9,10);
			nSeries	= GetNpcSer(NpcIndex);
			nLuck	= GetLucky(0) + 10;-- xin hon quai thuong diem may man;
			nNumLine  = random(5,6); -- so dong cua trang bi xanh
			nDetail =KindItem[nGenre][1];
			nParti  =random(KindItem[nGenre][2],KindItem[nGenre][3]);
			CalCulator_Drop(NpcIndex,nGenre,nDetail,nParti,nLevel,nSeries,nLuck,nNumLine);
		end
		
		nValue = SetNumber(2,nValue,1,0);
		SetTask(TASK_NVST,nValue);
		nValue = GetTask(TASK_RESET);
		local nTimes = GetNumber(2,nValue,4);
		nValue = SetNumber(2,nValue,4,nTimes+1);
		SetTask(TASK_RESET,nValue);
		--Add them gi thi bo vao day lun

		AddOwnExp(SATTHU_EXP);
                          AddItemID(AddItem(0,2,34,0,0,5,0,0));    ---- r­¬ng ho¹t ®éng
		AddItemIDStack(AddItem(0,6,398,0,0,nSeries,0,0));--add theo he ngu hanh;
		AddSkillState(541,1,0,54);
		Msg2Player("B¹n ®· thu phôc ®­îc tªn s¸t thñ, hoµn thµnh nhiÖm vô!");

		--phan tang vat pham trang bi------9 nhiem vu----------	
		if(nTimes == 9) then
			if(CheckRoom(2,2) == 1) then
				for i=1,2 do
				local nNewItem={};
				nNewItem[i]= AddItemID(AddItem(0,6,71,0,0,5,0,0)) -- Tien thao lo
				LockItem(nNewItem[i]);
				end
				Msg2Player("B¹n nhËn ®­îc phÇn th­ëng s¸t thñ.");
			end
		end
		---------------------------------
		--phan rot vat pham dac biet--
		if (nSel < 5 ) then return end;
		-- if (nSel == 6) then -- rot bi kip 
			-- DropMenpai(NpcIndex);
		elseif(nSel == 7) then
			DropQuestKey(NpcIndex,(random(238,240))); -- thuy tinh;
		elseif(nSel == 8) then
			DropQuestKey(NpcIndex,353); -- tinh hong bao thach;
		elseif(nSel == 9) then
			DropMagicScript(NpcIndex,(random(121,123))); -- phuc duyen;
		else
		-- Khong rot;
		end
		
		--event----------------
		-- addevent(20);
		-----------------------------
		local nVang = random(1,5)
		AddExtPoint(nVang)
	Msg2SubWorld("<pic=125><color=cyan>§¹i hiÖp <color=pink>"..GetName().." <color>may m¾n nhËn ®­îc <color=white>"..nVang.." Vµng<color> khi tiªu diÖt <color=yellow>Boss S¸t Thñ")
	end

-- end
function DropMenpai(NpcIndex)
	local nRanMenPai = random(1,5);
	local tMenpai = random(1,getn(TAB_Menpai));
	local nMenPai = random(1,getn(TAB_Menpai[tMenpai]));
	local findMenPai = TAB_Menpai[tMenpai][nMenPai];
	if (nRanMenPai == 4) then
		DropMagicScript(NpcIndex,findMenPai);
	elseif (nRanMenPai== 5) then
		if random(100) > 99 then
		DropMagicScript(NpcIndex,1126); -- Bi kip 120;
		end
	else
	--Khong rot;
	end
end









