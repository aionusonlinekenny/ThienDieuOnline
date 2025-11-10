Include("\\script\\library\\worldlibrary.lua");
Include("\\script\\mrpham\\check_inc.lua")
Include("\\script\\header\\taskid.lua");


SongJinCheck = {
	tbTempIP = {},
}

function SongJinCheck:FuncCheckIP(Dat_In_1)
	local Dat_2 = GetTask(TASK_GIOIHANTK)
	
	if DatGetIPAdressWithProtocol == 1 then
	else
		Dat_2 = GetTask(TASK_GIOIHANTK)
		local Dat_1 = GetIP()
		Dat_2 = strsub(Dat_1, 1, strfind(Dat_1, ":") - 2)
	end
	local Dat_4 = tonumber(date("%H"))
	if Dat_In_1 ==  3 then
		self.tbTempIP[Dat_4] = {
				DatSong = {},
				DatJin = {}}
		return
	end
	local Dat_3 = Dat.Str2Byte(Dat_2)
	if getn(self.tbTempIP) > 0 then
		if Dat.False(self.tbTempIP[Dat_4]) then
			self.tbTempIP = {nil}
			self.tbTempIP[Dat_4] = {
				DatSong = {},
				DatJin = {}}
		end
	else
		self.tbTempIP[Dat_4] = {
			DatSong = {},
			DatJin = {}}
	end
	local Dat_5, Dat_6 = 0, {"Tèng", "Kim"}
	--local khoa,Dat_5, Dat_6 = 0,0, {"Tèng", "Kim"}
	if Dat.True(self.tbTempIP[Dat_4].DatSong[Dat_3]) then
		Dat_5 = 1
	elseif Dat.True(self.tbTempIP[Dat_4].DatJin[Dat_3]) then
		Dat_5 = 2
	end
	--if self.tbTempIP[Dat_4].DatSong[Dat_3] ~= nil and self.tbTempIP[Dat_4].DatJin[Dat_3] ~= nil then
	--	khoa = 4
	--end
	
	--if Dat_5 ~= 0 and khoa ~= 4 then
	if Dat_5 ~= 0 and Dat_5 ~= Dat_In_1 then

		Say("HiÖn T¹i §Þa chØ IP cña b¹n: <color=green>"..Dat_2.."<color><enter>§· tham gia chiÕn tr­êng bªn <color=cyan>"..Dat_6[Dat_5].." <color><enter>Mçi IP chØ ®­îc ®i 1 bªn!",1,
			"KÕt thóc ®èi tho¹i./no")
		return 1
	end
	if Dat_5 == 0 then
		if Dat_In_1 == 1 then
			if Dat.False(self.tbTempIP[Dat_4].DatSong[Dat_3]) then
				self.tbTempIP[Dat_4].DatSong[Dat_3] = Dat_2
			end
		elseif Dat_In_1 == 2 then
			if Dat.False(self.tbTempIP[Dat_4].DatJin[Dat_3]) then
				self.tbTempIP[Dat_4].DatJin[Dat_3] = Dat_2
			end
		end
	end
end
Dat = {

	False = function(DatVal)
		if (not(DatVal) or DatVal == nil or DatVal == 0 or DatVal == "") then return 1 
		else return nil end
	end,
	
	True = function(Dat_In_1)
		if Dat.False(Dat_In_1) then return nil
		else return 1 end
	end,
	
	Str2Byte = function(string, b_Count)
		local len, DatByteRet = strlen(string), ""
		for i = 1, len do DatByteRet = DatByteRet..strbyte(string, i) end
		if (b_Count == 1) then
			return DatByteRet, Dat.Math.Count(DatByteRet)
		else
			return DatByteRet
		end
	end,
	
	Math = {
		Count = function(nListNumber)
			local a_s = tostring(nListNumber)
			local a = strlen(a_s)
			local b, b_n = 0, 0
			if Dat.False(a) then return 0 end
			for i = 1, a do
				b_n = 0
				b_n = tonumber(strsub(a_s, i, i))
				b = b + ((type(b_n) == "number") and b_n or 0)
			end
			return b
		end,
	},
	
	OnCancel = function() return end,
}

































