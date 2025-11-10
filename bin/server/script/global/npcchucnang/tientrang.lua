-- Ken Nguyen
-- npc tien trang
Include("\\script\\header\\taskid.lua");


function logTienTrang(str)
	local gm_Log = "dulieu/SuKien/TienTrang.txt"
	local fs_log = openfile(gm_Log, "a");
	write(fs_log, date("%H:%M:%S_%d-%m-%y").."\t\t"..str.."\n");
	closefile(fs_log);
end



function main(NpcIndex)
Say("Hç Trî T©n Thñ, Vâ L©m CTC", 10,
      --        "N¹p ThÎ Online/napthe",
              "§æi Xu ==> KNB/xusangKNB2",
              "§æi TiÒn V¹n ==> KNB/tiensangKNB",
              "§æi KNB ==> TiÒn V¹n/KNBsangtien",
              "Nh©n tiÖn ghÐ qua th«i/no")
end;

----------------------------------------------------®æi xu sang tiÒn v¹n-----------------------------------------------------------------
function KNBsangtien()
Say("TiÒn Trang, Vâ L©m CTC", 10,
   "§æi 1 KNB ==> 200 v¹n/knbsangtien1",
   "§æi 5 KNB ==> 1000 v¹n/knbsangtien5",
   "§æi 10 KNB ==> 2000 v¹n/knbsangtien10",
"Tho¸t/no")
end

function knbsangtien1()
	 if (GetItemCount(0,4,343) < 1) then
	 Talk(1,"","b¹n kh«ng ®ñ 1 KNB ®Ó ®æi");
	return end;
	DelItem(1,0,4,343);
	Earn(2000000)
Talk(1,"","B¹n ®· quy ®æi ®­îc 200 v¹n l­îng.")
 end;

function knbsangtien5()
	 if (GetItemCount(0,4,343) < 5) then
	 Talk(1,"","b¹n kh«ng ®ñ 5 KNB ®Ó ®æi");
	return end;
	DelItem(5,0,4,343);
	Earn(10000000)
Talk(1,"","B¹n ®· quy ®æi ®­îc 1000 v¹n l­îng.")
 end;

function knbsangtien10()
	 if (GetItemCount(0,4,343) < 10) then
	 Talk(1,"","b¹n kh«ng ®ñ 10 KNB ®Ó ®æi");
	return end;
	DelItem(10,0,4,343);
	Earn(20000000)
Talk(1,"","B¹n ®· quy ®æi ®­îc 2000 v¹n l­îng.")
 end;

-------------------------------------------------------tiÒn sang xu-------------------------------------------------------------------
function tiensangKNB()
Say("TiÒn Trang, Vâ L©m CTC", 10,
   "§æi 200 v¹n ==> 1 KNB/doitiensangxu1",
   "§æi 1000 v¹n ==> 5 KNB/doitiensangxu5",
   "§æi 2000 v¹n ==> 10 KNB/doitiensangxu10",
"Tho¸t/no")
end

function doitiensangxu1()
	 if(GetCash() < 2000000) then
	 Talk(1,"","b¹n kh«ng ®ñ 200 v¹n ®Ó ®æi");
	return end;
	 Pay(2000000);
	AddItemID(AddItem(0,4,343,0,0,0,0,0)) --KNB
Talk(1,"","B¹n ®· quy ®æi ®­îc 1 KNB.")
 end;

function doitiensangxu5()
	 if(GetCash() < 10000000) then
	 Talk(1,"","b¹n kh«ng ®ñ 1000 v¹n ®Ó ®æi");
	return end;
	 Pay(10000000);
	AddItemID(AddItem(0,4,343,0,0,0,0,0)) --KNB
	AddItemID(AddItem(0,4,343,0,0,0,0,0)) --KNB
	AddItemID(AddItem(0,4,343,0,0,0,0,0)) --KNB
	AddItemID(AddItem(0,4,343,0,0,0,0,0)) --KNB
	AddItemID(AddItem(0,4,343,0,0,0,0,0)) --KNB
