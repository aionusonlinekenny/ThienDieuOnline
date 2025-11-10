Include("\\script\\header\\taskid.lua")

function DropRate(NpcIndex)
	local nValue = GetNpcValue(NpcIndex)
	local nTaskValue = GetTask(TASK_VANTIEU)
	local nTask = GetNumber(1,nTaskValue,2)
	if(nValue == 1) then
		SetTask(TASK_VANTIEU, SetNumber(1,nTaskValue,7,1))
	elseif (nValue == 2) then
		SetTask(TASK_VANTIEU, SetNumber(1,nTaskValue,8,1))
	elseif (nValue == 3) then
		SetTask(TASK_VANTIEU, SetNumber(1,nTaskValue,9,1))
	end
	Msg2Player("§· h¹ s¸t mét tªn s¬n tÆc!")
end

function LastDamage(NpcIndex)
end

nDAMAGE = 20
function Revive(NpcIndex)
	local nSeries = GetNpcSer(NpcIndex)
	local nSTVL, nDoc, nBang, nHoa, nLoi = 0,0,0,0,0
if(Series==0) then		--KIM
		SetNpcSkill(NpcIndex, 321, 20, 1);--ngu hanh tuong khac 50
		SetNpcSkill(NpcIndex, 321, 20, 2);
		SetNpcSkill(NpcIndex, 321, 20, 3);
		SetNpcSkill(NpcIndex, 321, 20, 4);
		nSTVL = nDAMAGE; -- khong co tac dung voi skill co scripts
	elseif(Series==1) then	--MOC
		SetNpcSkill(NpcIndex, 355, 20, 1);
		SetNpcSkill(NpcIndex, 355, 20, 2);
		SetNpcSkill(NpcIndex, 355, 20, 3);
		SetNpcSkill(NpcIndex, 355, 20, 4);
		nDoc = floor(nDAMAGE/4);--doc sat khong giong sat thuong khac, = sat thuong khac chia 4, vi no co rut' doc
	elseif(Series==2) then	--THUY
		SetNpcSkill(NpcIndex, 337, 20, 1);
		SetNpcSkill(NpcIndex, 337, 20, 2);
		SetNpcSkill(NpcIndex, 337, 20, 3);
		SetNpcSkill(NpcIndex, 337, 20, 4);
		nBang = nDAMAGE; --neu quai he thuy thi cho bang sat 
	elseif(Series==3) then	--HOA
		SetNpcSkill(NpcIndex, 362, 20, 1);
		SetNpcSkill(NpcIndex, 362, 20, 2);
		SetNpcSkill(NpcIndex, 362, 20, 3);
		SetNpcSkill(NpcIndex, 362, 20, 4);
		nHoa = nDAMAGE;--quai he hoa thi cho hoa sat,tuy theo quai manh hay yeu ma` cho so nay, vi du 8x thi cho 75 chan han ok
	elseif(Series==4) then	--THO
		SetNpcSkill(NpcIndex, 375, 20, 1);
		SetNpcSkill(NpcIndex, 375, 20, 2);
		SetNpcSkill(NpcIndex, 375, 20, 3);
		SetNpcSkill(NpcIndex, 375, 20, 4);
		nLoi = nDAMAGE;
	else					--KHONG CO HE, truong hop nay la add sai hay sao do
		SetNpcSkill(NpcIndex, 321, 20, 1);
		SetNpcSkill(NpcIndex, 355, 20, 2);
		SetNpcSkill(NpcIndex, 337, 20, 3);
		SetNpcSkill(NpcIndex, 362, 20, 4);
		nSTVL = nDAMAGE;
	end
	SetNpcDmgEx(NpcIndex, nSTVL, nDoc, nBang, nHoa, nLoi , 0)
	SetNpcDmgEx(NpcIndex, nSTVL, nDoc, nBang, nHoa, nLoi , 1)
end

function DeathSelf(NpcIndex)
end
