--Boss Tieu Hoang Kim
xDAME = 2
function LastDamage(NpcIndex)
        local NameBang,IDBangOld = GetTongName();
        local w,x,y = GetWorldPos();
		local nCount = 1500;
        local gmidx=PlayerIndex
		for i=1,nCount do
			  PlayerIndex = i;
                          local NewNameBang,NewIDBang = GetTongName()
                          local w1,x1,y1 = GetWorldPos();
                          if ( NewIDBang == IDBangOld and w1 == w ) then
                              AddOwnExp(20000000)    
                          end
                end
        PlayerIndex=gmidx-----tra ve lai nguoi ket thuc
        AddRespect(20)
	    Msg2Player("<color=yellow>B¹n may m¾n ®­îc 20 ®iÓm th­ëng.");
        Msg2SubWorld("Chóc mõng ng­êi ch¬i<color=yellow> "..GetName().." <color> Bang <color=yellow> "..NameBang.." <color>h¹ ®­îc boss tiÓu HK nhËn ®­îc <color=cyan> 20 triÖu EXP <color>")
end;

--khi hoi sinh
function Revive(NpcIndex)
	local Series = GetNpcSer(NpcIndex);--
	local nSTVL, nDoc, nBang, nHoa, nLoi = 0,0,0,0,0;
	if(Series==0) then		--KIM
		SetNpcSkill(NpcIndex, 321, 20, 1);
		SetNpcSkill(NpcIndex, 319, 20, 2);
		SetNpcSkill(NpcIndex, 322, 20, 3);
		SetNpcSkill(NpcIndex, 325, 20, 4);
		nSTVL = 1000*xDAME;
	elseif(Series==1) then	--MOC
		SetNpcSkill(NpcIndex, 339, 20, 1);
		SetNpcSkill(NpcIndex, 342, 20, 2);
		SetNpcSkill(NpcIndex, 302, 20, 3);
		SetNpcSkill(NpcIndex, 390, 20, 4);
		nDoc = 200*xDAME;
	elseif(Series==2) then	--THUY
		SetNpcSkill(NpcIndex, 328, 20, 1);
		SetNpcSkill(NpcIndex, 380, 20, 2);
		SetNpcSkill(NpcIndex, 336, 20, 3);
		SetNpcSkill(NpcIndex, 337, 20, 4);
		nBang = 1000*xDAME; 
	elseif(Series==3) then	--HOA
		SetNpcSkill(NpcIndex, 357, 20, 1);
		SetNpcSkill(NpcIndex, 359, 20, 2);
		SetNpcSkill(NpcIndex, 361, 20, 3);
		SetNpcSkill(NpcIndex, 362, 20, 4);
		nHoa = 1000*xDAME;
	elseif(Series==4) then	--THO
		SetNpcSkill(NpcIndex, 365, 20, 1);
		SetNpcSkill(NpcIndex, 368, 20, 2);
		SetNpcSkill(NpcIndex, 372, 20, 3);
		SetNpcSkill(NpcIndex, 375, 20, 4);
		nLoi = 1000*xDAME;
	else					--KHONG CO HE, truong hop nay la add sai hay sao do
		nSTVL = 1000*xDAME;
	end
	
	SetNpcDmgEx(NpcIndex,nSTVL, nDoc, nBang, nHoa, nLoi ,0);--
	SetNpcDmgEx(NpcIndex,nSTVL, nDoc, nBang, nHoa, nLoi ,1);--
	SetNpcResist(NpcIndex, 94, 94, 94, 94, 94);
	SetNpcHitRecover(NpcIndex,100);
end;

--Khi chet
function Timeout(nNpcIdx)
	DelNpc(nNpcIdx);
end;
function DeathSelf(NpcIndex)
	DelNpc(NpcIndex)
end;
