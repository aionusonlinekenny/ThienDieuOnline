Include("\\script\\library\\worldlibrary.lua");

if not (_PhamDat_INC) then
	_PhamDat_INC = 1
	
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

end















