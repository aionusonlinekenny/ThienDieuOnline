--nguoi choi danh quai' cuoi cung` khi chet

function LastDamage(NpcIndex)
end
Include("\\script\\global\\lastdamage\\Deathlib.lua");

--khi hoi sinh
function Revive(NpcIndex)
	local Series = GetNpcSer(NpcIndex)
	local nSTVL, nDoc, nBang, nHoa, nLoi = 0,0,0,0,0;
	if(Series==0) then		--KIM
		SetNpcSkill(NpcIndex, 424, 50, 1);--ngu hanh tuong khac 50
		SetNpcSkill(NpcIndex, 424, 50, 2);
		SetNpcSkill(NpcIndex, 424, 50, 3);
		SetNpcSkill(NpcIndex, 424, 50, 4);
		nSTVL = 200; -- khong co tac dung voi skill co scripts
	elseif(Series==1) then	--MOC
		SetNpcSkill(NpcIndex, 425, 50, 1);
		SetNpcSkill(NpcIndex, 425, 50, 2);
		SetNpcSkill(NpcIndex, 425, 50, 3);
		SetNpcSkill(NpcIndex, 425, 50, 4);
		nDoc = 50;--doc sat khong giong sat thuong khac, = sat thuong khac chia 5, vi no co rut' doc
	elseif(Series==2) then	--THUY
		SetNpcSkill(NpcIndex, 426, 50, 1);
		SetNpcSkill(NpcIndex, 426, 50, 2);
		SetNpcSkill(NpcIndex, 426, 50, 3);
		SetNpcSkill(NpcIndex, 426, 50, 4);
		nBang = 200; --neu quai he thuy thi cho bang sat 
	elseif(Series==3) then	--HOA
		SetNpcSkill(NpcIndex, 427, 50, 1);
		SetNpcSkill(NpcIndex, 427, 50, 2);
		SetNpcSkill(NpcIndex, 427, 50, 3);
		SetNpcSkill(NpcIndex, 427, 50, 4);
		nHoa = 200;--quai he hoa thi cho hoa sat,tuy theo quai manh hay yeu ma` cho so nay, vi du 8x thi cho 75 chan han ok
	elseif(Series==4) then	--THO
		SetNpcSkill(NpcIndex, 428, 50, 1);
		SetNpcSkill(NpcIndex, 428, 50, 2);
		SetNpcSkill(NpcIndex, 428, 50, 3);
		SetNpcSkill(NpcIndex, 428, 50, 4);
		nLoi = 200;
	else					--KHONG CO HE, truong hop nay la add sai hay sao do
		SetNpcSkill(NpcIndex, 424, 50, 1);
		SetNpcSkill(NpcIndex, 424, 50, 2);
		SetNpcSkill(NpcIndex, 424, 50, 3);
		SetNpcSkill(NpcIndex, 424, 50, 4);
		nSTVL = 200;
	end
		SetNpcDmgEx(NpcIndex,nSTVL, nDoc, nBang, nHoa, nLoi,0);--sat thuong noi cong
		SetNpcResist(NpcIndex, 75, 75, 75, 75, 75);
		SetNpcHitRecover(NpcIndex,100);
end
--Khi chet
function DeathSelf(NpcIndex)
AddOwnExp(KINH_NGHIEM)
end
