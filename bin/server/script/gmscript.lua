--------========================================================================================----------
--------========================================================================================----------
--------=======================================ANHVIETDONGNAI=====================================-----------
--------========================================================================================----------
--------========================================================================================----------
Include("\\script\\checkIPtongkim.lua");
Include("\\script\\LockIPnguoichoi.lua");
Include("\\script\\themIPLOCK.lua");
Include("\\script\\feature\\tongkim\\tkmoquan.lua")
Include("\\script\\lib\\worldlibrary.lua");
Include( "\\script\\header\\admin\\char.lua");
Include( "\\script\\header\\admin\\item.lua");
Include( "\\script\\header\\admin\\point.lua");
Include( "\\script\\header\\admin\\movemap.lua");
Include( "\\script\\header\\admin\\callnpc.lua");
Include("\\script\\header\\taskid.lua");
Include("\\script\\header\\vuotai.lua");
Include("\\script\\header\\openclose.lua");
Include("\\script\\header\\bosstieuhk.lua");
Include("\\script\\header\\vuotai.lua");
Include("\\script\\header\\tongkim.lua");
Include("\\script\\event\\demhuyhoang\\event.lua");
Include("\\script\\event\\hoadang\\lib.lua");
Include("\\script\\feature\\congthanh\\npccongthanh.lua")
Include("\\script\\datascript\\congthanh\\danhsachKCL.lua")
Include("\\script\\datascript\\congthanh\\DauGiaKCL.lua")
Include("\\script\\datascript\\congthanh\\danhsachcongthanh.lua")
Include("\\script\\datascript\\banghoi\\danhsachthanhthi.lua")
Include("\\script\\feature\\van_tieu\\lib.lua")
Include("\\script\\header\\bosstieuhk.lua");
Include( "\\script\\item\\checkmapid.lua");



function main(nIndex)
nW,nX,nY = GetWorldPos()
	TAB_INSERT_TEST = {
		"<color=green>Täa ®é hiÖn t¹i: B¶n ®å: "..nW.." - X: "..nX.."-Y: "..nY.."",
							"Qu¶n Lý Server/quanlysever",
                            "NhËp Tµi kho¶n ChÆn <Khãa IP >/khoataikhoan",
                            "Xãa tµi kho¶n BÞ chÆn/xoachantaikhoan",
							"Start Missions/openmiss",
							"DÞch chuyÓn/movetomap",
                            "Gäi Boss HK/releasebosstieu",
                          --  "Gäi Bos hç trî Pk/goibosspk2",
                       
							"Ta chØ ghÐ ngang qua/no"
	}; 
			Say(TAB_INSERT_TEST[1],getn(TAB_INSERT_TEST),
				TAB_INSERT_TEST[2],
				TAB_INSERT_TEST[3],
				TAB_INSERT_TEST[4],
				TAB_INSERT_TEST[5],
				TAB_INSERT_TEST[6],
				TAB_INSERT_TEST[7],
				TAB_INSERT_TEST[8]
				);
end;

function goibosspk1(nItemIdx) 
if(GetFightState() == 0) then
       Msg2Player("N¬i phi chiÕn ®Êu kh«ng thÓ gäi boss")
          return end;

	local nLfTime = GetParamItem(nItemIdx) - GetCurServerSec();
	if(nLfTime > 0) then
		Msg2Player(format("<color=green>Sau<color> <color=yellow>%d gi©y <color> <color=green>míi gäi Pet Hç trî<color>",nLfTime));
	return end;
                         goibosspk2() 
	  SetParamItem(nItemIdx,GetCurServerSec() + 60);
end;

function goibosspk2(nNpcIndex)
	nW,nX,nY = GetWorldPos()
              local nABC =  GetCurCamp()
              local nName = GetName()
	nNpcIndex = AddNpcNew(1351,100,nW,nX*32,nY*32,"\\script\\global\\bosspet.lua",0,nil,nil,5,0,20000)
              SetNpcOwner(nNpcIndex,GetName(),1) ---®Æt chñ së h÷u theo sau
	SetNpcBoss(nNpcIndex,0); ---0 ch÷ tr¾ng
	SetNpcName(nNpcIndex,"Pet - "..GetName().." ");
              SetNpcCurCamp(nABC)  -----set phe phai' cho boss
              SetNpcTimeout(nNpcIndex,180) ---- thêi gian NPC mÊt 
