Include("\\script\\lib\\worldlibrary.lua")
Include("\\script\\missions\\loidaictc\\head.lua")
Include("\\script\\missions\\congthanh\\head.lua")

function main(NpcIndex)
	if (SVScheck(0) == 1) then
	return end
	
	SetTask(TASK_NPCINDEX, NpcIndex)
	
	local nSubWorld = SubWorldID2Idx(964)
	if (nSubWorld >= 0) then
		SubWorld = nSubWorld
		if (IsMission() == 1) then
			local nRestTime = GetMSRestTime(1)
			if (nRestTime > 0) then
				Say("HiÖn giê l«i ®µi C«ng Thµnh ®ang b¸o danh, c¸c h¹ cã muèn b¸o danh cho bang héi cña m×nh kh«ng?",4,
				"V©ng ta ®Õn ®Ó b¸o danh/baodanhld",
				"Ta lµ tuyÓn thñ muèn vµo ®Êu tr­êng/tuyenthuld",
				"Kh«ng, ta chØ t×m hiÓu th«ng tin vÒ viÖc dù tuyÓn thi ®Êu/timhieu",
				"BiÕt råi, ta ®i tr­íc ®©y/no")
			return end
		end
	end
	
	nSubWorld = SubWorldID2Idx(221)
	if (nSubWorld >= 0) then
		SubWorld = nSubWorld
		if (IsMission() == 1) then
			Say("HiÖn giê l«i ®µi C«ng Thµnh ®ang b¸o danh, c¸c h¹ cã muèn b¸o danh cho bang héi cña m×nh kh«ng?",4,
			"Tham gia C«ng thµnh chiÕn tr­êng/thamgia",
			"Kh«ng, ta chØ t×m hiÓu th«ng tin vÒ viÖc dù tuyÓn thi ®Êu/timhieu",
			"Mua dông cô hç trî C«ng thµnh chiÕn/mua",
			"BiÕt råi, ta ®i tr­íc ®©y/no")
		return end
	end
	
	Say("§©y lµ n¬i nghÞ sù c«ng thµnh chiÕn, ng­¬i ®Õn cã viÖc g×?",3,
	"T×m hiÓu th«ng tin vÒ viÖc dù tuyÓn thi ®Êu/timhieu",
	"NhËn phÇn th­ëng C«ng thµnh ®¹i chiÕn/nhanthuong",
	"Kh«ng muèn g× c¶/no")
end

function timhieu()
	Talk(8, "",	"L«i ®µi bang héi lµ n¬i häc hái vâ nghÖ gi÷a c¸c bang héi trªn giang hå! §©y sÏ lµ n¬i thi ®Êu c«ng b»ng",	"Muèn tham gia L«i ®µi bang héi, tr­íc hÕt ph¶i gÆp ta ®Ó xin phÐp! Ng­êi xin phÐp ph¶i lµ bang chñ cña bang héi thi ®Êu!",	"Bang chñ b¸o danh cÇn <color=yellow>"..LDCTC_REG_MONEY.."<color> ng©n l­îng","Xin phÐp thµnh c«ng xong, thµnh viªn cña bang héi cã <color=yellow>10 phót<color> gia nhËp ®Êu tr­êng. Sau ®ã thi ®Êu sÏ chÝnh thøc b¾t ®Çu!" ,"Th¾ng b¹i phô thuéc vµo ®iÓm tÝch lòy thi ®Êu cña mçi bªn. Mçi thµnh viªn bang héi lµm träng th­¬ng ®èi ph­¬ng sÏ ®­îc 3 ®iÓm, ®èi ph­¬ng bÞ trõ 1 ®iÓm", 	"KÕt thóc thi ®Êu, bang héi nµo tÝch lòy ®iÓm cao h¬n sÏ giµnh th¾ng lîi!","Ngoµi ra, trong lóc thi ®Êu mét bªn nµo kh«ng cßn thµnh viªn nµo ë l¹i ®Êu tr­êng th× th¾ng lîi sÏ thuéc vÒ bªn cßn l¹i. ","Bang héi chiÕn th¾ng sÏ ®o¹t ®­îc <color=Yellow>t­ c¸ch c«ng thµnh<color>","Xin phÐp thµnh c«ng xong, thµnh viªn cña bang héi cã <color=yellow>10 phót<color> gia nhËp ®Êu tr­êng. Sau ®ã thi ®Êu sÏ chÝnh thøc b¾t ®Çu!" ,"Th¾ng b¹i phô thuéc vµo ®iÓm tÝch lòy thi ®Êu cña mçi bªn. Mçi thµnh viªn bang héi lµm träng th­¬ng ®èi ph­¬ng sÏ ®­îc 3 ®iÓm, ®èi ph­¬ng bÞ trõ 1 ®iÓm", 	"KÕt thóc thi ®Êu, bang héi nµo tÝch lòy ®iÓm cao h¬n sÏ giµnh th¾ng lîi!","Ngoµi ra, trong lóc thi ®Êu mét bªn nµo kh«ng cßn thµnh viªn nµo ë l¹i ®Êu tr­êng th× th¾ng lîi sÏ thuéc vÒ bªn cßn l¹i. ","Bang héi chiÕn th¾ng sÏ ®o¹t ®­îc <color=Yellow>t­ c¸ch c«ng thµnh<color>")
