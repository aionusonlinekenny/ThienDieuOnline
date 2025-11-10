--Author: Kinnox
--Date: 29-10-2020;
--Name: Npc support;
Include("\\script\\lib\\worldlibrary.lua");
Include( "\\script\\header\\admin\\point.lua");
Include( "\\script\\header\\admin\\item.lua");
Include( "\\script\\header\\factonhead.lua");
function main(nIndex)
support_skill12x(nIndex);
end

function support_skill12x(nIndex)
	HELLO	= "<color=red>Hç trî t©n thñ<color>: C¸c h¹ ®ang tr¶i nghiÖm phiªn b¶n chÝnh thøc cña m¸y chñ <color=yellow>Vâ L©m Thiªn §iÓu<color>!"
	EXIT 	=  "Ta chØ ghÐ ngang qua/no"
	TAB_INSERT ={};
	local nCurFac = GetFactionNo();
	if GetLevel() < 120 then
		Talk(1,"","Nhµ ng­¬i ch­a ®ñ ®¼ng cÊp lÜnh héi, h·y quay l¹i sau");
	return end;
	if(nCurFac < 0 or nCurFac > 10) then
		Msg2Player("C¸c h¹ ch­a gia nhËp m«n ph¸i!")
	return end
	nCurFac = nCurFac +1;
	if HaveMagic(SKILL120AR[nCurFac]) > 0 then
	Talk(1,"","Ng­¬i ®· lÜnh héi kü n¨ng <color=yellow>120<color> råi!");
	return end
	AddMagic(SKILL120AR[nCurFac],20);
	RemoveItem(nIndex,1);
end

