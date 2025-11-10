--Author: SON
--Date: 25/12/2021
--NameTool: Bao Ruong VUOT AI
Include("\\script\\lib\\worldlibrary.lua");
Include("\\script\\global\\droprate\\DropMain.lua");
Include("\\script\\global\\droprate\\SourceDrop.lua");
Include("\\script\\header\\event_head.lua");

AWARD_RUONG = {
{4827,"ThÎ Trang BÞ <color=yellow> Kh«i M·o <color>"},
{4828,"ThÎ Trang BÞ <color=yellow> Y Phôc <color>"},
{4829,"ThÎ Trang BÞ <color=yellow> Hµi <color>"},
{4830,"ThÎ Trang BÞ <color=yellow> Yªu §¸i <color>"},
{4831,"ThÎ Trang BÞ <color=yellow> Hé UyÓn <color>"},
{4832,"ThÎ Trang BÞ <color=yellow> H¹ng Liªn <color>"},
{4833,"ThÎ Trang BÞ <color=yellow> Ngäc Béi <color>"},
{4834,"ThÎ Trang BÞ <color=yellow> Giíi ChØ <color>"},
--{4835,"ThÎ Trang BÞ <color=yellow> Vò KhÝ <color>"},
}

function main(nItemIdx)
	if(SERVER_MODE == 1) then
		Talk(1,"",SERVER_NOTICE)
	return end
	if (CheckRoom(2,3) == 0) then
		Talk(1,"","Xin s¾p xÕp hµnh trang 2x3 «!")
	return end
	levatchung();
    AddOwnExp(2000000)
	RemoveItem(nItemIdx,1)
end;

function levatchung()
	local sel = random(1,50)
		if (sel>47) then 
            local nstt = random(1,getn(AWARD_RUONG))
			AddMagicScript(AWARD_RUONG[nstt][1]) 
			Msg2Player("B¹n nhËn ®­îc<color=yellow> "..AWARD_RUONG[nstt][2].."")
	        Msg2SubWorld("§¹i HiÖp<color=yellow> "..GetName().." <color> ®· nhËn ®­îc <color=cyan> "..AWARD_RUONG[nstt][2].." <color> tõ B¶o R­¬ng V­ît ¶i!")
        elseif(sel==47) then
            local tMenpai = random(1,getn(TAB_Menpai));
			local nMenPai = random(1,getn(TAB_Menpai[tMenpai]));
			local findMenPai = TAB_Menpai[tMenpai][nMenPai];
			AddMagicScript(findMenPai);    ---- bikip 9x
			Msg2Player("B¹n nhËn ®­îc<color=yellow> BÝ KÝp 9x <color>")
	        Msg2SubWorld("§¹i HiÖp <color=yellow> "..GetName().." <color> ®· nhËn ®­îc bÝ kÝp 9x tõ B¶o R­¬ng V­ît ¶i!")
        elseif(sel<49 and sel >45 ) then
			AddQuestKey(random(238,240)); -- thuy tinh;
            Msg2Player("B¹n nhËn ®­îc<color=yellow> Thñy Tinh <color>tõ B¶o R­¬ng V­ît ¶i!")
	        Msg2SubWorld("§¹i HiÖp <color=yellow> "..GetName().." <color> ®· nhËn ®­îc <color=cyan> Thñy Tinh <color> tõ B¶o R­¬ng V­ît ¶i !")
        elseif(sel<45 and sel >10 ) then
			AddMagicScript(random(121,123)); -- phuc duyen
            Msg2Player("B¹n nhËn ®­îc<color=yellow> Phóc Duyªn <color>!")
	        Msg2SubWorld("§¹i HiÖp <color=yellow> "..GetName().." <color> ®· nhËn ®­îc <color=cyan> Phóc Duyªn <color> tõ B¶o R­¬ng V­ît ¶i !")
		else
			local nRand = RANDOMC(12,71,72,2629,353,2126,4814)
			if (nRand==12) then 
				AddMagicScript(nRand); -- bac nhuoc
				Msg2Player("B¹n nhËn ®­îc<color=yellow> B¹c Nh­îc T©m Kinh <color>!")
				Msg2SubWorld("§¹i HiÖp <color=yellow> "..GetName().." <color> ®· nhËn ®­îc <color=cyan> B¹c Nh­îc T©m Kinh <color> tõ B¶o R­¬ng V­ît ¶i !")
			elseif (nRand==71) then
				AddMagicScript(nRand); -- ttl
				Msg2Player("B¹n nhËn ®­îc<color=yellow> Tiªn Th¶o Lé <color>!")
				Msg2SubWorld("§¹i HiÖp <color=yellow> "..GetName().." <color> ®· nhËn ®­îc <color=cyan> Tiªn Th¶o Lé <color> tõ B¶o R­¬ng V­ît ¶i !")
			elseif (nRand==72) then
				AddMagicScript(nRand); -- tsbl
				Msg2Player("B¹n nhËn ®­îc<color=yellow> Thiªn S¬n B¶o Lé <color>!")
				Msg2SubWorld("§¹i HiÖp <color=yellow> "..GetName().." <color> ®· nhËn ®­îc <color=cyan> Thiªn S¬n B¶o Lé <color> tõ B¶o R­¬ng V­ît ¶i !")
			elseif (nRand==2629) then
				AddMagicScript(nRand); -- xa loi
				Msg2Player("B¹n nhËn ®­îc<color=yellow> X¸ Lîi Kim §¬n <color>!")
				Msg2SubWorld("§¹i HiÖp <color=yellow> "..GetName().." <color> ®· nhËn ®­îc <color=cyan> X¸ Lîi Kim §¬n <color> tõ B¶o R­¬ng V­ît ¶i !")
			elseif (nRand==353) then
				AddQuestKey(nRand); -- tinh hong bao thach;
				Msg2Player("B¹n nhËn ®­îc<color=yellow> Tinh Hång B¶o Th¹ch <color>!")
				Msg2SubWorld("§¹i HiÖp <color=yellow> "..GetName().." <color> ®· nhËn ®­îc <color=cyan> Tinh H«ng B¶o Th¹ch <color> tõ B¶o R­¬ng V­ît ¶i !")
			elseif (nRand==2126) then
				AddMagicScript(nRand); -- long huyet hoan
				Msg2Player("B¹n nhËn ®­îc<color=yellow> Long HuyÕt Hoµn <color>!")
				Msg2SubWorld("§¹i HiÖp <color=yellow> "..GetName().." <color> ®· nhËn ®­îc <color=cyan> Long HuyÕt Hoµn <color> tõ B¶o R­¬ng V­ît ¶i !")
			elseif (nRand==4814) then
				AddMagicScript(nRand); -- long huyet hoan
				Msg2Player("B¹n nhËn ®­îc<color=yellow> Long HuyÕt Hoµn <color>!")
				Msg2SubWorld("§¹i HiÖp <color=yellow> "..GetName().." <color> ®· nhËn ®­îc <color=cyan> Long HuyÕt Hoµn <color> tõ B¶o R­¬ng V­ît ¶i !")
			end
        end
end
