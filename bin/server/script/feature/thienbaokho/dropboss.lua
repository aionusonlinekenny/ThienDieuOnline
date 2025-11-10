--Ken Nguyen 11-2014
Include("\\script\\header\\taskid.lua");

function DropRate(NpcIndex)
	if(GetFightState() == 0) then
	return end
	local nMemCount = GetTeamSize();
	local nRuong = GetNpcValue(NpcIndex);
	if(nMemCount < 2) then
		drop1(nRuong);
	else
		droptodoi(nRuong);
	end
end;
--chi co 1 nguoi
function drop1(nRuong)
	local nTask = GetTaskTemp(NVTHIENBAOKHO);
	local nCurRuong = GetNumber(2, nTask, 1);
	if(nCurRuong < 1) then
	return end;
	SetTaskTemp(NVTHIENBAOKHO, SetNumber(2, nTask, 2, nRuong));
end;
--to doi
function droptodoi(nRuong)
	local nTeamId = GetTeam();
	if(nTeamId == nil) then
	return end
	local nIndex;
	for i = 0,7 do
		local nIndex = GetTeamMem(nTeamId, i );
		if(nIndex > 0) then
		PlayerIndex = nIndex;
		local nTask = GetTaskTemp(NVTHIENBAOKHO);
		local nCurRuong = GetNumber(2, nTask, 1);
		local w,x,y = GetWorldPos();
		if(w == 393 and nCurRuong > 0) then
		SetTaskTemp(NVTHIENBAOKHO, SetNumber(2, nTask, 2, nRuong));
		end
		end
	end
end;