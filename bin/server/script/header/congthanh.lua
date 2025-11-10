--Ken Nguyen
--04/03/2014

Yr,Mth,Dy,Hr,Mn,Se = 0,0,0,0,0,0;
--ThuVoLam = GetTempInt("DateGame","Thu")
--IDMapCong = GetTempInt("DateGame","MapCongThanh")
 
LONGTRU_FULL = 50000000			--mau' cot nguyen
LONGTRU_DAMAGE = 25000000		--mau' cot hu
CUA_FULL = 20000000				--mau' cua~ nguyen
CUA_DAMAGE = 10000000			--mau' cua~ hu

function CheckDauGia()
	Yr,Mth,Dy,Hr,Mn,Se = GetTime()
	if (Hr == 18 and Mn < 30) and (ThuVoLam == 2) then
		return "PT"
	elseif (Hr == 18 and Mn < 30) and (ThuVoLam == 4) then
		return "TD"
	elseif (Hr == 18 and Mn < 30) and (ThuVoLam == 6) then
		return "BK"
	else
		return ""
	end
end

function CheckBangCTC()
	local szBangCong,szCongMaster = GetNextTong(IDMapCong);
	return szBangCong
end

function CheckThaiThu()
	if GetRankEx() == "Th¸i thó Ph­îng T­êng"  then
	return 1
	elseif GetRankEx() == "Th¸i thó Thµnh §« "  then
	return 1
	elseif GetRankEx() == "Th¸i thó §¹i Lý "  then
	return 1
	elseif GetRankEx() == "Th¸i thó BiÖn Kinh"  then
	return 1
	elseif GetRankEx() == "Th¸i thó T­¬ng D­¬ng"  then
	return 1
	elseif GetRankEx() == "Th¸i thó D­¬ng Ch©u"  then
	return 1
	elseif GetRankEx() == "Th¸i thó L©m An"  then
	return 1
	else
	return 0
	end
end

function GetBangThang()
	local nCount = GetTempInt("DauGiaCTC","Count");
	if(nCount == 0) then
	return "",""
	end
	local szBang = "";
	local szMaster = "";
	local nCheck = 0;
	for i=1,nCount do
		local num = GetTempInt("DauGiaCTC","Value"..i);
		if(num > nCheck) then
			szBang = GetTempStr("DauGiaCTC","Name"..i);
			szMaster = GetTempStr("DauGiaCTC","Master"..i);
			nCheck = num;
		end
	end
	return szBang, szMaster
end;

LONGTRU_NPC={
{1590,3424},
{1582,3417},
{1581,3399},
{1590,3394},
{1602,3406},
{1598,3420},
{1655,3359},
{1646,3352},
{1646,3336},
{1655,3331},
{1665,3339},
{1662,3355},
{1722,3293},
{1713,3285},
{1713,3268},
{1724,3264},
{1733,3274},
{1729,3286}
};

function release_congthanh()
	local nShop,nP,nID,szBangThu,szMaster = GetMapRate(IDMapCong);
	local szBangCong,szCongMaster = GetNextTong(IDMapCong);
	local nNpcIndex;
	--cua thanh
	local nValue = GetTempInt("SaveCTC","Cua1");
	if(nValue == 0) then
	nNpcIndex = AddNpcNew(532,1,221,55318,109078,"\\script\\feature\\congthanh\\death_cua.lua",1,"LËp D­¬ng thµnh m«n",nil,"555",1,CUA_FULL);
	SetNpcValue(nNpcIndex, 1);
	AddMSNpc(1,nNpcIndex);
	else
	SetMissionV(0,1)
	end
	nValue = GetTempInt("SaveCTC","Cua2");
	if(nValue == 0) then
	nNpcIndex = AddNpcNew(532,1,221,53212,111146,"\\script\\feature\\congthanh\\death_cua.lua",1,"B×nh Giang thµnh m«n",nil,"555",1,CUA_FULL);
	SetNpcValue(nNpcIndex, 2);
	AddMSNpc(1,nNpcIndex);
	else
	SetMissionV(1,1)
	end
	nValue = GetTempInt("SaveCTC","Cua3");
	if(nValue == 0) then
	nNpcIndex = AddNpcNew(532,1,221,57474,106954,"\\script\\feature\\congthanh\\death_cua.lua",1,"§Þnh Xuyªn thµnh m«n",nil,"555",1,CUA_FULL);
	SetNpcValue(nNpcIndex, 3);
	AddMSNpc(1,nNpcIndex);
	else
	SetMissionV(2,1)
	end
	--long tru
	nValue = GetTempInt("SaveCTC","Tru1");
	if(nValue == 0) then
	nNpcIndex = AddNpcNew(530,1,221,52981,107097,"\\script\\feature\\congthanh\\death_longtru.lua",1,szBangThu.."-Long Trô ",nil,"555",1,LONGTRU_FULL);
	SetNpcValue(nNpcIndex, 1);
	else
	nNpcIndex = AddNpcNew(528,1,221,52981,107097,"\\script\\feature\\congthanh\\death_longtru.lua",2,szBangCong.."-Long Trô ",nil,"555",1,LONGTRU_FULL);
	SetNpcValue(nNpcIndex, 7);
	SetMissionV(4,1);
	end
	AddMSNpc(1,nNpcIndex);
	nValue = GetTempInt("SaveCTC","Tru2");
	if(nValue == 0) then
	nNpcIndex = AddNpcNew(530,1,221,50924,109171,"\\script\\feature\\congthanh\\death_longtru.lua",1,szBangThu.."-Long Trô ",nil,"555",1,LONGTRU_FULL);
	SetNpcValue(nNpcIndex, 2);
	else
	nNpcIndex = AddNpcNew(528,1,221,50924,109171,"\\script\\feature\\congthanh\\death_longtru.lua",2,szBangCong.."-Long Trô ",nil,"555",1,LONGTRU_FULL);
	SetNpcValue(nNpcIndex, 8);
	SetMissionV(5,1);
	end
	AddMSNpc(1,nNpcIndex);
	nValue = GetTempInt("SaveCTC","Tru3");
	if(nValue == 0) then
	nNpcIndex = AddNpcNew(530,1,221,55133,104915,"\\script\\feature\\congthanh\\death_longtru.lua",1,szBangThu.."-Long Trô ",nil,"555",1,LONGTRU_FULL);
	SetNpcValue(nNpcIndex, 3);
	else
	nNpcIndex = AddNpcNew(528,1,221,55133,104915,"\\script\\feature\\congthanh\\death_longtru.lua",2,szBangCong.."-Long Trô ",nil,"555",1,LONGTRU_FULL);
	SetNpcValue(nNpcIndex, 9);
	SetMissionV(6,1);
	end
	AddMSNpc(1,nNpcIndex);
	
	SetMissionV(3,GetTempInt("SaveCTC","LongTru"));
	--linh
	for i=1,getn(LONGTRU_NPC) do
	nNpcIndex = AddNpcNew(682,100, 221,LONGTRU_NPC[i][1] * 32, LONGTRU_NPC[i][2] * 32,nil,
		1,"Long Trô VÖ Binh",nil,"555",0,100000,nil,1000,200,200,250,nil,2000,30,nil,nil);
	AddMSNpc(1,nNpcIndex);
	end
end;