end

function baodanhld()
	local nSubWorld = SubWorldID2Idx(964)
	if (nSubWorld >= 0) then
		SubWorld = nSubWorld
		
		local name = TONG_GetName()
		local nPow = TONG_GetFigure()
		if (name == "" or nPow ~= TONG_MASTER) then
			Talk(1,"","B¹n kh«ng ph¶i Bang chñ, kh«ng thÓ ®øng ra ®¨ng ký tham gia!")
		return end
		
		local host = GetGlobalObjV(OBJECT_TONG_HOST)
		if (host ~= "" and name == host) then
			Talk(1,"","Bang héi cña b¹n hiÖn ®ang lµ chñ thµnh, kh«ng thÓ ®¨ng ký tham gia!")
		return end

		local nPos = 0
		for i=1,LDCTC_MAX_TONG do
			if (nPos == 0 and GetMissionS(i) == "") then
				nPos = i
			end
			if (GetMissionS(i) == name) then
				Talk(1,"","Bang héi cña b¹n ®· b¸o danh tham gia, nÕu lµ tuyÓn thñ h·y nhanh chãng vµo ®Êu tr­êng!")
			return end
		end
		if (nPos == 0) then
			Talk(1,"","HiÖn ®· ®ñ sè l­îng Bang Héi b¸o danh, xin trë l¹i vµo lÇn sau!")
		return end
		
		local nTongCash = TONG_GetMoney()
		if (nTongCash < LDCTC_REG_MONEY) then
			Talk(1,"","Ng©n quü bang héi kh«ng ®ñ <color=Yellow>"..LDCTC_REG_MONEY.."<color> l­îng, kh«ng thÓ tiÕn hµnh ®¨ng ký!")
		return end
		
		TONG_SetMoney(nTongCash - LDCTC_REG_MONEY)
		SetMission(nPos, name)
		Msg2Tong("Bang héi cña b¹n ®· ®¨ng ký thµnh c«ng, xin ®îi l«i ®µi khai m¹c!")
		AddNews("Bang héi "..name.." ®· b¸o danh tham gia L«i ®µi C«ng thµnh!")
		SetMission(0,GetMissionV(0)+1)
	end
end

