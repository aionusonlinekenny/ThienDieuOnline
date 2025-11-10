Include( "\\script\\event\\30thang4\\EventLib.lua");

Exit = "Ta ph¶i rêi ®i/no";
function main(nNpcindex)
dofile("script/event/30thang4/tuongquan.lua");
npctalk(nNpcindex)
end

function npctalk(nNpcindex)
	TAB_SAY = {
	"<color=red>T­íng Qu©n<color>: Ho¹t ®éng diÔn ra ®Ó chµo mõng ngµy chiÕn th¾ng trªn c¶ n­íc. Ta chÞu tr¸ch nhiÖm ph¸t th­ëng cho c¸c ®¹i hiÖp cã c«ng lao to lín víi triÒu ®×nh",
	"Ta muèn ®æi Huy Ch­¬ng ChiÕn C«ng/ExEvent",
	"Ta muèn ®æi Huy Ch­¬ng Ph¹t Tèng/ExEvent",
	"Ta muèn ®æi Huy Ch­¬ng Thiªn §iÓu/ExEvent",
	"Ta ®Õn ®Ó t×m hiÓu ho¹t ®éng/help",
	}
	Say("LINK:<npc>",0, TAB_SAY[1],5,
		TAB_SAY[2],
		TAB_SAY[3],
		TAB_SAY[4],
		TAB_SAY[5],
		Exit)	
end

function help()
	Tab_Help={
	"<color=red>T­íng Qu©n<color>:<color=yellow>Huy Ch­¬ng ChiÕn C«ng cÇn tèi ®a 2000:<color>\n-1 Huy Ch­¬ng Vµng\n-1 Ng«i Sao ChiÕn Th¾ng\n-1 C«ng Tr¸ng LÖnh\n-1 V¹n l­îng",
	"<color=red>T­íng Qu©n<color>:<color=yellow>Huy Ch­¬ng Ph¹t Tèng cÇn tèi ®a 2000:<color>\n-1 Huy Ch­¬ng Tèng Kim\n-1 Ng«i Sao ChiÕn Th¾ng\n-1 C«ng Tr¸ng LÖnh\n-5 V¹n l­îng",
	"<color=red>T­íng Qu©n<color>:<color=yellow>Huy Ch­¬ng Thiªn §iÓu cÇn tèi ®a 2000:<color>\n-1 B¶n §å Chinh Ph¹t\n-1 Ng«i Sao ChiÕn Th¾ng\n-1 C«ng Tr¸ng LÖnh\n-3 V¹n l­îng",
	}
	Talk(3,"",Tab_Help[1],Tab_Help[2],Tab_Help[3]);
end

function ExEvent(nSel)
 local nSel = nSel +1;
	if (nSel == 1) then		
		Input("ExChienCong",9999);
	elseif (nSel == 2) then
		Input("ExPhatTong",9999);
	elseif (nSel == 3) then
		Input("ExThienDieu",9999);
 else
 MsgPlayer("Hack h¶ mµy?");
 return
 end
end
function ExChienCong()
	local nNum = tonumber(GetInput());
	local nCash = 1E4;	
	if (GetCash() < nCash*nNum) then
		Msg2Player("Ng­¬i kh«ng cã ®ñ "..nCash*nNum.." l­îng");
		return
	end
	
	if (GetItemCount(0,6,TAB_NEED[1][2]) < nNum) then
		Msg2Player("Ng­¬i kh«ng cã ®ñ "..nNum.." "..TAB_NEED[1][3].."");
		return
	end
	
	if (GetItemCount(0,6,TAB_NEED[2][2]) < nNum) then
		Msg2Player("Ng­¬i kh«ng cã ®ñ "..nNum.." "..TAB_NEED[2][3].."");
		return
	end	
	
	if (GetItemCount(0,6,TAB_NEED[3][2]) < nNum) then
		Msg2Player("Ng­¬i kh«ng cã ®ñ "..nNum.." "..TAB_NEED[3][3].."");
		return
	end
	
	if (GetItemCount(0,6,TAB_NEED[1][2]) >= nNum) and (GetItemCount(0,6,TAB_NEED[2][2]) >= nNum) and (GetItemCount(0,6,TAB_NEED[3][2]) >= nNum) then
		DelItem(nNum,0,6,TAB_NEED[1][2])
		DelItem(nNum,0,6,TAB_NEED[2][2])
		DelItem(nNum,0,6,TAB_NEED[3][2])
	end
	Pay(nCash*nNum);
	local nIndex = AddItemID(AddItem(0,6,TAB_NEED[6][2],0,0,5,0,0));
	SetStackItem(nIndex,nNum);
	Msg2Player("§¹i hiÖp nhËn ®­îc "..nNum.." "..TAB_NEED[6][3].."");
