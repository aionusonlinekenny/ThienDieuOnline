Include("\\script\\lib\\worldlibrary.lua");
Include("\\script\\header\\taskid.lua");

function main(sel)
local nTaskValue = GetTask(TASK_PHONGKY);
local nTask = GetNumber(1,nTaskValue,1)

if (nTaskValue  ==  1) then
  SetTask(TASK_PHONGKY,GetTask(TASK_PHONGKY) + 1)
AddOwnExp(1000)
Talk(2,"","TiÕp Xóc Täa §é Thµnh C«ng","B¹n §· §¹t §­îc Tiªu Chi 2.")
elseif (nTaskValue == 0) then
Msg2Player("B¹n Ch­a TiÕp NhËn NhiÖm Vô Tin Sø !")
else
Msg2Player("B¹n Ch­a Hoµn Thµnh Tiªu Chi ! ")
end
end;