function tuyenthuld()
	local nSubWorld = SubWorldID2Idx(964)
	if (nSubWorld >= 0) then
		SubWorld = nSubWorld
		local bInTong = 1
		local name = TONG_GetName()
		local nPow = TONG_GetFigure()
		if (name == "" or (nPow ~= TONG_MASTER and GetSourceTime() - TONG_GetAddTime() < 7*24*60*60)) then
			bInTong = 0
			Msg2Player("B¹n ch­a cã Bang héi hoÆc gia nhËp Bang héi ch­a ®ñ 7 ngµy nªn chØ cã thÓ tham gia víi t­ c¸ch viÖn thñ")
		end
		if (bInTong == 1) then
			local nPos = LDCTCGenTongOrder()
			if (nPos == 0) then
				Msg2Player("Bang héi cña b¹n ch­a ®¨ng ký tham gia l«i ®µi C«ng thµnh")
			return end
			if (GetMSPlayerCount(nPos) >= LDCTC_MAX_MEMBER) then
				Msg2Player("Bang héi cña b¹n ®· ®ñ thµnh viªn trong ®Êu tr­êng!")
			return end
			local nPlayerDataIdx = PIdx2MSDIdx(PlayerIndex)
			if (nPow ~= TONG_MEMBER or nPlayerDataIdx > 0) then
				if (nPlayerDataIdx > 0) then
					SetPMParam(nPlayerDataIdx,0,1)
				else
					AddMSPlayer(nPos,name)
				end
				LeaveTeam()
				SetLogoutRV(1)
				ForbidTeamOptions(1)
				ForbidTrade(1)
				ForbidEnmity(1)
				SetFightState(0)
				SetCurCamp(8,1)
				SetPkMode(1,1)
				SetDeathScript("\\script\\missions\\loidaictc\\playerdie.lua")
				SetPunish(1)
				nPos = MATH_Random(1,getn(LDCTC_LOGIN))
				NewWorld(964,LDCTC_LOGIN[nPos][1],LDCTC_LOGIN[nPos][2])
				Reminders("Thêi gian chuÈn bÞ",1,GetMSRestTime(1)/18*1000,0,1)
				Msg2MSAll(-1,GetName().." thµnh viªn cña <color=Yellow>"..name.."<color> tiÕn vµo §Êu tr­êng!")
			else
				if (GetTaskTemp(2) == 1) then
					Msg2Player("Yªu cÇu cña b¹n ®ang ®îi duyÖt, xin ®îi gi©y l¸t!")
				return end
				local pidx = PlayerIndex
				local pname = GetName()
				for i = 1,GetMSPlayerCount() do
					if (GetPMParam(i,0) == 1) then
						PlayerIndex = MSDIdx2PIdx(i)
						local name2 = TONG_GetName()
						local nPow2 = TONG_GetFigure()
						local bIdle = GetTaskTemp(1)
						if (name == TONG_GetName() and (nPow2 == TONG_DIRECTOR or nPow2 == TONG_MASTER) and bIdle == 0) then
							SetTaskTemp(1,pidx)
							Decision("LDCTCOnPermission", pname.." xin phÐp vµo trong §Êu tr­êng", "§ång ý", "Bá qua", 10000)
							PlayerIndex = pidx
							SetTaskTemp(2,1)
							Msg2Player("Yªu cÇu cña b¹n ®· ®­îc göi ®i, xin ®îi gi©y l¸t!")
						return end
					end
				end
				PlayerIndex = pidx
				Msg2Player("HiÖn t¹i Bang héi cña b¹n kh«ng cã ng­êi duyÖt vµo ®Êu tr­êng, xin ®îi gi©y l¸t!")
			end
		else
			local nPlayerDataIdx = PIdx2MSDIdx(PlayerIndex)
			if (nPlayerDataIdx > 0) then
				SetPMParam(nPlayerDataIdx,0,1)
				LeaveTeam()
				SetLogoutRV(1)
				ForbidTeamOptions(1)
				ForbidTrade(1)
				ForbidEnmity(1)
				SetFightState(0)
				SetCurCamp(8,1)
				SetPkMode(1,1)
				SetDeathScript("\\script\\missions\\loidaictc\\playerdie.lua")
				SetPunish(1)
				nPos = MATH_Random(1,getn(LDCTC_LOGIN))
				NewWorld(964,LDCTC_LOGIN[nPos][1],LDCTC_LOGIN[nPos][2])
				Reminders("Thêi gian chuÈn bÞ",1,GetMSRestTime(1)/18*1000,0,1)
				Msg2MSAll(-1,GetName().." thµnh viªn cña <color=Yellow>"..MSDIdx2PAgname(nPlayerDataIdx).."<color> tiÕn vµo §Êu tr­êng!")
			return end
			local Table = {}
			for i=1,LDCTC_MAX_TONG do
				if (GetMissionS(i) ~= "") then
					Table[getn(Table) + 1] = GetMissionS(i).."/trothuld("..i..")"
				end
			end
			Table[getn(Table) + 1] = "Ta sÏ trë l¹i sau/no"
			Say("Xin <sex> chän Bang héi muèn trî thñ", getn(Table), Table)
		end
	end
