function main(nItemIdx)
	if (GetNpcExpRate() <= 100) then
		AddSkillState(440, 1, 1, 8*60*60*18, 1);
		RemoveItem(nItemIdx,1);
	else
	Talk(1,"","C¸c h¹ ®ang cßn thêi gian nh©n ®«i kinh nghiÖm");
	end;
end;