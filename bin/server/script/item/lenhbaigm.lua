-- Author: Hoang
-- NameTool: Lenh Bai Gm
Include( "\\script\\header\\admin\\point.lua" );
Include( "\\script\\header\\admin\\item.lua" );
Include( "\\script\\header\\admin\\test_func.lua" );
Include( "\\script\\header\\admin\\questkey_scriptmagic.lua" );
Include( "\\script\\header\\admin\\movemap.lua" );
Include( "\\script\\header\\admin\\char.lua" );
Include( "\\script\\header\\admin\\startserver.lua" );
Include("\\script\\lib\\worldlibrary.lua");
Include("\\script\\header\\taskid.lua");
Include("\\script\\header\\factionhead.lua");
function main(nItemIdx)
dofile("script/item/lenhbaigm.lua") 
gmtools()
end

function gmtools()
local nW,nX,nY = GetWorldPos()
	Tab_inSert = {
	-- "<color=red>HÖ Thèng:<color> <color=orange>Cuéc sèng nµy biÕt bao ®iÒu tu¬i ®Ñp, Minh Qu©n xin h·y b×nh tÜnh suy xĞt\n<color=green>Täa ®é hiÖn t¹i: B¶n ®å: "..nW.." - X: "..nX.."-Y: "..nY.."\nTOTAL NPC: [NPC: "..GetNpcCount().."]\nTOTAL PLAYER:[Online= "..GetPlayerCount().."]",
	"<color=red>HÖ Thèng:<color> <color=orange>Cuéc sèng nµy biÕt bao ®iÒu tu¬i ®Ñp, Minh Qu©n xin h·y b×nh tÜnh suy xĞt\n<color=green>Täa ®é hiÖn t¹i: B¶n ®å: "..nW.." - X: "..nX.."-Y: "..nY.."",
	--"NhËn ®iÓm/point",
	--"Liªn quan ®Õn PK - Mµu PK/pk_options",
	"NhËn Trang BŞ/WPlayer_Equip",
	"LÊy VËt PhÈm/LayVatPham",
	-- "NhËn vËt phÈm/fuc_qsitem",
	--"Thµnh LËp Bang/func_lapbang",
	--"Gia nhËp m«n ph¸i/menpai",
	"Di chuyÓn ®Ğn c¸c b¶n ®å/MoveMaps",
	--"Manager players/Manager",
	--"Manager Server/ManagerServer",
	-- "Test Huy Hoµng/quaHuyHoang",
	-- "Thö hµm/test_func",
	-- "Kh¶m n¹m xanh/khamnamxanh",
	-- "Test ThuÕ Bang chiªm lÜnh/thuebang",
	-- "B¶ng ®å chiÕn ®Êu/setFig",
	"Ta kh«ng cÇn ng­¬i d¹y b¶o/no"
	}
	Say(Tab_inSert[1],getn(Tab_inSert),
		Tab_inSert[2],
		Tab_inSert[3],
		Tab_inSert[4],
		Tab_inSert[5],
		Tab_inSert[6],
		Tab_inSert[7],
		Tab_inSert[8],
		Tab_inSert[9],
		Tab_inSert[10],
		Tab_inSert[11]
		-- Tab_inSert[12],
		-- Tab_inSert[13],
		-- Tab_inSert[14],
		-- Tab_inSert[15]
		)	
end

function ManagerServer()
Say("<color=red> Ng­êi ch¾c ch¾n muèn khëi ®éng m¸y chñ chø <color>",2,
	"OpenServer/startserver",
	"Ta kh«ng cÇn ng­¬i d¹y b¶o/no"
	)	
end




function quaHuyHoang()
addqhh();
		-- nNewNpcIdx = AddNpcNew(1111,1,53,1664*32,3255*32,"\\script\\event\\demhuyhoang\\quahuyhoang.lua",6)
		-- SetNpcParam(nNewNpcIdx,1,3);
		-- SetNpcTimeout(nNewNpcIdx, 10*18);
end

function setFig()
SetFightState(1)
end

