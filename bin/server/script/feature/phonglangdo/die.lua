Include("\\script\\global\\lastdamage\\Deathlib.lua");
NPCEXP = 10000*Death_pld;
nDAME = 50*2
--nguoi choi danh quai' cuoi cung` khi chet
function LastDamage(NpcIndex)
end

--khi hoi sinh
function Revive(NpcIndex)
	local Series = GetNpcSer(NpcIndex)
	local nSTVL, nDoc, nBang, nHoa, nLoi = 0,0,0,0,0;
	if(Series==0) then		--KIM
		SetNpcSkill(NpcIndex, 419, 25, 1);
		SetNpcSkill(NpcIndex, 419, 25, 2);
		SetNpcSkill(NpcIndex, 419, 25, 3);
		SetNpcSkill(NpcIndex, 424, 25, 4);
		nSTVL = nDAME;
	elseif(Series==1) then	--MOC
		SetNpcSkill(NpcIndex, 420, 25, 1);
		SetNpcSkill(NpcIndex, 420, 25, 2);
		SetNpcSkill(NpcIndex, 420, 25, 3);
		SetNpcSkill(NpcIndex, 425, 25, 4);
		nDoc = nDAME;--doc sat khong giong sat thuong khac, = sat thuong khac chia 5, vi no co rut' doc
	elseif(Series==2) then	--THUY
		SetNpcSkill(NpcIndex, 421, 25, 1);
		SetNpcSkill(NpcIndex, 421, 25, 2);
		SetNpcSkill(NpcIndex, 421, 25, 3);
		SetNpcSkill(NpcIndex, 426, 25, 4);
		nBang = nDAME; --neu quai he thuy thi cho bang sat
	elseif(Series==3) then	--HOA
		SetNpcSkill(NpcIndex, 422, 25, 1);
		SetNpcSkill(NpcIndex, 422, 25, 2);
		SetNpcSkill(NpcIndex, 422, 25, 3);
		SetNpcSkill(NpcIndex, 427, 25, 4);
		nHoa = nDAME;--quai he hoa thi cho hoa sat,tuy theo quai manh hay yeu ma` cho so nay, vi du 8x thi cho 75 chan han ok
	elseif(Series==4) then	--THO
		SetNpcSkill(NpcIndex, 423, 25, 1);
		SetNpcSkill(NpcIndex, 423, 25, 2);
		SetNpcSkill(NpcIndex, 423, 25, 3);
		SetNpcSkill(NpcIndex, 428, 25, 4);
		nLoi = nDAME;
	else					--KHONG CO HE, truong hop nay la add sai hay sao do
		SetNpcSkill(NpcIndex, 418, 25, 1);
		SetNpcSkill(NpcIndex, 418, 25, 2);
		SetNpcSkill(NpcIndex, 418, 25, 3);
		SetNpcSkill(NpcIndex, 418, 25, 4);
		nSTVL = nDAME;
	end
	if(GetNpcBoss(NpcIndex) == 2) then
		Msg2MSAll(1,"ThÒy t∆c Æ«u l‹nh Æ∑ xu t hi÷n!");
		--SetNpcExp(NpcIndex, NPCEXP*3);--set kinh nghiem lai nhu cu
		SetNpcDmgEx(NpcIndex,nSTVL, nDoc*3, nBang*3, nHoa*3, nLoi*3,1);--sat thuong ngoai cong
		SetNpcDmgEx(NpcIndex,nSTVL, nDoc*3, nBang*3, nHoa*3, nLoi*3,0);--sat thuong noi cong
	else
		--SetNpcExp(NpcIndex, NPCEXP);--set kinh nghiem lai nhu cu
		SetNpcDmgEx(NpcIndex,nSTVL, nDoc, nBang, nHoa, nLoi,1);--sat thuong ngoai cong
		SetNpcDmgEx(NpcIndex,nSTVL, nDoc, nBang, nHoa, nLoi,0);--sat thuong noi cong
	end
end
--Khi chet
function DeathSelf(NpcIndex)
AddOwnExp(KINH_NGHIEMPLD)
end
