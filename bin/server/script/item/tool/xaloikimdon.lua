function main(nItemIdx)
    local szPK = GetPK()
	if (szPK < 1) then
		Talk(1,"","§¹i HiÖp ®· kh«ng cßn trÞ sè PK, kh«ng cÇn ph¶i xãa n÷a !");
	else
	    SetPK(szPK-1)
		RemoveItem(nItemIdx,1)
	end
end