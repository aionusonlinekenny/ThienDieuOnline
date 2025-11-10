function OnDeath(Launcher)
PlayerIndex1 = NpcIdx2PIdx(Launcher);
	OrgPlayer = PlayerIndex;
	bigiet = GetName()
 SetDeathScript("");
	if PlayerIndex1 > 0 then
	PlayerIndex = PlayerIndex1
	giet = GetName()
	if GetTask(89) == 1 then
		SetTask(90,GetTask(90) + 1)
		Msg2Player("B¹n ®· tiªu diÖt 1 binh sÜ qu©n ®Şch, nhËn ®­îc 1 ®iÓm cèng hiÕn")
		Msg2World("C«ng thµnh chiÕn: C«ng thµnh - ["..giet.."] ®· tiªu diÖt Thñ thµnh - ["..bigiet.."] ")
	end
	PlayerIndex = OrgPlayer;
	Msg2Player("B¹n ®· bŞ ["..giet.."] lµm bŞ träng th­¬ng ")
	end
end
