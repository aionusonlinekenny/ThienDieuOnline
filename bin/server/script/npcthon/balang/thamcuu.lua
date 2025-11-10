Include("\\script\\lib\\worldlibrary.lua");
Include("\\script\\header\\taskid.lua");

function main()
if(GetExpandBox() == 0) then
Say(11256,3,
"Mua B«ng Tai/muabong",
"Mua r­¬ng më réng 1/muaruong1",
"tho¸t/no")
 return end
if(GetExpandBox() == 1) then
Say(11256,3,
"Mua B«ng Tai/muabong",
"Mua r­¬ng më réng 2/muaruong2",
"tho¸t/no")
 return end
if(GetExpandBox() == 2) then
Say(11256,3,
"Mua B«ng Tai/muabong",
"Mua r­¬ng më réng 3/muaruong3",
"tho¸t/no")
 return end
if(GetExpandBox() == 3) then
Say(11256,3,
"Mua B«ng Tai/muabong",
"Mua r­¬ng më réng 4/muaruong4",
"tho¸t/no")
 return end
if(GetExpandBox() == 4) then
Say(11256,3,
"Mua B«ng Tai/muabong",
"Mua r­¬ng më réng 5/muaruong5",
"tho¸t/no")
 return end
Say(11256,2,
"Mua B«ng Tai/muabong",
"tho¸t/no")
end


function muaruong1()
	local nNum = 200;
	if GetExtPoint() < nNum then
		Talk(1,"","§Ó më réng r­¬ng nhµ ng­¬i cÇn "..nNum.." tiÒn Xu");
		return end
	if(GetExtPoint() >= nNum) then	
	PayExtPoint(nNum)
              SetExpandBox(1)
	OpenBox(1)
	Talk(1,"",11263)
	else 
	Talk(1,"",11261)
	end
end

function muaruong2()
	local nNum = 200;
	if GetExtPoint() < nNum then
		Talk(1,"","§Ó më réng r­¬ng nhµ ng­¬i cÇn "..nNum.." tiÒn Xu");
		return end
	if(GetExtPoint() >= nNum) then	
	PayExtPoint(nNum)
              SetExpandBox(2)
	OpenBox(2)
	Talk(1,"",11263)
	else 
	Talk(1,"",11261)
	end
end

function muaruong3()
	local nNum = 200;
	if GetExtPoint() < nNum then
		Talk(1,"","§Ó më réng r­¬ng nhµ ng­¬i cÇn "..nNum.." tiÒn Xu");
		return end
	if(GetExtPoint() >= nNum) then	
	PayExtPoint(nNum)
              SetExpandBox(3)
	OpenBox(3)
	Talk(1,"",11263)
	else 
	Talk(1,"",11261)
	end
end

function muaruong4()
	local nNum = 200;
	if GetExtPoint() < nNum then
		Talk(1,"","§Ó më réng r­¬ng nhµ ng­¬i cÇn "..nNum.." tiÒn Xu");
		return end
	if(GetExtPoint() >= nNum) then	
	PayExtPoint(nNum)
              SetExpandBox(4)
	OpenBox(4)
	Talk(1,"",11263)
	else 
	Talk(1,"",11261)
	end
end

function muaruong5()
	local nNum = 200;
	if GetExtPoint() < nNum then
		Talk(1,"","§Ó më réng r­¬ng nhµ ng­¬i cÇn "..nNum.." tiÒn Xu");
		return end
	if(GetExtPoint() >= nNum) then	
	PayExtPoint(nNum)
              SetExpandBox(5)
	OpenBox(5)
	Talk(1,"",11263)
	else 
	Talk(1,"",11261)
	end
end

-----------------------------------------------------------------------------------------------------------------------
function muabong()
	if(GetCash() < 200) then
	Talk(1,"",11261)
	else
	AddItemID(AddItem(0,4,181,0,0,5,0,0))
	Pay(200)
	Msg2Player("Mua ®­îc 1 ®«i b«ng tay.")
	Talk(1,"",11260)
	end
end

function tangau()
Talk(3,"",11257,11258,11259)
end

function taoma()
	Input("taoma2")
end;

function taoma2(x)
	SetSavePw(x);
end;

function doima()
	Msg2Player("<sex> h·y nhËp lÇn l­ît mËt khÈu cò vµ mËt khÈu míi ph©n biÖt b»ng ký tù <color=yellow><SPACE> <color>");
	Input("doima2");
end;

function doima2(x)
	if(GetSavePw()==GetParam(x,1," ")) then
		SetSavePw(GetParam(x,2," "));
	end
end;

function no()
end