SetTimer(10*18,6)
end

function goibosspk3(nNpcIndex) 
	nW,nX,nY = GetWorldPos()
              local nABC =  GetCurCamp()
              local nName = GetName()
	nNpcIndex = AddNpcNew(1351,100,nW,nX*32,nY*32,"\\script\\global\\bosspet.lua",0,nil,nil,5,0,20000)
              SetNpcOwner(nNpcIndex,GetName(),0) ---®Æt chñ së h÷u theo sau
	SetNpcBoss(nNpcIndex,2); ---0 ch÷ tr¾ng
	SetNpcName(nNpcIndex,"Pet - "..GetName().." ");
              SetNpcCurCamp(nABC)  -----set phe phai' cho boss
              SetNpcTimeout(nNpcIndex,500) ---- thêi gian NPC mÊt 
	SetNpcReplenish(NpcIndex,50);--phuc hoi sinh luc
	SetNpcSpeed(NpcIndex, 80);--toc do di chuyen tang len
end;
--------=========================================================================-----------------------------
function khoataikhoan()
        Input("khoataikhoan2");
end

function khoataikhoan2(name)
      for i=1,getn(ADMIN_LOCK) do
                      if (name == ADMIN_LOCK[i][1]) then
                             Msg2Player("<color=cyan>IP nµy <color=yellow> "..name.." <color> ®· cã råi<color>")
                      return end
   end
      ADMIN_LOCK[getn(ADMIN_LOCK)+1] = {name}
          danhsach = TaoBang(ADMIN_LOCK,"ADMIN_LOCK","")
               SaveData("script/themIPLOCK.lua",danhsach)
                     Msg2Player("<color=cyan>®· thªm tµi kho¶n<color=yellow> "..name.."  <color>vµo danh s¸ch chÆn .... Ok <color>")
	local w,x,y = GetWorldPos();
	    gmidx=PlayerIndex
	        for i=1,1500 do 
	            PlayerIndex=i
                 if GetAccount() == name then
                      Talk(1,"KickOutSelf","Tµi Kho¶n cña b¹n ®· bÞ khãa @@, tËp 1");               
         return end
      end
end
--------------------------
function xoachantaikhoan()
Input("xoachantaikhoan2");
end

function xoachantaikhoan2(name)
for i=1,getn(ADMIN_LOCK) do
if ADMIN_LOCK[i][1] == name then
name = ""
ADMIN_LOCK[i] = {name}
danhsach = TaoBang(ADMIN_LOCK,"ADMIN_LOCK","")
SaveData("script/themIPLOCK.lua",danhsach)
ReLoadScript("\\script\\themIPLOCK.lua");
Msg2Player("<color=green>§· xo¸ <color=yellow> "..name.."  <color> khái danh s¸ch.... Ok");
LOCK_IP = {{""}}
danhsach = TaoBang(LOCK_IP,"LOCK_IP","")
 SaveData("script/LockIPnguoichoi.lua",danhsach)  
return end
end
Msg2Player("<color=green>kh«ng cã trong danh s¸ch ??");
end
-------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------
function selectname()
Input("selectname2");
end

function selectname2(name,num)
	local w,x,y = GetWorldPos();
	local ObjName = "Kh«ng Cã Online"
	gmidx=PlayerIndex
	for i=1,1500 do 
	PlayerIndex=i
		if GetAccount() == name then
		ObjID=PlayerIndex
		ObjName=GetName()
		TK = GetAccount()
		IP = GetIP()
		Level = GetLevel()
		w,x,y = GetWorldPos();
	PlayerIndex=gmidx
	SetTaskTemp(DESPLAYERID,ObjID)
	local nIdx = GetTaskTemp(DESPLAYERID);
	PlayerIndex = nIdx;	--bat dau thao tac voi muc tieu
	   OfflineLive();
	   return end
Msg2Player("kh«ng cã nh©n vËt online!")
              end
end;

-------------------------------------------------------------------------------------------------------------------------------------------

function loangMoitatca()
ReloadAllScript()
Msg2Player("<color=green>®· loang tÊt c¶.... Ok")
end


function batquaitk()
	release_npctk()
end

