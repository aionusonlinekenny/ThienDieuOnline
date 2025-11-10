Include("\\script\\header\\tongkim.lua");
Include("\\script\\header\\phonglangdo.lua");
Include("\\script\\header\\bosstieuhk.lua");

function GoiNpc()
	nW,nX,nY = GetWorldPos()
	Tab_inSert = {
	"<color=red>HÖ Thèng:<color> <color=orange>Cuéc sèng nµy biÕt bao ®iÒu tu¬i ®Ñp, Minh Qu©n xin h·y b×nh tÜnh suy xÐt\n<color=green>Täa ®é hiÖn t¹i: B¶n ®å: "..nW.." - X: "..nX.."-Y: "..nY.."",
	"Gäi NPC Tèng Kim/TKnpc",
	"Boss Hoµng Kim/THKboss",
	"Gäi NPC Phong L¨ng §é/PLDnpc",
	"Ta kh«ng cÇn ng¬i d¹y b¶o/no"
	}
Say(Tab_inSert[1],getn(Tab_inSert),
Tab_inSert[2],
Tab_inSert[3],
Tab_inSert[4],
Tab_inSert[5]
)	
end;

----------call npc tong kim ----------

function TKnpc()
	release_npctk()
end
----------call boss hoang kim ----------

function THKboss()
	releasebosstieu()
end;
----------NPC Phong Lang do ----------

function PLDnpc()
	nW,nX,nY = GetWorldPos()
	Tab_inSert = {
	"<color=red>HÖ Thèng:<color> <color=orange>Cuéc sèng nµy biÕt bao ®iÒu tu¬i ®Ñp, Minh Qu©n xin h·y b×nh tÜnh suy xÐt\n<color=green>Täa ®é hiÖn t¹i: B¶n ®å: "..nW.." - X: "..nX.."-Y: "..nY.."",
	"NPC Phong L¨ng §é/npcpld",
	"BOSS Thñy TÆc §Çu LÜnh/bosspld",
	"Ta kh«ng cÇn ng¬i d¹y b¶o/no"
	}
Say(Tab_inSert[1],getn(Tab_inSert),
Tab_inSert[2],
Tab_inSert[3],
Tab_inSert[4]
)
end;

function npcpld(nSel)
	release_npcphonglang()
end;

function bosspld()
	release_phonglangboss()
end
-----------------------------------