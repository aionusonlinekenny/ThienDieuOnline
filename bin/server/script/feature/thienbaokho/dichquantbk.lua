Include("\\script\\library\\worldlibrary.lua");
Include("\\script\\header\\taskid.lua");
MAP_RETURN={
{1  ,1569,3124},
{11 ,3022,5090},
{162,1676,3124},
{37 ,1602,3009},
{78 ,1580,3369},
{80 ,1670,2997},
{176,1594,2933}
};

function main(NpcIndex)
	Say("Ng­¬i ®· s½n sµng chiÕn ®Êu víi hung tÆc ch­a?",4,
		"B¾t ®Çu nhiÖm vô /batdau",
		"Rêi khái khu vùc/roikhoi",
		"T×m hiÓu Thiªn B¶o Khè /timhieu",
		"L¸t n÷a quay l¹i!/no")
end

function batdau()
	local nMemCount = GetTeamSize();
	if(nMemCount > 1) then
		dangkynhom()
	else
		local finish = GetNumber(2, GetTaskTemp(NVTHIENBAOKHO), 1);
		if(finish > 0) then
		Talk(1,"", "Ng­¬i ®ang thùc hiÖn nhiÖm vô mµ !");
		return end
		local nRand = RANDOMC(1,2);--ruong chan~ le~
		dangkyle(nRand);
	end
end;

function dangkynhom()
	if(IsCaptain() == 0) then
	Talk(1,"","ChØ ®éi tr­ëng míi cã thÓ ®¹i diÖn liªn hÖ víi ta!");
	return end
	local tempid = PlayerIndex;
	local nTeamId = GetTeam();
	local nIndex, nlan, finish;
	for i = 0,7 do	--check so lan tham gia cua tung thanh vien trong nhom
		nIndex = GetTeamMem(nTeamId, i );
		if(nIndex > 0) then
			PlayerIndex = nIndex;
			nlan = GetNumber(2, GetTask(TASK_RESET6), 2);
			finish = GetNumber(2, GetTaskTemp(NVTHIENBAOKHO), 1);
			local szName = GetName();
			if(nlan > 2) then
			PlayerIndex = tempid;
			Talk(1,"","Thµnh viªn <color=cyan>"..szName.." <color>h«m nay ®· hÕt sè lÇn tham gia!");
			return end
			if(finish > 0) then
			PlayerIndex = tempid;
			Talk(1,"","Thµnh viªn <color=cyan>"..szName.." <color>hiÖn ®ang thùc hiÖn nhiÖm vô!");
			return end
			if(GetCash() < 5*1E4) then
			PlayerIndex = tempid;
			Talk(1,"","Thµnh viªn <color=cyan>"..szName.." <color> kh«ng mang theo ®ñ <color=yellow>5 v¹n <color> !");
			return end
		end
	end
	--nhom du dieu kien
	local nRand = RANDOMC(1,2);--ruong chan~ le~
	for i = 0,7 do
		nIndex = GetTeamMem(nTeamId, i );
		if(nIndex > 0) then
			PlayerIndex = nIndex;
			dangkyle(nRand);
		end
	end
end;

function dangkyle(nRand)
	local nTaskValue = GetTask(TASK_RESET6);
	local nLan = GetNumber(2, nTaskValue, 2);
	if(nLan > 2) then
	Talk(1,"","H«m nay ng­¬i ®· thùc hiÖn tèi ®a sè lÇn nhiÖm vô råi. Mai h·y tiÕp tôc!");
	return end
	if(GetCash() < 50000) then
		Talk(1,"","§¹i HiÖp kh«ng mang theo ®ñ <color=yellow>5 v¹n <color> !");
	return end
	SetTask(TASK_RESET6, SetNumber(2, nTaskValue, 2, nLan+1));
	SetTaskTemp(NVTHIENBAOKHO, SetNumber(2, GetTaskTemp(NVTHIENBAOKHO), 1, nRand));  --- stt ruong bat dau
	SetTaskTemp(NVTHIENBAOKHO, SetNumber(2, GetTaskTemp(NVTHIENBAOKHO), 2, 0));  ---set gia tri stt boss da tieu diet
	SetFightState(1);
	Pay(50000)
    SetDeathScript("\\script\\feature\\thienbaokho\\death.lua")
	if(nRand == 1) then
	Msg2Player("B¾t ®Çu më b¶o r­¬ng theo thø tù <color=green> 1,3,5,7,9,11")
	AddNote(14,1,"<color=red>Thiªn B¶o Khè <color>: ngµi h·y më b¶o r­¬ng theo thø tù lÎ <color=green>1,3,5,7,9,11");
	else
	Msg2Player("B¾t ®Çu më b¶o r­¬ng theo thø tù <color=green> 2,4,6,8,10,12")
	AddNote(14,1,"<color=red>Thiªn B¶o Khè <color>: ngµi h·y më b¶o r­¬ng theo thø tù ch½n <color=green>2,4,6,8,10,12");
	end
end;

function timhieu()
	Talk(1,"","Më c¸c r­¬ng lÇn l­ît theo thø tù sè quy ®Þnh")
end;

function roikhoi()
	LeaveTeam();
	local nTask = GetNumber(1, GetTask(TASK_NVST), 9);
	NewWorld(MAP_RETURN[nTask][1],MAP_RETURN[nTask][2],MAP_RETURN[nTask][3]);
	SetFightState(0);
	SetLogoutRV(0);
end;

function no()
end;
