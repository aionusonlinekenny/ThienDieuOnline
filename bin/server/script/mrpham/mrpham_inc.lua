--------------------------------------------------------------------------------------------------------------------------
--				Create & Modified: mrpham
--				09/03/17 - Ng¹o TuyÕt 2014 - \\script\\Dat_inc\\mrpham_inc.lua
--				Descript: Th­ viÖn dïng ®Ó thùc thi c¸c hµm tù ®Þnh nghÜa bëi mrpham
--------------------------------------------------------------------------------------------------------------------------

Dat_g_Temp = {
	DatSayEx = {},
	DatGiveItemUI = {},
	DatTalk = {},
}

if not(_mrpham_INC) then _mrpham_INC = 1
Dat = {

	False = function(Dat_In_1)
		if (not(Dat_In_1) or Dat_In_1 == nil or Dat_In_1 == 0 or Dat_In_1 == "") then return 1 
		else return nil end
	end,
	
	True = function(Dat_In_1)
		if Dat.False(Dat_In_1) then return nil
		else return 1 end
	end,
	
	Pack = function(...)
		return arg
	end,
	
	InitRandMemTb = function(Dat_1)
		local Dat_tb, Dat_2, Dat_3 = {}, 0, 0
		for i = 1, Dat_1 do tinsert(Dat_tb, i) end
		for i2 = 1, Dat_1 do
			Dat_2 = random(1, Dat_1)
			Dat_3 = Dat_tb[i2]
			Dat_tb[i2] = Dat_tb[Dat_2]
			Dat_tb[Dat_2] = Dat_3
		end
		return Dat_tb
	end,
	
	C = function(CodeColor, DatStr)
		local DatColorTb = {yel = "yellow",gre = "green",ora = "Orange",blu = "blue",red = "red",woo = "wood",fir = "fire",}
		-- 										1				2		  3		 4				5			6		 7			 8					9				10
		local DatColorTbNum = {"yellow","green","red","Orange","blue","wood","fire", "white", "", ""}
		if type(CodeColor) == "number" then return "<color="..DatColorTbNum[CodeColor]..">"..DatStr.."<color>" end
		return "<color="..DatColorTb[CodeColor]..">"..DatStr.."<color>"
	end,
	
	SayEx = function(Dat_In_1, Dat_In_2)
		Dat_g_Temp.DatSayEx[PlayerIndex] = Dat_In_2
		local Dat_1 = {} 
		for Dat_l_1 = 1, getn(Dat_In_2) do
			tinsert(Dat_1, Dat_In_2[Dat_l_1][1].."/DatSayEx_DailogBack")
		end
		return Say2(Dat_In_1, getn(Dat_In_2), 1, "", Dat_1)
	end,
	
	LoadScript = function(Dat_In_1)
		print("\t[Dat] Reload script: "..Dat_In_1)
		ReLoadFile(Dat_In_1)
	end,
	
	GiveItemUI = function(Dat_In_1, Dat_In_2, Dat_In_3)
		Dat_g_Temp.DatGiveItemUI[PlayerIndex] = {}
		Dat_g_Temp.DatGiveItemUI[PlayerIndex][1] = Dat_In_2
		Dat_g_Temp.DatGiveItemUI[PlayerIndex][2] = Dat_In_3 or nil
		return PutItem(Dat_In_1,"y/DatGiveItemUI_CallBack","n/DatOnCancel")
	end,
	
	Talk = function(Dat_In_1, Dat_In_2)
		if type(Dat_In_1) == "string" and not(Dat_In_2) then
			return Talk(1, "", Dat_In_1)
		end
		Dat_g_Temp.DatTalk[PlayerIndex] = Dat_In_1
		return Talk(1, "DatTalk_CallBack", Dat_In_2)
	end,
	
	CheckAndSet = function(Dat_In_1, Dat_In_2, Dat_In_3, Dat_In_4)
		local Dat_1, Dat_2, Dat_3, Dat_4, Dat_6, Dat_7 = Dat_In_1, nil, {}, 1, nil, {DatCheckCondition = {}}
		if not(Dat_In_1) then return end
		if getn(Dat_In_1) > 1 then
			Dat_4 = getn(Dat_In_1)
		end
		for Dat_l_1 = 1, Dat_4 do
			if Dat_In_1[Dat_l_1] then
				Dat_1 = Dat_In_1[Dat_l_1].DatParam
				Dat_2 = Dat_In_1[Dat_l_1].DatMsg or nil
				Dat_6 = Dat_In_1[Dat_l_1].DatHideOption or nil
			elseif Dat_1.DatParam then
				return Dat.Talk(Dat.C(3, "Input DatParam is Incorect"))
			end
			if not(Dat_In_1[Dat_l_1]) or not(Dat_In_1[Dat_l_1].DatParam) or Dat_In_3 then
				if Dat_1.DatCheckCondition and getn(Dat_1.DatCheckCondition) > 0 then
					for Dat_l_2 = 1, getn(Dat_1.DatCheckCondition) do
						local Dat_5
						if getn(Dat_1.DatCheckCondition[Dat_l_2][3]) > 0 then
							Dat_5 = call(Dat_1.DatCheckCondition[Dat_l_2][1], Dat_1.DatCheckCondition[Dat_l_2][3])
						else
							Dat_5 = Dat_1.DatCheckCondition[Dat_l_2][1]()
						end
							-- [2] 0: =, 1 >, -1 <, 2 ~=, 3 >= - [4]: value
						if Dat_1.DatCheckCondition[Dat_l_2][2] == 1 then
							if Dat_5 > Dat_1.DatCheckCondition[Dat_l_2][4] then 
								if Dat_In_4 then return nil end
								return Dat.Talk(Dat_1.DatCheckCondition[Dat_l_2][5]) 
							end
						elseif Dat_1.DatCheckCondition[Dat_l_2][2] == 0 then
							if Dat_5 == Dat_1.DatCheckCondition[Dat_l_2][4] then 
								if Dat_In_4 then return nil end
								return Dat.Talk(Dat_1.DatCheckCondition[Dat_l_2][5]) 
							end
						elseif Dat_1.DatCheckCondition[Dat_l_2][2] == -1 then
							if Dat_5 < Dat_1.DatCheckCondition[Dat_l_2][4] then 
								if Dat_In_4 then return nil end
								return Dat.Talk(Dat_1.DatCheckCondition[Dat_l_2][5]) 
							end
						elseif Dat_1.DatCheckCondition[Dat_l_2][2] == 2 then
							if Dat_5 ~= Dat_1.DatCheckCondition[Dat_l_2][4] then 
								if Dat_In_4 then return nil end
								return Dat.Talk(Dat_1.DatCheckCondition[Dat_l_2][5]) 
							end
						elseif Dat_1.DatCheckCondition[Dat_l_2][2] == 3 then
							if Dat_5 >= Dat_1.DatCheckCondition[Dat_l_2][4] then 
								if Dat_In_4 then return nil end
								return Dat.Talk(Dat_1.DatCheckCondition[Dat_l_2][5]) 
							end
						else
							return Dat.Talk(Dat.C(3, "DatCondition: "..(Dat_1.DatCheckCondition[Dat_l_2][2] or  "NIL").." is Unknow"))
						end
					end
					if Dat_In_4 then return 1 end
				end
			else
				if Dat_2 then
					if Dat_6 then
						Dat_7.DatCheckCondition = Dat_6
						if Dat.CheckAndSet(Dat_7, nil, 1, 1) then
							tinsert(Dat_3, {Dat_2, Dat.CheckAndSet, {Dat_1, nil, 1}})
						end
					else
						tinsert(Dat_3, {Dat_2, Dat.CheckAndSet, {Dat_1, nil, 1}})
					end
				end
			end
		end
		if getn(Dat_3) > 0 then
			tinsert(Dat_3, {"KÕt thóc ®èi tho¹i", DatOnCancel})
			if not(Dat_In_2) then 
				Dat_In_2 = "<< Xin lùa chän c¸c tïy chän liÖt kª bªn d­íi >>"
			end
			return Dat.SayEx(Dat_In_2, Dat_3)
		end
		return CheckAndSet_Step2(Dat_1)
	end,
	
}
end

