--------========================================================================================----------
--------========================================================================================----------
--------=======================================ANHVIETDONGNAI=====================================-----------
--------========================================================================================----------
--------========================================================================================----------

Include("\\script\\LockIPnguoichoi.lua");
Include("\\script\\themIPLOCK.lua");
Include("\\script\\checkIPtongkim.lua");
Include("\\script\\feature\\tongkim\\tkmoquan.lua")
Include("\\script\\lib\\worldlibrary.lua");
Include("\\script\\header\\taskid.lua");
Include("\\script\\header\\admin\\NameAdmin.lua");
Include("\\script\\global\\npcchucnang\\lequan.lua");
Include("\\script\\header\\forbidmap.lua");
Include("\\script\\system\\uythac.lua");



NOPK_ARRAY = { 1, 11, 162, 37, 78, 80, 176, 20, 121, 53, 54, 174, 101, 99, 100, 153, 175, 197, 396, 960325 };
--diem phuc sinh mon phai
---------------------------------
function main()
	dofile("script/player/playerlogin.lua")
	local num = split(GetIP(), ":")[1]
	for i = 1, getn(LOCK_IP) do
		if (LOCK_IP[i][1] == num) then
			Talk(1, "OfflineLive", "IP cña b¹n ®· bÞ khãa, liªn hÖ admin tËp 3");
			return
		end
	end
	BatDauVaoGame()
end

-----------------------------------------------------------------------
function BatDauVaoGame()
	--if GetItemCount(0, 6, 4813) < 1 then --- cam nang tan thu
	--	AddItemID(AddItem(0, 6, 4813, 0, 0, 5, 0, 0));
	--end;
	--if GetItemCount(0, 2, 0) < 1 then
	--AddItemID(AddItem(0, 2, 0, 0, 0, 5, 0, 0)); --- Tui mau;
	--end;
	----------------------------------------------------------------------------

	local Yr, Mth, Dy, Hr, Mn, Se, nDw = GetTime();
	--if(mod(GetCurServerSec(),86400)==0) then --reset 1 ngay moi
	if (Dy ~= GetNumber(2, GetTask(TASK_THOIGIAN6), 1)) then
		SetTask(TASK_THOIGIAN6, SetNumber(2, GetTask(TASK_THOIGIAN6), 1, Dy));
		--reset task can thiet tai day
		SetTask(T_NAPTHESAI, 0); --Reset nap the sai;
		SetTask(TASK_RESET, 0);
		SetTask(TASK_RESET2, 0);
		SetTask(TASK_RESET3, 0);
		SetTask(TASK_RESET4, 0);
		SetTask(TASK_RESET5, 0)
		SetTask(TASK_RESET6, 0)
		SetTask(TASK_DATCUOC4, 0);
		SetTask(TASK_DATCUOC5, 0);
		SetTask(TASK_DATCUOC6, 0);
		SetTask(TASK_NVBH, 0);
		SetTask(TASK_NVBH1, 0);
		local nCurSvDw = GetNumber(1, GetTask(TASK_RESETWEEK), 9);
		if (nCurSvDw ~= nDw and nDw == 1) then --thu2
			SetTask(TASK_RESETWEEK, 0);
			SetTask(TASK_RESETWEEK, SetNumber(1, GetTask(TASK_RESETWEEK), 9, nDw));
		end;
	end
	local w, x, y = GetWorldPos();
	for i = 1, getn(NOPK_ARRAY) do
		if (w == NOPK_ARRAY[i]) then
			-----------------------------------------------------------------
			Msg2SubWorld("<color=white>§¹i HiÖp <color><color=yellow>" ..
			GetName() .. "<color><color=white> §· Online G©y Sèng Giã Cho Vâ L©m<pic=58><color>");
			LoginLog()
			checkmap123()
			giaiketTK(name, num)
			adminLock(name, num)
			nhanexputoff() -------ñy th¸c ---system--uythac.lua
			return
		end
	end
end;

--------==========================
function checkmap123()
	if (GetFightState() == 0) then
		SetFightState(0)
	elseif (GetFightState() == 1) then
		SetFightState(1)
	else
	end
end

----------------======================

function giaiketTK(name, num)
	local name = GetAccount()
	local num = split(GetIP(), ":")[1]
	for i = 1, getn(CHECK_TK) do
		if (CHECK_TK[i][1] == name) and (CHECK_TK[i][2] == num) then
			name = ""
			num = ""
			CHECK_TK[i] = { name, num }
			danhsach = TaoBang(CHECK_TK, "CHECK_TK", "")
			SaveData("script/checkIPtongkim.lua", danhsach)
			ReLoadScript("\\script\\checkIPtongkim.lua");
			ReLoadScript("\\script\\feature\\tongkim\\tkmoquan.lua")
			return
		end
	end
end;

-------===========================
function adminLock(name, num)
	local name = GetAccount()
	local num = split(GetIP(), ":")[1]
	for i = 1, getn(ADMIN_LOCK) do
		if (ADMIN_LOCK[i][1] == name) then
			LOCK_IP[getn(LOCK_IP) + 1] = { num }
			danhsach = TaoBang(LOCK_IP, "LOCK_IP", "")
			SaveData("script/LockIPnguoichoi.lua", danhsach)
			Talk(1, "OfflineLive", "IP cña b¹n ®· bÞ khãa @@.. tËp 2");
			return
		end
	end
end;

----------=========----------------------------=======-----------
function LoginLog()
	local szAccount = GetAccount()
	local szName = GetName()
	local dwID = GetUUID()
	local nLevel = GetLevel()
	local nFaction = GetFaction()
	local nIP = split(GetIP(), ":")[1]
	local nPoint = GetExtPoint()
	local nMoney = GetCash()
	local log = "" ..
	date("%H:%M:%S") ..
	"\t Tµi kho¶n: " ..
	szAccount ..
	"\t Nh©n vËt: " ..
	szName ..
	"\t UUID: " ..
	dwID ..
	"\t CÊp: \t" ..
	nLevel .. "\t M«n ph¸i: " .. nFaction .. "\t IP: " .. nIP .. "\t Xu: " ..
	nPoint .. "\t Tæng tiÒn v¹n: \t" .. nMoney .. "\n"
	logWrite(log)
end

function logWrite(str)
	local gm_Log = "dulieu/player_log/" .. date("%d_%m_%Y") .. ".txt"
	local fs_log = openfile(gm_Log, "a");
	write(fs_log, str);
	closefile(fs_log);
end