function thuebang()
--LoadTong(char* szMapTongName,int nMapTongId,int nMapTongT,int nMapTongVG,char* szMapTongNameBC,int nMapTongBCId,int nCheckMap);
	--LoadTong(szMapTongName,nMapTongId,nMapTongT,nMapTongVG,szMapTongNameBC,nMapTongBCId,nCheckMap); thue bang hoi
	--SubWorld[0].LoadTong("szMapTongName",53,25,15,"NguDocDao",22,1);
	-- int nIdMap = (int) Lua_ValueToNumber(L,1);
	-- int nMapTongId = (int) Lua_ValueToNumber(L,3);
	-- int nMapTongT  =  (int) Lua_ValueToNumber(L,4);
	-- int nMapTongVG  =  (int) Lua_ValueToNumber(L,5);
	-- int nMapTongBCId = (int) Lua_ValueToNumber(L,7);
	-- int nCheckMap = (int) Lua_ValueToNumber(L,8);
	LoadTongMap(53,"Thİch",102,25,15,"NguDocDao",22,1)
	
	--SetTongMap
	--,nIdMap,szMapTongName,nMapTongId,szMapTongNameBC,nMapTongBCId,nMapTongT,nMapTongVG));
	-- int nIdMap = (int) Lua_ValueToNumber(L,1);
	-- int nMapTongId = (int) Lua_ValueToNumber(L,3);
	-- int nMapTongT  =  (int) Lua_ValueToNumber(L,4);
	-- int nMapTongVG  =  (int) Lua_ValueToNumber(L,5);
	-- int nMapTongBCId = (int) Lua_ValueToNumber(L,7);
	-- int nCheckMap = (int) Lua_ValueToNumber(L,8);
	--SetTongMap(1,"dhsshh", 53, "NguDocDao",20, 20, 15)
	
	-- Lua_PushNumber(L, SubWorld[nIdxMap].m_bCheckTong);
	-- Lua_PushString(L, SubWorld[nIdxMap].m_szTongName);
	-- Lua_PushNumber(L, SubWorld[nIdxMap].m_dwTongName);
	-- Lua_PushString(L, SubWorld[nIdxMap].m_szTongNameBC);
	-- Lua_PushNumber(L, SubWorld[nIdxMap].m_dwTongNameBC);
	-- Lua_PushNumber(L, SubWorld[nIdxMap].m_nTongT);
	-- Lua_PushNumber(L, SubWorld[nIdxMap].m_nTongVG);
end

function khamnamxanh()
	TrembleItem();
	--OpenEquipEx() -- Box ruong mo rong hanh trang
end

function func_lapbang()
	local nTaskValue = GetTask(TASK_TANTHU);
	if(GetNumber(1,nTaskValue,5) > 0) then
		Talk(1, "", 15278)
	return end
	if(GetCamp()==4 and GetTongFlag()==0) then
	if(GetCash()<20000000) then
	Earn(20000000-GetCash());
	end;
	AddRepute(300-GetRepute());
	AddFuYuan(500-GetFuYuan());
	SetLeadLevel(30);
	AddItemID(AddItem(0,4,195,0,0,5,0,0));
	NewWorld(2,2350,3499);
	SetFightState(1);
	SetTask(TASK_TANTHU, SetNumber(1,nTaskValue,5,1));
	else
	Talk(1,"","B¹n ch­a xuÊt s­ hoÆc ®· gia nhËp bang héi");
	end
end;
function menpai()
	local nW,nX,nY = GetWorldPos()
	Tab_inSert = {
	"<color=red>HÖ Thèng:<color> <color=orange>Cuéc sèng nµy biÕt bao ®iÒu tu¬i ®Ñp, Minh Qu©n xin h·y b×nh tÜnh suy xĞt\n<color=green>Täa ®é hiÖn t¹i: B¶n ®å: "..nW.." - X: "..nX.."-Y: "..nY.."",
	"Gia NhËp ThiÕu L©m/choose_menpai",
	"Gia NhËp Thiªn V­¬ng/choose_menpai",
	"Gia NhËp §­êng M«n/choose_menpai",
	"Gia NhËp Ngò §éc/choose_menpai",
	"Gia NhËp Nga My/choose_menpai",
	"Gia NhËp Thóy Yªn/choose_menpai",
	"Gia NhËp C¸i Bang/choose_menpai",
	"Gia NhËp Thiªn NhÉn/choose_menpai",
	"Gia NhËp Vâ §ang/choose_menpai",
	"Gia NhËp C«n L«n/choose_menpai",
	"Ta kh«ng cÇn ng­¬i d¹y b¶o/no"
	}
	Say(Tab_inSert[1],getn(Tab_inSert),
		Tab_inSert[2],
		Tab_inSert[3],
		Tab_inSert[4],
		Tab_inSert[5],
		Tab_inSert[6],
		Tab_inSert[7],
		Tab_inSert[8],
		Tab_inSert[9],
		Tab_inSert[10],
		Tab_inSert[11],
		Tab_inSert[12]
		)	
	Msg2Player(""..GetExtPoint().."");
end

function choose_menpai(nSel)
	if (GetLevel() < 10) then
		Talk(1,"","C¨n b¶n cña ng­¬i cßn kĞm l¾m! H·y ®i luyÖn tËp thªm, bao giê ®Õn cÊp 10 l¹i ®Õn t×m ta!")
		return
	end
	gianhapmonphai(nSel)
