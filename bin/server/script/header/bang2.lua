----============================================DOI KHO BAU===========================================--
----------------------------------------------------------------------------------------------------------
--Script By Thong Hon
--Author : Doc Co Sau
------------HD--------------
--Include("\\script\\header\\servertime2.lua");
Include("\\script\\header\\event_endtime2.lua");
----------------------------------------------------------------------------------------------------------
function ActiveKhoBau()
KhoBau()
end

function doibauvat()
            Say2("<color=pink>KiÕm Kh¸ch:<color> <bclr=blue>VÞ ThiÕu HiÖp nµy muèn ®æi R­¬ng thÇn bÝ lÊy g× nµo !",10,1,"",
            -- "Ta muèn ®æi B¶o R­¬ng(nhá) ®Ó lÊy phÇn th­ëng /kn",
			 --"Ta muèn ®æi B¶o R­¬ng(lín) ®Ó lÊy phÇn th­ëng /kn",
			--"Ta muèn ®æi R­¬ng B¶o VËt ®Ó lÊy phÇn th­ëng/kn",
             "Th«i..! Ta chØ ghÐ xem th«i/no")
end

function timhieu_khobau()
Say("<color=yellow>Sè lÇn nhËn nhiÖm vô:<color><color=red> 10 lÇn\n<color=yellow>Yªu CÇu - Level:<color=red> 80 trë lªn\n<color=yellow>TiÒn v¹n: <color=green> 1000 l­îng <color>vµ <bclr=blue>\nChóc §¹i hiÖp  may m¾n!",2,
 "Th«i..! Ta chØ ghÐ xem th«i/no")
end


function kn(sel)
local baovat1 = 	GetItemCount(212,5,0)
local baovat2 = 	GetItemCount(213,5,0)
local baovat3 =	GetItemCount(214,5,0)
	
n = sel + 1
	if(n == 1) then
		if( baovat1 < 1)  then -- gia xu
		Talk(1,"","Trªn ng­êi c¸c h¹ kh«ng cã mang theo 1000 l­îng hoÆc <color=red> B¶o R­¬ng nhá.") 
		return end
		DelItem(212,5,1) ---  xoa bao vat
		Pay(1000)
		AddOwnExp(50000000) -- 50 trieu kinh nghiem
				nIndex = ItemSetAdd(0,3,21,0,0,5,2,0)-- 2 tiendong
				LockItem(nIndex)--khoa bao hiem vinh vien
				AddItemID(nIndex)
		AddItem(0,5,65,0,0,5,0,0)--Kim O Lenh		
			--event----------------
			addevent(30);
			--end------------------
	Talk(1,"","Chóc Mõng §¹i HiÖp ®· nhËn ®­îc phÇn th­ëng <color=green> §æi B¶o R­¬ng (nhá) <color> lÊy phÇn th­ëng trong ngµy h«m nay ...!")
		end
	
	if(n == 2) then
		if( baovat2 < 1 )  then -- gia xu
		Talk(1,"","Trªn ng­êi c¸c h¹ kh«ng cã mang theo  1000 l­îng hoÆc <color=red> B¶o R­¬ng (lín) .") 
		return end
		DelItem(213,5,1) ---  xoa bao vat
		Pay(1000)
		AddOwnExp(100000000) -- 100 trieu kinh nghiem
				nIndex = ItemSetAdd(0,3,21,0,0,5,4,0) -- 4 tiendong
				LockItem(nIndex)--khoa bao hiem vinh vien
				AddItemID(nIndex)
		AddItem(0,5,65,0,0,5,0,0)--Kim O Lenh		
		AddItem(0,5,65,0,0,5,0,0)--Kim O Lenh		
		
		--event----------------
			addevent(50);
			--end------------------
	Talk(1,"","Chóc Mõng §¹i HiÖp ®· nhËn ®­îc phÇn th­ëng <color=green> §æi B¶o R­¬ng (lín) <color> lÊy phÇn th­ëng trong ngµy h«m nay ...!")
		end
		
	if(n == 3 ) then
		if( baovat3 < 1 )  then -- gia xu
		Talk(1,"","Trªn ng­êi c¸c h¹ kh«ng cã mang theo  1000 l­îng hoÆc <color=red> R­¬ng B¶o VËt (truyÒn thuyÕt).")
		return end
		DelItem(214,5,1) ---  xoa bao vat
		Pay(1000)
		AddOwnExp(200000000) -- 200 trieu kinh nghiem
				nIndex = ItemSetAdd(0,3,21,0,0,5,6,0) --tiendong
				LockItem(nIndex)--khoa bao hiem vinh vien
				AddItemID(nIndex)
		AddItem(0,5,65,0,0,5,0,0)--Kim O Lenh		
		AddItem(0,5,65,0,0,5,0,0)--Kim O Lenh		
		AddItem(0,5,65,0,0,5,0,0)--Kim O Lenh			
		--event----------------
			addevent(50);
			--end------------------
	Talk(1,"","Chóc Mõng §¹i HiÖp ®· nhËn ®­îc phÇn th­ëng <color=green> §æi R­¬ng B¶o VËt (truyÒn thuyÕt) <color> lÊy phÇn th­ëng trong ngµy h«m nay ...!")
		end
	-- Talk(1,"","Chóc Mõng §¹i HiÖp ®· nhËn ®­îc <color=green>PhÇn th­ëng S¨n kho b¸u,<color> trong ngµy h«m nay ...!")
end	

function no()
end;
