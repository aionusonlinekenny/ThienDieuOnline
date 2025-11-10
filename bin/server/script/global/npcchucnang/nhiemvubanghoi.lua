------Thi Luyen Bang hoi 2021----ok
-------------SON----------------
Include("\\script\\library\\worldlibrary.lua");
Include("\\script\\header\\taskid.lua");
Include("\\script\\feature\\songbac\\chusongbac.lua")




BOSS_BANGHOI={
	{"H¾c Ma T¨ng Gi¶",342,1212*32,2566*32},
	{"ThÇn Th­¬ng",342,1226*32,2415*32},
                     {"S¸t Nh©n §­êng B¨ng",342,1323*32,2363*32},
                     {"§« §èc TuyÕt",342,1325*32,2531*32},
                     {"Hµ Tiªn C«",342,1460*32,2476*32},
                     {"Thóy Yªn S¸t Thñ",342,1576*32,2386*32},
                     {"Háa V©n Tµ ThÇn",342,1499*32,2591*32},
                     {"Ph¸ Thiªn V­¬ng Gia",342,1536*32,2852*32},
                     {"§éc C« Cöu KiÕm",342,1432*32,2973*32},
                     {"Thiªn KiÕm Cèc Chñ",342,1224*32,3013*32},
                     {"Gi¸o Chñ Ma Gi¸o",342,1183*32,2564*32},
                     {"Ác Nh©n",342,1249*32,2777*32}
};

CLOSE_SAY = "§ãng/no";
MAX_PERDAY = 10
FTIME_MONEY = 50000
function main(NpcIndex)
	local nSubWorldId = SubWorldID2Idx(342)
	if (nSubWorldId < 0) then
		Talk(1,"","<pic=115><color=green>ch­a më maps 342<color>")
	return end
            -- local tongname, TongID =GetTongName();
          --   if( TongID == 0) then
	 --Talk(1,"","<pic=115><color=green>Ng­¬i ch­a gia nhËp Bang héi kh«ng thÓ nhËn nhiÖm vô !<color>")
              --   return end
	if (GetLevel() < 90) then
	Talk(1, "","<bclr=blue>Ng­¬i h·y luyÖn vâ nghÖ ®Õn cÊp 90 h·y quay lai t×m ta")
	return end
	local bHave = GetNumber(2, GetTask(TASK_NVBH), 1)
              local szlan = GetTask(TASK_NVBH1)
	if(bHave > 0) then
	Say("<pic=115><color=green> NhiÖm vô §¹i HiÖp ®· nhËn ch­a hoµn thµnh !",4,
	"§i Vi S¬n §¶o./lenmap",
              "Hñy bá nhiÖm vô ./huynhiemvu",
              "Trß Ch¬i/baucuatomca",
				CLOSE_SAY)
	return end
	Say("<pic=115><color=green> §¹i HiÖp ®· thùc hiÖn : <color=fire>"..szlan.."<color>/ <color=fire>"..MAX_PERDAY.."<color> nhiÖm vô ThÝ luyÖn !",4,
	"TiÕp nhËn nhiÖm vô./nhannv",
              "Trß Ch¬i/baucuatomca",
	CLOSE_SAY)
end;

function nhannv()
	if(GetCash() < FTIME_MONEY) then
	Talk(1,"","<pic=115><color=green>Ng­¬i cÇn cã <color=yellow>5 v¹n<color> v¹n ®Ó nhËn nhiÖm vô !<color>")
	return end
	local nDone = GetTask(TASK_NVBH1)
	if(nDone >= MAX_PERDAY) then
		Talk(1,"","<pic=115><color=green> H«m nay §¹i HiÖp ®· hoµn thµnh ®ñ : <color=yellow>"..nDone.."<color>/<color=yellow>"..MAX_PERDAY.."<color> lÇn råi ! <color>")
	return end
	Pay(50000);
	local nNum = RANDOM(1,getn(BOSS_BANGHOI));
	SetTask(TASK_NVBH, SetNumber(2, nValue, 1, nNum));
	local str = format("%s ®ang ë %s %d/%d.H·y cè g¾ng v­ît qua thö th¸ch lÇn nµy !", BOSS_BANGHOI[nNum][1], GetWorldName(BOSS_BANGHOI[nNum][2]), floor(BOSS_BANGHOI[nNum][3]/256), floor(BOSS_BANGHOI[nNum][4]/512));
	--Talk(1,"",str);
	str = format("§¹i HiÖp : GiÕt<color=yellow> %s <color> %s %d/%d.", BOSS_BANGHOI[nNum][1], GetWorldName(BOSS_BANGHOI[nNum][2]), floor(BOSS_BANGHOI[nNum][3]/256), floor(BOSS_BANGHOI[nNum][4]/512));
					--AddNote(str);
					AddNote(14,1,str)
                     Msg2Player(str)
                     SetFightState(1)
                     SetLogoutRV(0)
	NewWorld(BOSS_BANGHOI[nNum][2],BOSS_BANGHOI[nNum][3]/32,BOSS_BANGHOI[nNum][4]/32);
end;

function huynhiemvu()
	Say("§¹i HiÖp muèn hñy bá l­ît nµy ­ ? \nHñy bá sÏ kh«ng mÊt sè lÇn tham gia !",2,
	"ThÝ luyÖn lÇn nµy qu¸ søc Ta muèn hñy !./xacnhanhuy",
	"§Ó ta suy nghÜ l¹i./no")
end;

function xacnhanhuy()
	local nValue = GetTask(TASK_NVBH);
	SetTask(TASK_NVBH, SetNumber(2, nValue, 1, 0));
	Msg2Player("NhiÖm vô ThÝ luyÖn bang héi hiÖn t¹i ®· ®­îc hñy bá !.")
end;

function lenmap()
      NewWorld(342,1183,2426) ----vi son dao
      SetFightState(1)
end;

function no()
end;
