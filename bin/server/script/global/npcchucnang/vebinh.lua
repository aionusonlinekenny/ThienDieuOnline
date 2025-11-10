Include("\\script\\header\\taskid.lua");


-- Ken Nguyen
-- npc Ve binh thanh mon
TAB_CHECKPOS={
{53280,1},
{53440,1},
{49376,2},
{49184,2},
{48256,3},
{48416,3},
{53440,4},
{53600,4},

{102912,1},
{103104,1},
{96512,2},
{96320,2},
{95264,3},
{95456,3},
{104992,4},
{105216,4},

{55200,1},
{55360,1},
{50752,2},
{50560,2},
{51424,3},
{51552,3},
{60288,4},
{60448,4},

{51808,1},
{52000,1},
{46944,2},
{46720,2},
{45568,3},
{45792,3},
{54656,4},
{54880,4},

{55968,1},
{55744,1},
{52864,2},
{52672,2},
{50208,3},
{50464,3},
{59872,4},
{60096,4}
};

TAB_HUONG={
"§«ng",
"T©y",
"Nam",
"B¾c"
};

function main(NpcIndex)
	local nTask = GetTaskTemp(EVENT_TET);
	local nBuoc = GetNumber(nTask,5);
	if(nBuoc > 4) then
	Talk(1,"","B¹n trÎ móa l©n c¶ ngµy còng mÖt råi ®Êy, mau vÒ nhËn th­ëng ®i!")
	return end
	
	if(nBuoc > 0) then
		local nNpcIdx,w,x,y = FindNpc(GetNpcID(NpcIndex));
		local nNpcIdx = GetTaskTemp(EVENT_TETNPCDW);
		local nNpcIdx = FindNearNpc(nNpcIdx);
		if(nNpcIdx < 1) then
		Say(10833,2,
		"T¸n gÉu/tangau",
		"Rêi khái/no")
		return end
		local nPos = 0;
		for i=1,getn(TAB_CHECKPOS) do
			if(TAB_CHECKPOS[i][1] == x) then
			nPos = TAB_CHECKPOS[i][2];
			break end
		end
		if(GetNumber(nTask,nBuoc) == nPos) then
			nBuoc = nBuoc+1;
			SetTaskTemp(EVENT_TET, SetNumber(nTask,5,nBuoc));
			if(nBuoc < 5) then
			nBuoc = GetNumber(nTask,nBuoc);
			Talk(1,"","N¨m míi vui vÎ! Ng­¬i cÇn ®i tiÕp sang h­íng<color=red> "..TAB_HUONG[nBuoc])
			AddOwnExp(1000000)
			else
			Talk(1,"","Ng­¬i móa l©n thËt nhiÖt t×nh! §· ®i kh¾p thµnh råi, mau quay vÒ nhËn th­ëng ®i!")
			AddOwnExp(1000000)
			end
		else
			nBuoc = GetNumber(nTask,nBuoc);
			Talk(1,"","B©y giê ng­¬i cÇn di chuyÓn l©n qua h­íng<color=red> "..TAB_HUONG[nBuoc])
		end
	else
	Say(10833,2,
		"T¸n gÉu/tangau",
		"Rêi khái/no")
	end
end;

function tangau()
	Talk(1,"","Ng­¬i t×m ta cã viÖc g×?")
end;

function no()
end;
