--Author: son fix dai thanh 9x
--Date: 16-01-2022
--Content : Fix bug all skill cant use this item
Include("\\script\\lib\\worldlibrary.lua");
Include( "\\script\\header\\admin\\point.lua");
Include( "\\script\\header\\admin\\item.lua");
Include( "\\script\\header\\factonhead.lua");

-- add table bug skill 
SKILL_BUG = {
{"Lo¹n Hoµn KÝch",351},
{"Phæ §é Chóng Sinh",332},
{"NhiÕp Hån Lo¹n T©m",391},
{"§o¹n C©n Hñ Cèt",390},
{"Tóy Tiªn T¸ Cèt",394},
{"TÝch LÞch Lo¹n Hoµn KÝch",1110}
}

function main(nIndex)
support_skill9x(nIndex);
end

function support_skill9x(nIndex)
	local nLevel = GetLevel();
	if nLevel < 80 then
		Talk(1,"","Nhµ ng­¬i ch­a ®ñ ®¼ng cÊp lÜnh héi, h·y quay l¹i sau");
	return end;

	HELLO	= "<color=red>Hç trî t©n thñ<color>: C¸c h¹ ®ang tr¶i nghiÖm phiªn b¶n chÝnh thøc cña m¸y chñ <color=yellow>Vâ L©m TuyÖt KiÕm<color>!"
	EXIT 	=  "Ta chØ ghÐ ngang qua/no"
	TAB_INSERT ={};
	local nCurFac = GetFactionNo();
	
	if(nCurFac < 0 or nCurFac > 10) then
		Talk(1,"","C¸c h¹ ch­a gia nhËp m«n ph¸i!");
	return end
	
	nCurFac = nCurFac +1;
	for i = 1,getn(SKILL90_ARRAY) do
		if (i == nCurFac) then
			GETN_TAB = getn(SKILL90_ARRAY[nCurFac]);
			for z = 1, GETN_TAB do
				TAB_INSERT[z] = SKILL90_ARRAY[nCurFac][z][1].."/ChooseSkill("..""..nCurFac..""..","..""..z.."";
			end	
				Say(HELLO,getn(TAB_INSERT),
					TAB_INSERT,
					EXIT
					);
		end
	end
	RemoveItem(nIndex,1);
end
-----  son fix bug dai thanh bi kip
function ChooseSkill(nCurFac,z)
		local nSkillID = SKILL90_ARRAY[nCurFac][z][2]
		for i=1, getn(SKILL_BUG) do
				if nSkillID==SKILL_BUG[i][2] then
					AddMagicScript(2433) 	---return item for player
					Talk(1,"","Kü n¨ng <color=yellow>"..SKILL_BUG[i][1].."<color> kh«ng thÓ sö dông §¹i Thµnh !");
				return end
		end
	if GetMagicLevel(SKILL90_ARRAY[nCurFac][z][2]) >= 20 then
		Talk(1,"","Ng­¬i ®· lÜnh héi kü n¨ng <color=yellow>"..SKILL90_ARRAY[nCurFac][z][1].."<color> råi!");
		AddMagicScript(2433) 	---return item for player
	return end
		AddMagic(SKILL90_ARRAY[nCurFac][z][2],20);
		Talk(1,"","Chóc mõng c¸c h¹ ®· lÜnh héi ®­îc kü n¨ng <color=yellow>"..SKILL90_ARRAY[nCurFac][z][1].."<color>");
end