end

function trothuld(nPos)
	local nSubWorld = SubWorldID2Idx(964)
	if (nSubWorld >= 0) then
		SubWorld = nSubWorld
		if (GetTaskTemp(2) == 1) then
			Msg2Player("Yªu cÇu cña b¹n ®ang ®îi duyÖt, xin ®îi gi©y l¸t!")
		return end
		local pidx = PlayerIndex
		local pname = GetName()
		for i = 1,GetMSPlayerCount() do
			if (GetPMParam(i,0) == 1) then
				PlayerIndex = MSDIdx2PIdx(i)
				local name2 = TONG_GetName()
				local nPow2 = TONG_GetFigure()
				local bIdle = GetTaskTemp(1)
				if (GetMissionS(nPos) == TONG_GetName() and (nPow2 == TONG_DIRECTOR or nPow2 == TONG_MASTER) and bIdle == 0) then
					SetTaskTemp(1,pidx)
					Decision("ask_trothu", pname.." xin vµo trî thñ(PhÝ: "..LDCTC_ASSIST_MONEY.." l­îng)", "§ång ý", "Bá qua", 10000)
					PlayerIndex = pidx
					SetTaskTemp(2,1)
					Msg2Player("Yªu cÇu cña b¹n ®· ®­îc göi ®i, xin ®îi gi©y l¸t!")
				return end
			end
		end
		PlayerIndex = pidx
		Msg2Player("HiÖn t¹i Bang héi nµy kh«ng cã ng­êi duyÖt vµo ®Êu tr­êng, xin ®îi gi©y l¸t!")
	end
end

function ask_trothu()
	local pidx = PlayerIndex
	local nPos = LDCTCGenTongOrder()
	local desidx = GetTaskTemp(1)
	SetTaskTemp(1,0)
	if (TONG_GetMoney() < LDCTC_ASSIST_MONEY) then
		Msg2Player("Bang héi hiÖn kh«ng ®ñ ng©n quü ®Ó chiªu mé viÖn thñ")
		sel = 0
	end
	PlayerIndex = desidx
	SetTaskTemp(2,0)
	if (sel == 0) then
		Msg2Player("B¹n kh«ng ®­îc phÐp tiÕn vµo ®Êu tr­êng!")
	return end
	
	if (GetMSPlayerCount(nPos) >= LDCTC_MAX_MEMBER) then
		Msg2Player("Bang héi nµy ®· ®ñ thµnh viªn trong ®Êu tr­êng!")
	return end
	
	if (LDCTCGetTongAssistant(nPos) >= LDCTC_MAX_ASSISTANT) then
		Msg2Player("Bang héi nµy ®· ®ñ trî thñ trong ®Êu tr­êng!")
	return end
	
	local nSubWorld = SubWorldID2Idx(964)
	if (nSubWorld >= 0) then
		SubWorld = nSubWorld
		local nPlayerDataIdx = AddMSPlayer(desidx,nPos,GetMissionS(nPos))
		if (nPlayerDataIdx > 0) then
			SetPMParam(nPlayerDataIdx,1,1)
		end
		LeaveTeam()
		SetLogoutRV(1)
		ForbidTeamOptions(1)
		ForbidTrade(1)
		ForbidEnmity(1)
		SetFightState(0)
		SetCurCamp(8,1)
		SetPkMode(1,1)
		SetDeathScript("\\script\\missions\\loidaictc\\playerdie.lua")
		SetPunish(1)
		local nPos = MATH_Random(1,getn(LDCTC_LOGIN))
		NewWorld(964,LDCTC_LOGIN[nPos][1],LDCTC_LOGIN[nPos][2])
		Reminders("Thêi gian chuÈn bÞ",1,GetMSRestTime(1)/18*1000,0,1)
		local name = GetName()
		Msg2MSAll(-1,name.." trî thñ cña <color=Yellow>"..GetMissionS(nPos).."<color> tiÕn vµo §Êu tr­êng!")
		PlayerIndex = pidx
		TONG_SetMoney(TONG_GetMoney() -  LDCTC_ASSIST_MONEY)
		Msg2Tong(GetName().." dïng "..LDCTC_ASSIST_MONEY.." l­îng quü ®Ó mêi cao thñ "..name.." trî gióp trong lÇn L«i §µi nµy!")
	end