end

function ExPhatTong()
	local nNum = tonumber(GetInput());
	local nCash = 5E4;	
	if (GetCash() < nCash*nNum) then
		Msg2Player("Ng­¬i kh«ng cã ®ñ "..nCash*nNum.." l­îng");
		return
	end
	
	if (GetItemCount(0,6,TAB_NEED[4][2]) < nNum) then
		Msg2Player("Ng­¬i kh«ng cã ®ñ "..nNum.." "..TAB_NEED[4][3].."");
		return
	end
	
	if (GetItemCount(0,6,TAB_NEED[2][2]) < nNum) then
		Msg2Player("Ng­¬i kh«ng cã ®ñ "..nNum.." "..TAB_NEED[2][3].."");
		return
	end	
	
	if (GetItemCount(0,6,TAB_NEED[3][2]) < nNum) then
		Msg2Player("Ng­¬i kh«ng cã ®ñ "..nNum.." "..TAB_NEED[3][3].."");
		return
	end
	
	if (GetItemCount(0,6,TAB_NEED[4][2]) >= nNum) and (GetItemCount(0,6,TAB_NEED[2][2]) >= nNum) and (GetItemCount(0,6,TAB_NEED[3][2]) >= nNum) then
		DelItem(nNum,0,6,TAB_NEED[4][2])
		DelItem(nNum,0,6,TAB_NEED[2][2])
		DelItem(nNum,0,6,TAB_NEED[3][2])
	end
	Pay(nCash*nNum);
	local nIndex = AddItemID(AddItem(0,6,TAB_NEED[7][2],0,0,5,0,0));
	SetStackItem(nIndex,nNum);
	Msg2Player("§¹i hiÖp nhËn ®­îc "..nNum.." "..TAB_NEED[7][3].."");
end

function ExThienDieu()
	local nNum = tonumber(GetInput());
	local nCash = 1E4;	
	if (GetCash() < nCash*nNum) then
		Msg2Player("Ng­¬i kh«ng cã ®ñ "..(nCash*nNum).." l­îng");
		return
	end
	
	if (GetItemCount(0,6,TAB_NEED[5][2]) < nNum) then
		Msg2Player("Ng­¬i kh«ng cã ®ñ "..nNum.." "..TAB_NEED[5][3].."");
		return
	end
	
	if (GetItemCount(0,6,TAB_NEED[2][2]) < nNum) then
		Msg2Player("Ng­¬i kh«ng cã ®ñ "..nNum.." "..TAB_NEED[2][3].."");
		return
	end	
	
	if (GetItemCount(0,6,TAB_NEED[3][2]) < nNum) then
		Msg2Player("Ng­¬i kh«ng cã ®ñ "..nNum.." "..TAB_NEED[3][3].."");
		return
	end
	
	if (GetItemCount(0,6,TAB_NEED[5][2]) >= nNum) and (GetItemCount(0,6,TAB_NEED[2][2]) >= nNum) and (GetItemCount(0,6,TAB_NEED[3][2]) >= nNum) then
		DelItem(nNum,0,6,TAB_NEED[5][2])
		DelItem(nNum,0,6,TAB_NEED[2][2])
		DelItem(nNum,0,6,TAB_NEED[3][2])
	end
	Pay(nCash*nNum);
	local nIndex = AddItemID(AddItem(0,6,TAB_NEED[8][2],0,0,5,0,0));
	SetStackItem(nIndex,nNum);
	Msg2Player("§¹i hiÖp nhËn ®­îc "..nNum.." "..TAB_NEED[8][3].."");
end


function no()
end