Include("\\Script\\lib\\worldlibrary.lua");
Include("\\script\\header\\taskid.lua");



NEED_ROOM_EMPTY = "Hµnh trang ph¶i cã ®ñ 2x4 « trèng."
function main()
	Say(14808,3,
        "Phôc håi trang bÞ tæn h¹i/ExRepair",
		"KÕtt thóc ®èi tho¹i!/no")
end

function tonhai()
GiveItemUI("Phôc håi trang bÞ tæn h¹i","H·y ®Æt trang bÞ tæn h¹i cña ng­¬i vµo ®©y. Mçi lÇn chØ ®­îc 1 c¸i th«i. Chi phÝ cÇn cã 5 tiÒn ®ång.","checkdoi")
end;

function no()
end



function ExRepair(nSel)
 local nSel = nSel + 1;
 if nSel == 1 then
	GiveItemUI("Söa trang bÞ háng nÆng", "VÞ ®¹i hiÖp nµy giao cho ta söa\n Mçi lÇn 1 trang bÞ\nTiÒn c«ng: 20xu hoÆc 50v¹n","RepairItem","no")
else
	GiveItemUI("Söa trang bÞ háng nÆng", "VÞ ®¹i hiÖp nµy giao cho ta söa\n Mçi lÇn 1 trang bÞ\nTiÒn c«ng: 20xu hoÆc 50v¹n","RepairItem2","no")
end
end


function RepairItem()
local nRealIndex = 0;
local nMoney = 500000;
local nMoneyExt = 20;
local nTempIndex,Tgenre,Tdetail,Tparti,Tlevel,Tseries
local genre,detail,parti,level,series
local FronOP1 ={};
local FronOP2 ={};
local value1_3,
	 value2_3,
	 value3_3,
	 value4_3,
	 value5_3,
	 value6_3,
	 value7_3,
	 value8_3;	 	 
local i,j;

if (GetCash() < nMoney) then
 Talk(1,"","C¸c h¹ kh«ng cã ®ñ 50 v¹n l­îng")
return end

if(nRealIndex == 0) then
Talk(1,"",14812)	--ko co trang bi ton hai
return end

	for i=0,5 do
		for j=0,3 do
			nTempIndex,Tgenre,Tdetail,Tparti,Tlevel,Tseries = FindItemEx(14,i,j);
			if (nTempIndex > 0) then
				nIndex,genre,detail,parti,level,series = nTempIndex,Tgenre,Tdetail,Tparti,Tlevel,Tseries;
				FronOP1[1] , FronOP2[1], value1_3,
				FronOP1[2] , FronOP2[2], value2_3,
				FronOP1[3] , FronOP2[3], value3_3,
				FronOP1[4] , FronOP2[4], value4_3,
				FronOP1[5] , FronOP2[5], value5_3,
				FronOP1[6] , FronOP2[6], value6_3,
				FronOP1[7] , FronOP2[7], value7_3,
				FronOP1[8] , FronOP2[8], value8_3
				= GetMagicAttrib(nIndex);
				RemoveItem(nIndex, 1);
                                                        nIndex = AddItem(0,0,detail,parti,level,series,0);
				SetMagicAttrib(nIndex,
				FronOP1[1] , FronOP2[1], 0,
				FronOP1[2] , FronOP2[2], 0,
				FronOP1[3] , FronOP2[3], 0,
				FronOP1[4] , FronOP2[4], 0,
				FronOP1[5] , FronOP2[5], 0,
				FronOP1[6] , FronOP2[6], 0,
				FronOP1[7] , FronOP2[7], 0,
				FronOP1[8] , FronOP2[8], 0
				);
			               AddItemID(nIndex);
                                                        Pay(nMoney);
                                              Msg2Player("<color=yellow>Söa trang bÞ thµnh c«ng");
				 Msg2Player(""..genre.." -- "..detail.." -- "..parti.." -- "..level.." -- "..series.."");
				 Msg2Player(" "..FronOP1[1].." - "..FronOP2[1].."");
				 Msg2Player(" "..FronOP1[2].." - "..FronOP2[2].."");
				 Msg2Player(" "..FronOP1[3].." - "..FronOP2[3].."");
				 Msg2Player(" "..FronOP1[4].." - "..FronOP2[4].."");
				 Msg2Player(" "..FronOP1[5].." - "..FronOP2[5].."");
				 Msg2Player(" "..FronOP1[6].." - "..FronOP2[6].."");
			end
                                  break
		end
	end
end;



function RepairItem2()
local nRealIndex = 0;
local nMoneyExt = 10;
local nTempIndex,Tgenre,Tdetail,Tparti,Tlevel,Tseries
local genre,detail,parti,level,series
local FronOP1 ={};
local FronOP2 ={};
local value1_3,
	 value2_3,
	 value3_3,
	 value4_3,
	 value5_3,
	 value6_3,
	 value7_3,
	 value8_3;	 	 
local i,j;

if (GetExtPoint() < nMoneyExt) then
 Talk(1,"","C¸c h¹ kh«ng cã ®ñ 20 xu")
return end

if(nRealIndex == 0) then
Talk(1,"",14812)	--ko co trang bi ton hai
return end

	for i=0,5 do
		for j=0,3 do
			nTempIndex,Tgenre,Tdetail,Tparti,Tlevel,Tseries = FindItemEx(14,i,j);
			if (nTempIndex > 0) then
				nIndex,genre,detail,parti,level,series = nTempIndex,Tgenre,Tdetail,Tparti,Tlevel,Tseries;
				FronOP1[1] , FronOP2[1], value1_3,
				FronOP1[2] , FronOP2[2], value2_3,
				FronOP1[3] , FronOP2[3], value3_3,
				FronOP1[4] , FronOP2[4], value4_3,
				FronOP1[5] , FronOP2[5], value5_3,
				FronOP1[6] , FronOP2[6], value6_3,
				FronOP1[7] , FronOP2[7], value7_3,
				FronOP1[8] , FronOP2[8], value8_3
				= GetMagicAttrib(nIndex);
				RemoveItem(nIndex, 1);
				nIndex = AddItem(0,0,detail,parti,level,series,0);	
				SetMagicAttrib(nIndex,
				FronOP1[1] , FronOP2[1], 0,
				FronOP1[2] , FronOP2[2], 0,
				FronOP1[3] , FronOP2[3], 0,
				FronOP1[4] , FronOP2[4], 0,
				FronOP1[5] , FronOP2[5], 0,
				FronOP1[6] , FronOP2[6], 0,
				FronOP1[7] , FronOP2[7], 0,
				FronOP1[8] , FronOP2[8], 0
				);
				AddItemID(nIndex);
                                                        PayExtPoint(nMoneyExt);
				Msg2Player("<color=yellow>Söa trang bÞ thµnh c«ng");

				 Msg2Player(""..genre.." -- "..detail.." -- "..parti.." -- "..level.." -- "..series.."");
				 Msg2Player(" "..FronOP1[1].." - "..FronOP2[1].."");
				 Msg2Player(" "..FronOP1[2].." - "..FronOP2[2].."");
				 Msg2Player(" "..FronOP1[3].." - "..FronOP2[3].."");
				 Msg2Player(" "..FronOP1[4].." - "..FronOP2[4].."");
				 Msg2Player(" "..FronOP1[5].." - "..FronOP2[5].."");
				 Msg2Player(" "..FronOP1[6].." - "..FronOP2[6].."");
			end
                                break
		end
	end
end
