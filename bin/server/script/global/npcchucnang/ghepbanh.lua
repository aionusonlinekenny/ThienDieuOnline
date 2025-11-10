Include("\\script\\header\\taskid.lua");
Include("\\script\\lib\\worldlibrary.lua");

NEED_ROOM_EMPTY = "Quý kh¸ch h·y s¾p xÕp l¹i hµnh trang."
NOT_TRADE = "§ãng/no";

function main(NpcIndex)
lambanh()
end

function lambanh()
	Say(12409,4,		   
			"ChÕ T¹o B¸nh Th­êng/epbanhchung",
		    "ChÕ T¹o B¸nh H¶o H¹n/epbanhchung",
		    "ChÕ T¹o B¸nh Th­îng H¹n/epbanhchung",
		NOT_TRADE)
end;


function epbanhchung(sel)
	local la = 	GetItemCount(151,5)
	local nep = 	GetItemCount(152,5)
	local dau =	GetItemCount(153,5)
	local thit = 	GetItemCount(154,5)
	local bqth = 	GetItemCount(155,5)
	local bqhh = 	GetItemCount(156,5)
	local bcth = 	GetItemCount(157,5)
	local bchh = 	GetItemCount(158,5)
	local bct = 	GetItemCount(159,5)
        local succ = 0;
	n = sel + 1
	if(n == 1) then
   	    if(la >= 1 and nep >=1 and  dau >= 1 and thit >=1) then
		   succ = 1;
		   Input("bct")
		   Msg2Player(EPBANH)
	    end
	    if(succ == 0) then
		   Talk(1,"","Ng­¬i kh«ng cã ®ñ 4 lo¹i nguyªn liÖu <color=green> L¸ + G¹o NÕp + ThÞt Heo + §Ëu Xanh<color> råi.")
	    end
	elseif(n == 2) then
   	    if(bct >= 1 and bqhh >=1) then
		   succ = 1;
		   Input("bchh")
		   Msg2Player(EPBANH)
	    end
	    if(succ == 0) then
		   Talk(1,"","Ng­¬i kh«ng cã <color=green>B¸nh Ch­ng Th­êng <color>hoÆc<color=green> BÝ ThuyÕt NÊu B¸nh H¶o H¹n <color>råi.")
	    end
	elseif(n == 3) then
	   	    if(bchh >= 1 and bqth >=1) then
		   succ = 1;
		   Input("bcth")
		   Msg2Player(EPBANH)
	    end
	    if(succ == 0) then
		   Talk(1,"","Ng­¬i kh«ng cã <color=green>B¸nh Ch­ng H¶o H¹n <color>hoÆc<color=green> BÝ ThuyÕt NÊu B¸nh Th­îng H¹n<color> råi.")
	    end
	end
    end
function bct(num)
	local la = 	GetItemCount(151,5)
	local nep = 	GetItemCount(152,5)
	local dau =	GetItemCount(153,5)
	local thit = 	GetItemCount(154,5)
	local bct = 	159
	if(num < 1 or num > 50) then
        Talk(1,"","Sè L­îng Tèi §a lµ <color=green>50")
        return end
	if(la >= num and nep >= num and dau >= num and thit >= num ) then
          AddItem(0,5,bct,0,0,5,num,0)
               DelItem(151,5,num)
               DelItem(152,5,num)
               DelItem(153,5,num)
               DelItem(154,5,num)
		Talk(1,"","Chóc Mõng §· NhËn §­îc<color=green> "..(num).." <color> <color=yellow>B¸nh Ch­ng Th­êng.")
        else
 		Talk(1,"","Ng­¬i ThiÕu <color=green>"..(num-la).." L¸ <color> <color=green>"..(num-nep).." G¹o NÕp <color> <color=green>"..(num-thit).." ThÞt Heo <color> <color=green>"..(num-dau).." §Ëu Xanh<color> råi.")
        end
end

function bchh(num)
	local bct  = 	GetItemCount(159,5)
	local bqhh = 	GetItemCount(156,5)
	local bchh = 	158
	if(num < 1 or num > 50) then
        Talk(1,"","Sè L­îng Tèi §a lµ <color=green>50")
        return end
	if(bct >= num and bqhh >= num) then
               AddItem(0,5,bchh,0,0,5,num,0) 
               DelItem(159,5,num)
               DelItem(156,5,num)
		Talk(1,"","Chóc Mõng §· NhËn §­îc<color=green> "..(num).." <color>B¸nh Ch­ng H¶o H¹n.")
        else
 		Talk(1,"","Ng­¬i ThiÕu <color=green>"..(num-bct).." B¸nh Ch­ng Th­êng<color> <color=green>"..(num-bqhh).." BÝ QuyÕt Lµm B¸nh H¶o H¹n <color>råi.")
        end
end


function bcth(num)
	local bchh = 	GetItemCount(158,5)
	local bqth = 	GetItemCount(155,5)
	local bcth = 	157
	if(num < 1 or num > 50) then
        Talk(1,"","Sè L­îng Tèi §a lµ <color=green>50")
        return end
	if(bchh >= num and bqth >= num ) then
               AddItem(0,5,bcth,0,0,5,num,0)
               DelItem(158,5,num)
               DelItem(155,5,num)
		Talk(1,"","Chóc Mõng §· NhËn §­îc<color=green> "..(num).." <color>B¸nh Ch­ng Th­îng H¹n.")
        else
 		Talk(1,"","Ng­¬i ThiÕu <color=green>"..(num-bchh).." B¸nh Ch­ng H¶o H¹n<color> <color=green>"..(num-bqth).." BÝ QUyÕt Lµm B¸nh Th­îng H¹n<color> råi.")
        end
end

function noinput()
	FreezeItem(GetTaskTemp(ITEMINDEX),0)
end;


function no()
end
