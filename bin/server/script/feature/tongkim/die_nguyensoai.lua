Include("\\script\\header\\tongkim.lua");
Include("\\script\\checkIPtongkim.lua");
Include("\\script\\lib\\worldlibrary.lua");
Include("\\script\\header\\taskid.lua");
Include("\\script\\header\\event_head.lua");
--nguoi choi danh quai' cuoi cung` khi chet
function LastDamage(NpcIndex)
	if(SubWorld == SubWorldID2Idx(380)) then
		if(random(300) == 299) then
		end
		local szName = GetName();
		local nPlayerCamp = GetCurCamp();
		local nCount = GetMSPlayerCount(1);
		local i;
		for i=1, nCount do
		if(GetPMParam(1, i, 0) == 1) then --dang online thi tinh diem
			PlayerIndex = MSDIdx2PIdx(1, i);
			SetPKMode(0,0);--phuc hoi pk tu do
			SetFightState(0);--phi chien dau
			SetPunish(0);
			RestoreRankEx();
			local nTotalAccum = GetPMParam(1, i, 2);
			local nCamp = GetCurCamp();
			if(nPlayerCamp == nCamp) then --nam trong phe chien thang, thuong them tich luy
			local nAccum = TICHLUY_THUONG * GetPMParam(1, i, 15);
			nTotalAccum = nTotalAccum + nAccum;
				if (nTotalAccum > 2000) then
						AddOwnExp(10000000);
                                                                                  AddItemID(AddItem(0,2,34,0,0,5,0,0));    ---- r­¬ng ho¹t ®éng
						Msg2Player("Xin chóc mõng! Phe chiÕn th¾ng nhËn ®­îc phÇn th­ëng <color=yellow>"..nAccum.."<color> ®iÓm tÝch lòy\n vµ <color=yellow>10 triÖu<color> kinh nghiÖm !");
					end
			else	
						Talk(1,"","LÇn nµy kÕt qu¶ kh«ng nh­ mong ®îi! Th¾ng b¹i lµ chuyÖn th­êng t×nh cña binh gia, t­íng sÜ ®õng n¶n lßng! LÇn sau sÏ quyÕt 1 trËn th­ hïng")
			end
			if(nCamp == 1) then --tong
				AddValue(4,nTotalAccum);
			else	--kim
				AddValue(5,nTotalAccum);
			end
			AddAccum(nTotalAccum);
			if (nTotalAccum > 2000) then
			thuongchung()
			else
						Talk(1,"","§iÓm tÝch lòy cña c¸c h¹  kh«ng ®ñ <color=yellow>2000<color> kh«ng thÓ nhËn th­ëng !")
			end
			if(nCamp == 1) then --tong
			NewWorld(325,RANDOM(1537,1548), RANDOM(3160, 3195));
			SetRevPos(325,1)
			else	--kim
			NewWorld(325,RANDOM(1566,1588), RANDOM(3079, 3096));
			SetRevPos(325, 2)
			end
			reset_stateTK()
		end
		end
		if(nPlayerCamp == 1) then
		AddNews(format("%s giÕt chÕt Nguyªn so¸i cña phe Kim. KÕt thóc trËn chiÕn, phe Tèng giµnh th¾ng lîi!",szName));
		else
		AddNews(format("%s giÕt chÕt Nguyªn so¸i cña phe Tèng. KÕt thóc trËn chiÕn, phe Kim giµnh th¾ng lîi!",szName));
		end
		--NewWorld(325,RANDOM(1537,1548), RANDOM(3160,3195));
		for i=0,21 do
			SetMission(i,0);
		end
		CloseMission(1);	--dong mission
	end
end

--khi hoi sinh
function Revive(NpcIndex)

end
--Khi chet
function DeathSelf(NpcIndex)
	--if(GetNpcBoss(NpcIndex) == 1) then
	
	--end
end

function reset_stateTK()

CHECK_TK = {{"",""}}
danhsach = TaoBang(CHECK_TK,"CHECK_TK","")
 SaveData("script/checkIPtongkim.lua",danhsach)  

				SetRevPos(GetCurRev())
				SetReviveNow(0);
				SetCreateTeam(1);
				SetCurCamp(GetCamp());--phuc hoi phe ban dau
				SetDeathScript("") --set script khi chet
				ForbidEnmity(0)
end

function thuongchung()
		local exptk = 10000000 
		local nRes = 10
		local nCount = RANDOMC(3,4,5)
		for i=1, nCount do
				AddItemIDStack(AddItem(0,6,4839,0,0,5,0,0));
		end
		AddOwnExp(exptk*2);
		AddRespect(nRes*2)
		Msg2Player("B¹n nhËn ®­îc <color=yellow>20<color> ®iÓm Uy Danh.")	
		Msg2Player("B¹n nhËn ®­îc <color=yellow>20 triÖu<color> kinh nghiÖm.")	
		Msg2Player("§¹i hiÖp ®· nhËn ®­îc <color=yellow>"..nCount.." <color> B¶o R­¬ng Tèng Kim. ")
end
