Include("\\script\\header\\taskid.lua")

function DropRate(NpcIndex)
end

function LastDamage(NpcIndex)
end

nDAMAGE = 200
function Revive(NpcIndex)
	local Series = GetNpcSer(NpcIndex);
	local nSTVL, nDoc, nBang, nHoa, nLoi = 0,0,0,0,0;
	if(Series==0) then		--KIM
		SetNpcSkill(NpcIndex, 321, 20, 1);
		SetNpcSkill(NpcIndex, 319, 20, 2);
		SetNpcSkill(NpcIndex, 322, 20, 3);
		SetNpcSkill(NpcIndex, 325, 20, 4);
		nSTVL = nDAMAGE;
	elseif(Series==1) then	--MOC
		SetNpcSkill(NpcIndex, 339, 20, 1);
		SetNpcSkill(NpcIndex, 342, 20, 2);
		SetNpcSkill(NpcIndex, 302, 20, 3);
		SetNpcSkill(NpcIndex, 390, 20, 4);
		nDoc = nDAMAGE;
	elseif(Series==2) then	--THUY
		SetNpcSkill(NpcIndex, 328, 20, 1);
		SetNpcSkill(NpcIndex, 380, 20, 2);
		SetNpcSkill(NpcIndex, 336, 20, 3);
		SetNpcSkill(NpcIndex, 337, 20, 4);
		nBang = nDAMAGE;
	elseif(Series==3) then	--HOA
		SetNpcSkill(NpcIndex, 357, 20, 1);
		SetNpcSkill(NpcIndex, 359, 20, 2);
		SetNpcSkill(NpcIndex, 361, 20, 3);
		SetNpcSkill(NpcIndex, 362, 20, 4);
		nHoa = nDAMAGE;
	elseif(Series==4) then	--THO
		SetNpcSkill(NpcIndex, 365, 20, 1);
		SetNpcSkill(NpcIndex, 368, 20, 2);
		SetNpcSkill(NpcIndex, 372, 20, 3);
		SetNpcSkill(NpcIndex, 375, 20, 4);
		nLoi = nDAMAGE;
	else					--KHONG CO HE, truong hop nay la add sai hay sao do
		SetNpcSkill(NpcIndex, 40, 20, 1);
		SetNpcSkill(NpcIndex, 31, 20, 2);
		SetNpcSkill(NpcIndex, 35, 20, 3);
		SetNpcSkill(NpcIndex, 323, 20, 4);
		nSTVL = nDAMAGE;
	end
	SetNpcDmgEx(NpcIndex, nSTVL, nDoc, nBang, nHoa, nLoi , 0)
	SetNpcDmgEx(NpcIndex, nSTVL, nDoc, nBang, nHoa, nLoi , 1)
end

function Timeout(nNpcIdx)
	DelNpc(nNpcIdx);
end;

function DeathSelf(NpcIndex)
	DelNpc(NpcIndex)
end;
