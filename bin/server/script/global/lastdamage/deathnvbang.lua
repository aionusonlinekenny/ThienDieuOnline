Include("\\script\\header\\exp_head.lua");
Include("\\script\\header\\taskid.lua");
Include("\\script\\lib\\worldlibrary.lua");

function LastDamage(NpcIndex)
end

NPCLIFE = 1000000

function Revive(NpcIndex)
	local Series = GetNpcSer(NpcIndex)
	local nSTVL, nDoc, nBang, nHoa, nLoi = 0,0,0,0,0;
	if(Series==0) then		--KIM
		SetNpcSkill(NpcIndex, 321, 20, 1);
		SetNpcSkill(NpcIndex, 325, 20, 2);
		nSTVL = 30;
	elseif(Series==1) then	--MOC
		SetNpcSkill(NpcIndex, 342, 20, 1);
		SetNpcSkill(NpcIndex, 355, 20, 2);
		nSTVL = 30;
	elseif(Series==2) then	--THUY
		SetNpcSkill(NpcIndex, 336, 20, 1);
		SetNpcSkill(NpcIndex, 380, 20, 2);
		nSTVL = 30;
	elseif(Series==3) then	--HOA
		SetNpcSkill(NpcIndex, 362, 11, 1);
		SetNpcSkill(NpcIndex, 359, 11, 2);
		nSTVL = 30;
	elseif(Series==4) then	--THO
		SetNpcSkill(NpcIndex, 368, 20, 1);
		SetNpcSkill(NpcIndex, 372, 20, 2);
		nSTVL = 30;
	else					--KHONG CO HE, truong hop nay la add sai hay sao do
		SetNpcSkill(NpcIndex, 321, 20, 1);
		SetNpcSkill(NpcIndex, 342, 20, 2);
		SetNpcSkill(NpcIndex, 380, 20, 3);
		SetNpcSkill(NpcIndex, 372, 20, 4);
		nSTVL = 35;
	end
		SetNpcReplenish(NpcIndex,5);--phuc hoi sinh luc
		SetNpcHitRecover(NpcIndex,35);--cao nhat la 100(ko giat) --tuy cam hung
		SetNpcSpeed(NpcIndex, 20);--toc do di chuyen tang len
		SetNpcResist(NpcIndex, 70, 70, 70, 70, 70);--khang' cac loai
		SetNpcDmgEx(NpcIndex,nSTVL*3, nDoc*3, nBang*3, nHoa*3, nLoi*3,0);--sat thuong noi cong
		SetNpcDmgEx(NpcIndex,nSTVL*3, nDoc*3, nBang*3, nHoa*3, nLoi*3,1);--sat thuong ngoai cong
		SetNpcDmgEx(NpcIndex,nSTVL, nDoc, nBang, nHoa, nLoi,0);--sat thuong noi cong
end
--Khi chet
function DeathSelf(NpcIndex)
end
