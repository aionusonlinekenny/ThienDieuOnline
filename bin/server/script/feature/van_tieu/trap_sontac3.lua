Include("\\script\\header\\taskid.lua")
function main()
	local nTask = GetTask(TASK_VANTIEU)
	if(GetNumber(1,nTask,1) == 0) then
	return end
	if(GetNumber(1,nTask,9) > 0) then
	return end
		Msg2Player("B¹n ®· bŞ S¬n tÆc th­îng mai phôc. H·y ®¸nh b¹i h¾n míi cã thÓ ®i tiÕp!")
		SetPos(1984,3762)
end