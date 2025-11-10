--Scripted by Ken Nguyen
-- Su dung item chi trong map nay
tbCD_MAP = {380}	--chien truong tong kim
tbCD_MAP_TP = {380,242,197,480,481,482,483,484,485,486,487,488,489,396,
397,
399,
401,
403,
405,
407,
409,
411,
413,
415,
535,
536,
537,
538,
541,
543,
545,
547,
549,
551,
553,
555,
557,
559,
209,
337
};	--tho dia phu

function CheckMap()
	local nMapId,X,Y = GetWorldPos();
	
	for i = 1, getn(tbCD_MAP) do
		if (nMapId == tbCD_MAP[i]) then
			return 1
		end
	end
	Msg2Player("VÀt ph»m nµy chÿ c„ th” sˆ dÙng Î Chi’n tr≠Íng TËng Kim");
	return 0;
end

function CheckMapForTP()
	local nMapId,X,Y = GetWorldPos();
	
	for i = 1, getn(tbCD_MAP_TP) do
		if (nMapId == tbCD_MAP_TP[i]) then
			return 1
		end
	end
	
	return 0;
end
