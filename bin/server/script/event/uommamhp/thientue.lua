--------========================================================================================----------
--------========================================================================================----------
--------=======================================ANHVIETDONGNAI=====================================-----------
--------========================================================================================----------
--------========================================================================================----------

Include("\\script\\event\\uommamhp\\lib.lua")

function main(nNpcIndex)
	local DOITHOAI = "";
	local DIALOG={};
	if (GetNpcOwner(nNpcIndex) ~= GetName()) then
		DOITHOAI = GetNpcOwner(nNpcIndex).." trÂng <color=green><npc><color>: Chµo mıng ngµy Æ t n≠Ìc Æ≠Óc gi∂i ph„ng!";
	else
		if (GetNpcValue(nNpcIndex) > 0) then
			DOITHOAI = format("Ng≠¨i Æ∑ trÂng <color=green>%s<color> vµ Æ∑ nhÀn Æ≠Óc <color=green>%d<color> Æi”m. Khi nµo Æi”m t›ch lÚy bªng <color=green>%d<color> th◊ c„ th” nhÀn th≠Îng Æ≠Óc rÂi! thoi gian con: "..GetNpcTimeout(nNpcIndex).." s",
			GetNpcName(nNpcIndex), 
			GetNpcValue(nNpcIndex), 
			GetNpcParam(nNpcIndex,1));
			if (GetNpcValue(nNpcIndex) ~= GetNpcParam(nNpcIndex,1)) then
				tinsert(DIALOG, format("B„n ph©n (ßi”m t›ch lÚy hi÷n tπi g p 2 l«n)/congcu(%d,%d)",nNpcIndex, 1))
				tinsert(DIALOG, format("T≠Ìi n≠Ìc (ßi”m t›ch lÚy hi÷n tπi cÈng 2 l«n)/congcu(%d,%d)",nNpcIndex, 2))
				tinsert(DIALOG, format("Gi’t s©u b‰ (ßi”m t›ch lÚy hi÷n tπi trı 2 l«n)/congcu(%d,%d)",nNpcIndex, 3))
			else
				tinsert(DIALOG, format("Ta muËn nhÀn th≠Îng/nhanthuong(%d)",nNpcIndex))
			end
		else
			DOITHOAI = GetNpcOwner(nNpcIndex).." trÂng <color=green><npc><color>: Chµo mıng ngµy Æ t n≠Ìc Æ≠Óc gi∂i ph„ng!";
		end;
	end
	tinsert(DIALOG, "RÍi kh·i/no");
	Say("LINK:<npc>",0,DOITHOAI,getn(DIALOG),DIALOG);
end

function congcu(nNpcIndex,nToolID)
		if(FindAroundNpc(GetNpcID(nNpcIndex)) <= 0) then
			return end
	if (PLANT_TOOL[nToolID]) then
		if(DelItem(1,0,PLANT_TOOL[nToolID][2][1],PLANT_TOOL[nToolID][2][2])) == 1 then
			if(nToolID==1) then
			SetNpcValue(nNpcIndex,GetNpcValue(nNpcIndex)*PLANT_TOOL[nToolID][3]);
			elseif(nToolID==2) then
			SetNpcValue(nNpcIndex,GetNpcValue(nNpcIndex)+PLANT_TOOL[nToolID][3]);
			elseif(nToolID==3) then
			SetNpcValue(nNpcIndex,GetNpcValue(nNpcIndex)-PLANT_TOOL[nToolID][3]);
			end
			main(nNpcIndex);
		else
			Talk(1, "", format("H◊nh nh≠ c∏c hπ qu™n Æem <color=yellow>%s<color>!",PLANT_TOOL[nToolID][1]));
		end
	end
end

function nhanthuong(nNpcIndex)
	local nTaskSave = GetTask(TASK_THIENTUE)
	local nTask = GetTask(TASK_THIENTUE1)
	local nIDNpc = GetNumber(1, nTaskSave, 1)
	local NpcID = GetNpcParam(nNpcIndex, 2);
	-- print("Son check value nIDNpc:"..nIDNpc.."")
	-- print("Son check value NpcID:"..NpcID.."")
	-- print("Son check value nTask:"..nTask.."")
	if NpcID ~= nTask then 
	return end
		AddOwnExp(THIENTUE_EXP[nIDNpc]);
	for i=1,2 do 
		local szRand = RANDOM(4827,4834)
		AddMagicScript(szRand) 
	end
	for i=2,4 do
			AddQuestKey(random(238,240)); -- thuy tinh;
	end
	Msg2Player("Bπn nhÀn Æ≠Óc<color=yellow> ThÒy Tinh <color>tı C©y Thi™n Tu’ !")
	Msg2SubWorld("ßπi Hi÷p <color=yellow> "..GetName().." <color> Æ∑ nhÀn Æ≠Óc <color=yellow> ThŒ Bµi Trang Bﬁ <color>tı C©y Thi™n Tu’!")
	SetNpcValue(nNpcIndex,0);
	SetTask(TASK_THIENTUE,0)
	SetTask(TASK_THIENTUE1,0)
	-- print("Son check value TASK_THIENTUE num 1:"..GetNumber(1,GetTask(TASK_THIENTUE),1).."")
	-- print("Son check value TASK_THIENTUE num 2:"..GetNumber(1,GetTask(TASK_THIENTUE),2).."")
end

function Timeout(nNpcIndex)
	DelNpc(nNpcIndex)
end

function no()
end