end

function thamgia()
	local nSubWorld = SubWorldID2Idx(221)
	if (nSubWorld >= 0) then
		SubWorld = nSubWorld
		local name = TONG_GetName()
		local nPow = TONG_GetFigure()
		local nPos
		if (name == GetGlobalObjS(OBJECT_TONG_HOST)) then
			nPos = 0
		elseif (name == GetGlobalObjS(OBJECT_TONG_DUEL)) then
			nPos = 1
		else
			nPos = 2
		end
		if (name == "" or (nPow ~= TONG_MASTER and GetSourceTime() - TONG_GetAddTime() < 7*24*60*60) or nPos == 2) then
			Msg2Player("B¹n kh«ng thuéc Bang héi tham dù lÇn nµy hoÆc gia nhËp Bang héi ch­a ®ñ 7 ngµy nªn chØ cã thÓ tham gia víi t­ c¸ch viÖn thñ")
			return
		end
		if (GetMSPlayerCount(nPos) >= CTC_MAX_MEMBER) then
			Msg2Player("Bang héi cña b¹n ®· ®ñ thµnh viªn trong chiÕn tr­êng!")
		return end
		if (nPow >= TONG_MANAGER and GetTeamSize() > 1) then
			Say("<sex> muèn ®­a viÖn thñ vµo hç trî cÇn tiªu hao ng©n quü <color=Yellow>"..CTC_ASSISTANT_MONEY.." l­îng/ng­êi<color>. ViÖn thñ khi ®· vµo chiÕn tr­êng nÕu tho¸t ra cã thÓ tïy thêi vµo l¹i",2,
			"Ta ®ång ý/trothuct",
			"§Ó ta suy nghÜ l¹i/no")
		return end
		local nPlayerDataIdx = PIdx2MSDIdx(PlayerIndex)
		if (nPlayerDataIdx > 0) then
			SetPMParam(nPlayerDataIdx,0,1)
		else
			AddMSPlayer(nPos,name)
		end
		LeaveTeam()
		SetLogoutRV(1)
		ForbidTeamOptions(1)
		ForbidTrade(1)
		ForbidEnmity(1)
		SetFightState(0)
		SetCurCamp(8,1)
		SetPkMode(1,1)
		SetDeathScript("\\script\\missions\\congthanh\\playerdie.lua")
		SetPunish(1)
		NewWorld(221,CTC_LOGIN[nPos+1][1],CTC_LOGIN[nPos+1][2])
		SetTempRevPos(221,CTC_LOGIN[nPos+1][1],CTC_LOGIN[nPos+1][2])
		Reminders("Thêi gian chuÈn bÞ",1,GetMSRestTime(1)/18*1000,0,1)
		Msg2MSAll(-1,GetName().." thµnh viªn cña <color=Yellow>"..name.."<color> tiÕn vµo chiÕn tr­êng!")
	else
		local nPlayerDataIdx = PIdx2MSDIdx(PlayerIndex)
		if (nPlayerDataIdx > 0) then
			nPos = MSDIdx2PIdx(nPlayerDataIdx)
			LeaveTeam()
			SetLogoutRV(1)
			ForbidTeamOptions(1)
			ForbidTrade(1)
			ForbidEnmity(1)
			SetFightState(0)
			SetCurCamp(8,1)
			SetPkMode(1,1)
			SetDeathScript("\\script\\missions\\congthanh\\playerdie.lua")
			SetPunish(1)
			NewWorld(221,CTC_LOGIN[nPos+1][1],CTC_LOGIN[nPos+1][2])
			SetTempRevPos(221,CTC_LOGIN[nPos+1][1],CTC_LOGIN[nPos+1][2])
			Reminders("Thêi gian chuÈn bÞ",1,GetMSRestTime(1)/18*1000,0,1)
			Msg2MSAll(-1,GetName().." thµnh viªn cña <color=Yellow>"..MSDIdx2PAgname(nPlayerDataIdx).."<color> tiÕn vµo §Êu tr­êng!")
		end
	end
end