Talk(1,"","B¹n ®· quy ®æi ®­îc 5 KNB.")
 end;

function doitiensangxu10()
	 if(GetCash() < 20000000) then
	 Talk(1,"","b¹n kh«ng ®ñ 2000 v¹n ®Ó ®æi");
	return end;
	 Pay(20000000);
	AddItemID(AddItem(0,4,343,0,0,0,0,0)) --KNB
	AddItemID(AddItem(0,4,343,0,0,0,0,0)) --KNB
	AddItemID(AddItem(0,4,343,0,0,0,0,0)) --KNB
	AddItemID(AddItem(0,4,343,0,0,0,0,0)) --KNB
	AddItemID(AddItem(0,4,343,0,0,0,0,0)) --KNB
	AddItemID(AddItem(0,4,343,0,0,0,0,0)) --KNB
	AddItemID(AddItem(0,4,343,0,0,0,0,0)) --KNB
	AddItemID(AddItem(0,4,343,0,0,0,0,0)) --KNB
	AddItemID(AddItem(0,4,343,0,0,0,0,0)) --KNB
	AddItemID(AddItem(0,4,343,0,0,0,0,0)) --KNB
Talk(1,"","B¹n ®· quy ®æi ®­îc 10 KNB.")
 end;

-----------------------------------------------------------------------------------
function xusangKNB2()
Say("TiÒn Trang, Vâ L©m CTC", 10,
   "§æi 200 xu ==> 1 KNB/doiknb1",
   "§æi 1000 xu ==> 5 KNB/doiknb2",
   "§æi 2000 xu ==> 10 KNB/doiknb3",
"Tho¸t/no")
end


function doiknb1()
if GetExtPoint()  >= 200 then
PayExtPoint(200);
AddItemID(AddItem(0,4,343,0,0,0,0,0)) --KNB
Msg2Player("<color=green>B¹n nhËn ®­îc 1 KNB")
KickOutSelf()
else
Talk(1,"KickOutSelf()","B¹n kh«ng ®ñ 200 xu ®Ó mua");
end
end

function doiknb2()
if GetExtPoint()  >= 1000 then
PayExtPoint(1000);
AddItemID(AddItem(0,4,343,0,0,0,0,0)) --KNB
AddItemID(AddItem(0,4,343,0,0,0,0,0)) --KNB
AddItemID(AddItem(0,4,343,0,0,0,0,0)) --KNB
AddItemID(AddItem(0,4,343,0,0,0,0,0)) --KNB
AddItemID(AddItem(0,4,343,0,0,0,0,0)) --KNB
Msg2Player("<color=green>B¹n nhËn ®­îc 5 KNB")
KickOutSelf()
else
Talk(1,"KickOutSelf()","B¹n kh«ng ®ñ 1000 xu ®Ó mua");
end
end

function doiknb3()
if GetExtPoint()  >= 2000 then
PayExtPoint(2000);
AddItemID(AddItem(0,4,343,0,0,0,0,0)) --KNB
AddItemID(AddItem(0,4,343,0,0,0,0,0)) --KNB
AddItemID(AddItem(0,4,343,0,0,0,0,0)) --KNB
AddItemID(AddItem(0,4,343,0,0,0,0,0)) --KNB
AddItemID(AddItem(0,4,343,0,0,0,0,0)) --KNB
AddItemID(AddItem(0,4,343,0,0,0,0,0)) --KNB
AddItemID(AddItem(0,4,343,0,0,0,0,0)) --KNB
AddItemID(AddItem(0,4,343,0,0,0,0,0)) --KNB
AddItemID(AddItem(0,4,343,0,0,0,0,0)) --KNB
AddItemID(AddItem(0,4,343,0,0,0,0,0)) --KNB
Msg2Player("<color=green>B¹n nhËn ®­îc 10 KNB")
KickOutSelf()
else
Talk(1,"KickOutSelf()","B¹n kh«ng ®ñ 2000 xu ®Ó mua");
end
end


function no()
end;
















