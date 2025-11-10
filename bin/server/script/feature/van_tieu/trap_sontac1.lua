Include("\\script\\header\\taskid.lua")
function main()
	local nTask = GetTask(TASK_VANTIEU)
	if(GetNumber(1,nTask,1) == 0) then
	return end
	if(GetNumber(1,nTask,7) > 0) then
	return end
		Msg2Player("B¹n ®· bŞ S¬n tÆc h¹ mai phôc. H·y ®¸nh b¹i h¾n míi cã thÓ ®i tiÕp!")
		SetPos(2464,3874)
end