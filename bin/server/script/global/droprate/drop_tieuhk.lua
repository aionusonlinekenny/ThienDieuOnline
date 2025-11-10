--Kinnox
Include("\\script\\global\\droprate\\DropMain.lua");
Include("\\script\\global\\droprate\\SourceDrop.lua");
Include("\\script\\lib\\worldlibrary.lua");
Include("\\script\\header\\event_head.lua");
function DropRate(NpcIndex)
SetTask(TAK_BOSHOANGKIM,GetTask(TAK_BOSHOANGKIM) + 1)
local MONEYdrop = (random(5000,7500))*MONEY;
local EXP       = 3000000;
	nDropNum  = 10; -- so mon do roi ra;
	
	for i = 1,nDropNum do
		local nGenre	= random(1,getn(KindItem)); --KindFiveElement[1]
		local nLevel 	= random(9,10); -- level trang bi
		local nSeries	= GetNpcSer(NpcIndex);
		local nLuck		= GetLucky(1) + 20;	--may man cua nguoi choi +4 diem may man;
		nNumLine  = 6; -- so dong cua trang bi xanh
	    nDetail =KindItem[nGenre][1];
	    nParti  =random(KindItem[nGenre][2],KindItem[nGenre][3]);
		CalCulator_Drop(NpcIndex,nGenre,nDetail,nParti,nLevel,nSeries,nLuck,nNumLine);
	end
	---------------------------------------------------------------------------
	----------------------------- DROP SPECIAL ITEM ---------------------------
	---------------------------------------------------------------------------
	for i = 1,random(1,3) do -- 2->4 mon do
		DropSpecialItem(NpcIndex);
	end
	for i = 1,random(1,3) do -- 1->2 the bai vu khi
		DropMagicScript(NpcIndex,4835)
	end
	---------------------------------------------------------------------------
	----------------------------- DROP EVENT  ---------------------------------
	---------------------------------------------------------------------------
	--addevent(50);
	
end;

function DropSpecialItem(NpcIndex)
local nSel	 = random(1,100); -- ti le roi do
	if (nSel == 1) then 
		DropMagicScript(NpcIndex,26); -- vo lam mat tich;
	elseif(nSel ==2) then
		DropMagicScript(NpcIndex,22); -- Tay tuy kinh;
	elseif(nSel ==3) then
		DropMagicScript(NpcIndex,71); -- Tien thao lo;
	elseif(nSel ==4) then
		DropMagicScript(NpcIndex,72); -- Que Hoa Tuu ;
	elseif(nSel ==5) then
		DropMagicScript(NpcIndex,73); -- Bach Qua Lo ;
	elseif(nSel ==6) then
		DropMagicScript(NpcIndex,1182); -- Tien thao lo dac biet ;
	elseif(nSel == 7) then
		DropQuestKey(NpcIndex,(random(238,240))); -- thuy tinh;
		nItemIdx = AddItem(2,0,random(0,139),0,0,5,0);  ----rít 1 HKMP ngÉu nhiªn
		SetObjPickExecute(DropItem(NpcIndex, nItemIdx),1);
                            Msg2SubWorld("<color=wood> Boss Hoµng Kim võa rít ra trang bÞ HKMP quý hiÕm... <color>")
                            logHKMP("trang bi hkmp rot ra\t\t") 
	elseif(nSel == 8) then
		DropQuestKey(NpcIndex,353); -- tinh hong bao thach;
	elseif(nSel == 9) then
		DropMagicScript(NpcIndex,(random(121,123))); -- Phuc duyen;
	elseif(nSel == 10) then
		DropQuestKey(NpcIndex,343); -- KNB;
	else
        end
end



function logHKMP(str)
	local gm_Log = "dulieu/HKMP.txt"
	local fs_log = openfile(gm_Log, "a");
	write(fs_log, date("%H:%M:%S_%d-%m-%y").."\t\t"..str.."\n");
	closefile(fs_log);
end