--------------------thu nghiem-----------
function openmiss()
	TAB_INSERT_TEST = {
		"<color=red>GM Manager Sever Tool<color>: Mêi GM <color=green>"..GetName().."<color> lµm viÖc!",
		"V­ît ¶i Miss Start/vuotaimiss",
		"PL§ Miss Start/phonglangdomiss",
		"H¹t Huy Hoµng Start/huyhoangmiss",
		"Hoa §¨ng Start/hoadangmiss",
		"Tèng Kim Start/tongkimmiss",
		"Liªn ®Êu Start/liendaumiss",
		"Ta chØ ghÐ ngang qua/no"
	}; 
			Say(TAB_INSERT_TEST[1],getn(TAB_INSERT_TEST),
				TAB_INSERT_TEST[2],
				TAB_INSERT_TEST[3],
				TAB_INSERT_TEST[4],
				TAB_INSERT_TEST[5],
				TAB_INSERT_TEST[6],
				TAB_INSERT_TEST[7],
				TAB_INSERT_TEST[8]
				);
end;




----------reser_task------------------------
function vuotaimiss()
         AddCountNews(10221,3)
		local nSubWorldId;
		for i=1,getn(MAP_VUOTAI) do
			nSubWorldId = SubWorldID2Idx(MAP_VUOTAI[i])
			if (nSubWorldId >= 0) then
			SubWorld = nSubWorldId;
			OpenMission(1)
			StartMissionTimer(1,1, 2*1080)--so phut de chinh thuc bat dau -- 2 phuts
			end
		end
end

function phonglangdomiss()
          AddCountNews(10137,3)
		local nSubWorldId;
			nSubWorldId = SubWorldID2Idx(337)
			if (nSubWorldId >= 0) then
			SubWorld = nSubWorldId;
			OpenMission(1)
			StartMissionTimer(1,1, 2*1080)--so phut de chinh thuc bat dau - 2 phut
			end
end

function huyhoangmiss()
  addhhh()
end

function hoadangmiss()
	for i=1,getn(HOADANG_NPC) do
		local world = SubWorldID2Idx(HOADANG_NPC[i][1])
		if (world >= 0) then
			--ClearMapNpcWithName(HOADANG_NPC[i][1], HOADANG_NAME);
			local DANHSACH_POS = NPCPOS_HOADANG[HOADANG_NPC[i][1]];
			if(DANHSACH_POS ~= nil) then
				for j=1,getn(DANHSACH_POS) do
					local nNpcIndex = AddNpcNew(1077,1,HOADANG_NPC[i][1],DANHSACH_POS[j][1],DANHSACH_POS[j][2],HOADANG_NPC[i][2],6,HOADANG_NAME);
					if(nNpcIndex >= 0) then
						SetNpcTimeout(nNpcIndex, 14*60*18);
					end;
				end
			end
		end
	end
	Msg2SubWorld("Ho¹t ®éng Hoa §¨ng ®ang diÔn ra c¸c nh©n sÜ cã thÓ ®Õn Xa phu c¸c thµnh thÞ ®Ó vµo b¶n ®å Hoa ®¨ng");
end

function tongkimmiss()
release_npctk()
        	local nSubWorldId = SubWorldID2Idx(380)
	if (nSubWorldId >= 0) then
			SubWorld = nSubWorldId;
			OpenMission(1,2,2,0,1,3)
			SetMission(0,2)
			AddCountNews("TrËn ®¸nh Tèng Kim h×nh thøc "..GetMissionName(1).." ®ang hÕt søc c¨ng th¼ng, tr­íc m¾t ®ang ë giai ®o¹n b¸o danh, nh÷ng ai muèn tham chiÕn xin h·y nhanh chãng ®Õn T­¬ng D­¬ng hoÆc Chu Tiªn trÊn ®¨ng ký b¸o danh; HoÆc sö dông Tèng Kim chiªu th­ ®Ó nhanh chãng ®Õn ®iÓm b¸o danh. §iÒu kiÖn tham gia: ®¼ng cÊp tõ 40. phÝ b¸o danh 3000 l­îng",3);
			AddCountNews2(10222,3)
			StartMissionTimer(1,1, 2*1080)--so phut de chinh thuc bat dau
			if(GetMissionV(0) == 1) then
				StartMissionTimer(1,2, 20*1080)--thoi gian nguyen soai ra
			end;
			StartMissionTimer(1,3, 30*1080)--tong thoi gian ca tran
			--StartMissionTimer(1,5, 10*1080)--So phut thong bao diem tich luy 2 phe
	end
	--thoi gian bao danh con lai
	SubWorld = nSubWorldId;
	local RestTK = GetMSRestTime(1,1);
	local Minute;
	if (RestTK > 0) then
		Minute = floor(RestTK/1080);
		if(Minute == 7 or Minute == 3) then
		AddCountNews(format("Tèng Kim ®¹i chiÕn ph­¬ng thøc %s ®ang trong thêi gian b¸o danh, mäi ng­êi h·y mau ®Õn T­¬ng D­¬ng hoÆc Chu Tiªn trÊn ®Ó b¸o danh, hoÆc cã thÓ dïng Tèng Kim chiªu th­ ®Ó trùc tiÕp ®Õn ®iÓm b¸o danh. §iÒu kiÖn tham gia: ®¼ng cÊp tõ 40, phÝ b¸o danh 3000 l­îng. Sau khi khai chiÕn, nÕu tæng sè ng­êi ch­a ®ñ vÉn cã thÓ tiÕp tôc b¸o danh!",GetMissionName(1)));
		AddCountNews2(format("Thêi gian b¸o danh Tèng Kim cßn l¹i lµ %d phót.",Minute),3)
		end
	end