end
function pk_options()
	Say("<color=red>Hç trî t©n thñ:<color> Mêi ®¹i hiÖp chän!",5,
		"T¨ng PK/UD_PK",
		"Gi¶m PK/UD_PK",
		"Xãa PK/UD_PK",
		"§æi mµu PK/doimau",
		"Ta chØ ghĞ ngang qua/no"
		)
	
end

function UD_PK(nSel)
local nSel = nSel + 1;
	if nSel == 1 then
		SetPK(GetPK()+1);
		Msg2Player("PK cña ®¹i hiÖp t¨ng 1.ChØ sè hiÖn t¹i lµ: <color=green>"..GetPK().."");
	elseif nSel == 2 then
		SetPK(GetPK()-1);
		Msg2Player("PK cña ®¹i hiÖp gi¶m 1.ChØ sè hiÖn t¹i lµ: <color=green>"..GetPK().."");
	elseif nSel == 3 then
		SetPK(0);
		Msg2Player("PK cña ®¹i hiÖp ®· ®­îc xãa.ChØ sè hiÖn t¹i lµ: <color=green>"..GetPK().."");
	else
		doimau();
	end
end

function doimau()
	Say("<color=red>Hç trî t©n thñ:<color> Mêi ®¹i hiÖp chän phe ph¸i!",5,
		"Tr¾ng/camp_color",
		"Chİnh Ph¸i/camp_color",
		"Tµ Ph¸i/camp_color",
		"Trung LËp/camp_color",
		"Ta chØ ghĞ ngang qua/no"
		)
end

function camp_color(nSel)
	SetCurCamp(nSel);
	Msg2Player("<color=green>§æi phe ph¸i thµnh c«ng.");
end
function no()
end
--------------========================L¸y VËt PhÈm-------------------------------------
function LayVatPham()
Say("Xin chµo ®¹i hiÖp "..GetName().."..! nMªi §¹i HiÖp chän chøc n¨ng Admin d­İi ®©y..!",14,
"LÊy Ngùa VIP/nhapidnguaequip",
"LÊy Gold Item/nhapidgolditem",
"LÊy VËt PhÈm/layvatpham",
"LÊy Event Item/nhapidevent",
"LÊy ID Quest Key Item/nhapidquest",
"LÊy MÆt N¹/nhapidmatna",
"Tho¸t/no")
end;

function nhapidnguaequip()
Say("Xin chµo ®¹i hiÖp "..GetName().."..! nMªi §¹i HiÖp chän chiÕn m· !",14,
"LÊy Ngùa H·n HuyÕt Long C©u/nguahamhuyet",
"LÊy Ngùa Siªu Quang/nguasieuquan",
"LÊy Ngùa S­ tö/nguasutu",
"LÊy Ngùa D­¬ng Sa/nguaDS",
"Tho¸t/no")
end
function nguahamhuyet()
AddItemID(AddItem(2,0,3878,0,0,1,0));
Msg2Player("B¹n nhËn H·n HuyÕt Long C©u")
end
function nguasieuquan()
AddItemID(AddItem(2,0,4365,0,0,1,0));
Msg2Player("B¹n nhËn Ngùa Siªu Quang")
end
function nguasutu()
AddItemID(AddItem(2,0,4479,0,0,1,0));
Msg2Player("B¹n nhËn S­ Tö")
end
function nguaDS()
AddItemID(AddItem(2,0,5092,0,0,1,0));
Msg2Player("B¹n nhËn D­¬ng Sa")
end

function layvatpham()
Input("idvatpham");
end;

function idvatpham(num)
AddItemID(AddItem(0,6,num,0,0,1,0));
Msg2Player("B¹n nhËn VËt PhÈm")
end

function nhapidgolditem()
Input("idgolditem");
end;

function idgolditem(num)
AddItemID(AddItem(2,0,num,0,0,5,0))
Msg2Player("B¹n nhËn ®­îc trang bi hoang kim")
end
function nhapidevent()
Input("idevent");
end;

function idevent(num)
AddItemID(AddItem(0,2,num,0,0,5,0,0));
Msg2Player("B¹n nhËn ®­îc trang bi event")
end;
function nhapidquest()
Input("idquest");
end;

function idquest(num)
	AddItemID(AddItem(0,4,num,0,0,5,0,0));
Msg2Player("B¹n nhËn ®­îc trang bi questkey")
end;

function nhapidmatna()
Input"idmatna"
end
function idmatna(num)
AddItemID(AddItem(0,0,11,num,0,5,0,0))
end
function layidngua()
Input("idngua");
end;

function idngua(num)
AddItemID(AddItem(0,0,10,num,10,0,0,0))
Msg2Player("B¹n nhËn ®­îc ngùa")
end