function CheckAndSet_Step2(Dat_In_1)
	local Dat_1
	if Dat_In_1.DatItem and getn(Dat_In_1.DatItem) > 0 then
		for Dat_l_1 = 1, getn(Dat_In_1.DatItem) do
			for Dat_l_2 = 1, Dat_In_1.DatItem[Dat_l_1].Dat_Nums do
				Dat_1 = ItemSetAdd(Dat_In_1.DatItem[Dat_l_1].Dat_Value[1], Dat_In_1.DatItem[Dat_l_1].Dat_Value[2], Dat_In_1.DatItem[Dat_l_1].Dat_Value[3],
					Dat_In_1.DatItem[Dat_l_1].Dat_Value[4], Dat_In_1.DatItem[Dat_l_1].Dat_Value[5], Dat_In_1.DatItem[Dat_l_1].Dat_Value[6], Dat_In_1.DatItem[Dat_l_1].Dat_Value[7])
				if Dat_In_1.DatItem[Dat_l_1].Dat_Bind ~= 0 then
					LockItem(Dat_1)
				end
				if Dat_In_1.DatItem[Dat_l_1].Dat_ExpiredTime ~= 0 then
					SetItemDate(Dat_1, Dat_In_1.DatItem[Dat_l_1].Dat_ExpiredTime)
				end
				AddItemID(Dat_1)
			end
		end
	end
	if Dat_In_1.DatItemGold and getn(Dat_In_1.DatItemGold) > 0 then
		for Dat_l_3 = 1, getn(Dat_In_1.DatItemGold) do
			for Dat_l_4 = 1, Dat_In_1.DatItemGold[Dat_l_3].Dat_Nums do
				Dat_1 = ItemSetAdd(2, 0, (Dat_In_1.DatItemGold[Dat_l_3].Dat_Value[1] - 2), 0, 0, 0, random(5))
				if Dat_In_1.DatItemGold[Dat_l_3].Dat_Bind ~= 0 then
					LockItem(Dat_1)
				end
				if Dat_In_1.DatItemGold[Dat_l_3].Dat_ExpiredTime ~= 0 then
					SetItemDate(Dat_1, Dat_In_1.DatItemGold[Dat_l_3].Dat_ExpiredTime)
				end
				AddItemID(Dat_1)
			end
		end
	end
	if Dat_In_1.DatCallFunc and getn(Dat_In_1.DatCallFunc) > 0 then
		local Dat_2 = 1
		for Dat_l_5 = 1, getn(Dat_In_1.DatCallFunc) do
			if Dat_In_1.DatCallFunc[Dat_l_5][3] and Dat_In_1.DatCallFunc[Dat_l_5][3] > 0 then
				Dat_2 = Dat_In_1.DatCallFunc[Dat_l_5][3]
			end
			for Dat_l_6 = 1, Dat_2 do
				if Dat_In_1.DatCallFunc[Dat_l_5][2] and getn(Dat_In_1.DatCallFunc[Dat_l_5][2]) > 0 then
					call(Dat_In_1.DatCallFunc[Dat_l_5][1], Dat_In_1.DatCallFunc[Dat_l_5][2])
				else
					Dat_In_1.DatCallFunc[Dat_l_5][1]()
				end
			end
			Dat_2 = 1
		end
	end