end





function liendaumiss()
			Msg2SubWorld("§· ReOpen b¸o danh Liªn §Êu")
			local nSubWorldId = SubWorldID2Idx(396)
			if (nSubWorldId >= 0) then
			SubWorld = nSubWorldId;
			OpenMission(1)
			StartMissionTimer(1,1, 30*18)--so phut de chinh thuc bat dau
			end
end


--------------------------dich chuyen
function movetomap()
	MoveMaps()
end
--------------------------thu nghiem
function quanlysever()
Manager()
end

function thaotacGM()
TAB_INSERT_TEST = {
		"<color=red>GM Manager Sever Tool<color>: Mêi GM <color=green>"..GetName().."<color> lµm viÖc!",
		"Get Point/getpoint",
		"Get Item/getitem",
		"Get MagicScript Item/getmagicitem",
		"Fight Options/fight_op",
		"Camp Options/camp_op",
		"Ta chØ ghÐ ngang qua/no"
	};
			Say(TAB_INSERT_TEST[1],getn(TAB_INSERT_TEST),
				TAB_INSERT_TEST[2],
				TAB_INSERT_TEST[3],
				TAB_INSERT_TEST[4],
				TAB_INSERT_TEST[5],
				TAB_INSERT_TEST[6],
				TAB_INSERT_TEST[7]
				);
end

function getpoint()
point()
end
function getitem()
WPlayer_Equip()
end
--------------------lay magic item-----------
function getmagicitem()
	Input("tbIDmagic",9999)
end
function tbIDmagic()
	local szID = tonumber(GetInput());
	AddItemID(AddItem(0,6,szID,0,0,5,0,0));
	Msg2Player("NhËn ®­îc 50 vËt phÈm ID magic :"..szID.." !")
end
----------------------Fight Options
function fight_op()
	TAB_INSERT_TEST = {
		"<color=red>GM Manager Sever Tool<color>: Mêi GM <color=green>"..GetName().."<color> lµm viÖc!",
		"Off Fight/fight_off",
		"On Fight/fight_on",
		"Ta chØ ghÐ ngang qua/no"
	};
			Say(TAB_INSERT_TEST[1],getn(TAB_INSERT_TEST),
				TAB_INSERT_TEST[2],
				TAB_INSERT_TEST[3]
				);
end

function fight_off()
	SetFightState(0);
	Msg2Player("<color=green>B¹n ®· trong tr¹ng th¸i phi chiÕn ®©Ý !");
end

function fight_on()
	SetFightState(1);
	Msg2Player("<color=green>B¹n trong tr¹ng th¸i chiÕn ®Êu !");
end

----------------------------Camp Options
function camp_op()
	Say("<color=red>Hç trî t©n thñ:<color> Mêi ®¹i hiÖp chän phe ph¸i \n<color=yellow>§æi mµu tèn 5v¹n l­îng!",5,
		"Tr¾ng/camp_color",
		"ChÝnh Ph¸i/camp_color",
		"Tµ Ph¸i/camp_color",
		"Trung LËp/camp_color",
		"Ta chØ ghÐ ngang qua/no"
		)
end

function camp_color(nSel)
	SetCurCamp(nSel);
	Msg2Player("<color=green>§æi phe ph¸i thµnh c«ng.");
end


function no()
end;
function noinput()
end;