function trothuct()
	local nSubWorld = SubWorldID2Idx(221)
	if (nSubWorld >= 0) then
		SubWorld = nSubWorld
		if (GetTeamSize() <= 1) then
		return end
		local pidx = PlayerIndex
		local name = TONG_GetName()
		local nTeamId = GetTeam()
		local teamtab = {}
		local nCount = 0
		for i=0,7 do
			local nMemId = GetTeamMem(nTeamId,i)
			if (nMemId > 0) then
				PlayerIndex = nMemId
				if (TONG_GetName() == GetGlobalObjS(OBJECT_TONG_DUEL)) then
					PlayerIndex = pidx
					Talk(1,"","Nãi cho ng­¬i biÕt! §¸m ng­êi ng­¬i dÉn ®Õn cã néi gi¸n, mau mau b¾t l¹i!")
				return end
				teamtab[getn(teamtab) + 1] = nMemId
				if (nMemId ~= PlayerIndex and TONG_GetName() ~= GetGlobalObjS(OBJECT_TONG_HOST) and PIdx2MSDIdx(PlayerIndex) <= 0) then
				nCount = nCount + 1
				end
			end
		end
		PlayerIndex = pidx
		if (TONG_GetMoney() < nCount * CTC_ASSISTANT_MONEY) then
			Msg2Player("Bang héi hiÖn kh«ng ®ñ ng©n quü ®Ó chiªu mé sè viÖn thñ nµy")
		return end
		
		for i=1,getn(teamtab) do
			PlayerIndex = teamtab[i]
			local nPlayerDataIdx = PIdx2MSDIdx(teamtab[i])
			if (nPlayerDataIdx > 0) then
				SetPMParam(nPlayerDataIdx,0,1)
			else
				AddMSPlayer(teamtab[i],nPos,name)
			end
			LeaveTeam()
			SetLogoutRV(1)
			ForbidTeamOptions(1)
			ForbidTrade(1)
			ForbidEnmity(1)
			SetFightState(0)
			SetCurCamp(8,1)
			SetPkMode(1,1)
			SetDeathScript("\\script\\missions\\congthanh\\playerdie.lua")
			SetPunish(1)
			NewWorld(221,CTC_LOGIN[nPos+1][1],CTC_LOGIN[nPos+1][2])
			SetTempRevPos(221,CTC_LOGIN[nPos+1][1],CTC_LOGIN[nPos+1][2])
			Reminders("Thêi gian chuÈn bÞ",1,GetMSRestTime(1)/18*1000,0,1)
			Msg2MSAll(-1,GetName().." thµnh viªn cña <color=Yellow>"..name.."<color> tiÕn vµo chiÕn tr­êng!")
		end
	end
end

function nhanthuong()
end

mapItem = {29,30,31,32}
function mua()
	Say("Dông cô hç trî c«ng thµnh cùc kú hiÖu dông, chØ cã thÓ dïng Kim Nguyªn B¶o ®Ó mua! Kh¸ch quan nÕu bá lì kh«ng mua th× thËt v« cïng ®¸ng tiÕc!", 5,
	"Hçn Th¹ch LiÖt[c«ng]/mua1",
	"NghiÖt Long Xung Xa[c«ng]/mua1",
	"V©n Kú Binh phï[thñ]/mua1",
	"Ngoan Cæ Binh phï[thñ]/mua1",
	"Kh«ng cÇn ®©u/no")
end

function mua1(sel)
	Say("Do qu¸ nhiÒu ng­êi mua! Kh¸ch quan chØ cã thÓ mua mét lÇn mét th«i! Cã ®ång ý kh«ng?", 2, "Muèn/okmua("..sel..")", "Ta nghÜ l¹i xem/no");
end

function okmua(sel)
	local nSel = sel+1
	if (not mapItem[nSel]) then
	return end
	if (DelItem(1,0,4,343) == 1) then
		local nIdx = InsertItemID(AddItem(0,6,mapItem[nSel],0,0,5,0,0))
		Say("Kh¸ch quan thËt biÕt xem hµng!", 0)
	else
		Say("Kh¸ch quan ®ang trªu chäc tiÓu nh©n hay thËt sù kh«ng cã Nguyªn B¶o?", 0)
	end
end

function no()
end