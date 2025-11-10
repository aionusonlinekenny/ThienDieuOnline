Include("\\script\\global\\lastdamage\\Deathlib.lua");

function LastDamage(NpcIndex)
end
DAMAGE=200
--khi hoi sinh
function Revive(NpcIndex)
	local Series = GetNpcSer(NpcIndex);--
	local nSTVL, nDoc, nBang, nHoa, nLoi = 0,0,0,0,0;
	if(Series==0) then		--KIM
		SetNpcSkill(NpcIndex, 321, 10, 1);
		SetNpcSkill(NpcIndex, 321, 10, 2);
		SetNpcSkill(NpcIndex, 321, 10, 3);
		SetNpcSkill(NpcIndex, 321, 10, 4);
		nSTVL = DAMAGE;
	elseif(Series==1) then	--MOC
		SetNpcSkill(NpcIndex, 355, 10, 1);
		SetNpcSkill(NpcIndex, 355, 10, 2);
		SetNpcSkill(NpcIndex, 355, 10, 3);
		SetNpcSkill(NpcIndex, 355, 10, 4);
		nDoc = floor(DAMAGE/4);
	elseif(Series==2) then	--THUY
		SetNpcSkill(NpcIndex, 337, 10, 1);
		SetNpcSkill(NpcIndex, 337, 10, 2);
		SetNpcSkill(NpcIndex, 337, 10, 3);
		SetNpcSkill(NpcIndex, 337, 10, 4);
		nBang = DAMAGE; 
	elseif(Series==3) then	--HOA
		SetNpcSkill(NpcIndex, 362, 10, 1);
		SetNpcSkill(NpcIndex, 362, 10, 2);
		SetNpcSkill(NpcIndex, 362, 10, 3);
		SetNpcSkill(NpcIndex, 362, 10, 4);
		nHoa = DAMAGE;
	elseif(Series==4) then	--THO
		SetNpcSkill(NpcIndex, 375, 10, 1);
		SetNpcSkill(NpcIndex, 375, 10, 2);
		SetNpcSkill(NpcIndex, 375, 10, 3);
		SetNpcSkill(NpcIndex, 375, 10, 4);
		nLoi = DAMAGE;
	else					--KHONG CO HE, truong hop nay la add sai hay sao do
		nSTVL = DAMAGE;
	end
		SetNpcDmgEx(NpcIndex,nSTVL, nDoc, nBang, nHoa, nLoi ,0);--
		SetNpcDmgEx(NpcIndex,nSTVL, nDoc, nBang, nHoa, nLoi ,1);--
end
--Khi chet
function DeathSelf(NpcIndex)
AddOwnExp(KINH_NGHIEMTBK)
end
