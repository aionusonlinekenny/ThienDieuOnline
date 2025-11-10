--Kinnox
Include("\\script\\header\\taskid.lua");
MAX_PER_DATE = 20

function main(nItemIdx)
	exps={
		{430,100},
		{2960,90},
		{9490,80},
		{22515,70},
		{48190,50},
		{104980,30},
		{246310,20},
		{609360,15},
		{1511850,10},
		{3611636,5}
	}
	msg={
		"B¹n ®Êu víi ThiÕt La H¸n h¬n nöa ngµy, kÕt qu¶ ®· thu ®­îc mét sè kinh nghiÖm thùc tiÔn chiÕn ®Êu ",
		"B¹n ®Êu víi ThiÕt La H¸n h¬n nöa ngµy, kÕt qu¶ ®· thu ®­îc mét sè kinh nghiÖm thùc tiÔn chiÕn ®Êu ",
		"B¹n cïng víi ThiÕt La H¸n ®èi luyÖn h¬n nöa ngµy, kÕt qu¶ kh«ng thu ®­îc hiÖu qu¶ g× ",
		"§¹i hiÖp ®· thu ®­îc kinh nghiÖm cao nhÊt tõ ho¹t ®éng nµy cña ngµy h«m nay.",
	}
	local nTaskValue = GetTask(TASK_RESET3);
	local nDateTask = GetNumber(4,nTaskValue,2)
	local nDate = tonumber(GetLocalDate("%m%d"))

	if (  nDateTask ~= nDate ) then
		SetTask(TASK_RESET3, SetNumber(4,nTaskValue,2,nDate)) -- reset ngay
		SetTask(TASK_THIETLAHAN, 0);
	end
	
	local nLevel = GetLevel()
	local m_nLevel = 0;
	local nTaskValueTLH = GetTask(TASK_THIETLAHAN);
	local nNum = GetNumber(2,nTaskValueTLH,1);
	if nLevel < 1 then
		m_nLevel = 1;
	end
	
	if nLevel > 130 then
		Msg2Player(msg[3]);
		return
	end
	
	if(nNum >= MAX_PER_DATE) then 
		Msg2Player(msg[4])
		return 
	end
	
	if(nLevel >= 1 and nLevel <= 130) then
		m_nLevel = 100
	end	

	levelseg = floor((m_nLevel-1)/10)+1;
	rnd = random(100);
	if(rnd > exps[levelseg][2]) then
		nExp = floor(exps[levelseg][1]*rnd/200);
		AddOwnExp(nExp)
										-- 2 chu so		 --1 task
		SetTask(TASK_THIETLAHAN, SetNumber(2,nTaskValueTLH,1,nNum+1))		
	end
	RemoveItem(nItemIdx,1);
end