end

function DatTalk_CallBack()
	local Dat_1 = Dat_g_Temp.DatTalk[PlayerIndex]
	Dat_g_Temp.DatTalk[PlayerIndex] = nil
	if Dat_1[2] then
		return call(Dat_1[1], Dat_1[2])
	end
	return Dat_1[1]()
end

function DatGiveItemUI_CallBack()
	local Dat_1, Dat_3 = Dat_g_Temp.DatGiveItemUI[PlayerIndex][1], Dat_g_Temp.DatGiveItemUI[PlayerIndex][2] or nil
	Dat_g_Temp.DatGiveItemUI[PlayerIndex] = nil
	local Dat_2 = {0, {}}
	local Dat_3Idx, Dat_3Kind, Dat_3G, Dat_3D, Dat_3P, Dat_3L, Dat_3S, Dat_3Row
	for Dat_l_1 = 0, 5 do
		for Dat_l_2 = 0, 3 do
			Dat_3Idx, Dat_3Kind, Dat_3G, Dat_3D, Dat_3P, Dat_3L, Dat_3S, Dat_3Row = GetItemParam(10,Dat_l_1,Dat_l_2)
			if Dat_3Idx > 0 then
				Dat_2[1] = Dat_2[1] + 1
				tinsert(Dat_2[2], {Dat_3Idx, Dat_3Kind, Dat_3G, Dat_3D, Dat_3P, Dat_3L, Dat_3S, Dat_3Row})
			end
		end
	end
	return Dat_1(Dat_2, Dat_3 or nil)
end

function DatSayEx_DailogBack(Dat_In_1)
	local Dat_1 = Dat_g_Temp.DatSayEx[PlayerIndex]
	local Dat_2 = 0
	if (Dat_g_Temp.DatSayEx[PlayerIndex][Dat_In_1+1][3]) then
		Dat_2 = getn(Dat_g_Temp.DatSayEx[PlayerIndex][Dat_In_1+1][3])
	end
	Dat_g_Temp.DatSayEx[PlayerIndex] = nil
	if Dat_2 == 0 then
		return Dat_1[Dat_In_1+1][2]()
	end
	return call(Dat_1[Dat_In_1+1][2], Dat_1[Dat_In_1+1][3])
end

function DatOnCancel() return end











