Include("\\script\\lib\\worldlibrary.lua");
Include("\\script\\header\\taskid.lua");

function main(sel)
local nTaskValue = GetTask(TASK_PHONGKY);
local nTask = GetNumber(1,nTaskValue,1)

if (nTaskValue  ==  9) then
SetTask(TASK_PHONGKY, 0)
SetTask(TAK_TINSU,GetTask(TAK_TINSU) + 1)
AddOwnExp(100000)
AddItemID(AddItem(0,2,34,0,0,5,0,0));    ---- r­¬ng ho¹t ®éng
NewWorld(53, 1592, 3221);
Talk(2,"","TiÕp Xóc Täa §é Thµnh C«ng","B¹n §· §¹t §­îc Tiªu Chi 10")
Msg2Player("b¹n nhËn ®­îc 100.000 ®iÓm kinh nghiÖm")
Msg2Player("b¹n nhËn ®­îc 1 R­¬ng Ho¹t §éng")
elseif (nTaskValue == 0) then
Msg2Player("B¹n Ch­a TiÕp NhËn NhiÖm Vô Tin Sø !")
else
Msg2Player("B¹n Ch­a Hoµn Thµnh Tiªu Chi ! ")
end
end;








