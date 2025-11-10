Include( "\\script\\global\\npcchucnang\\thoren.lua");

function main( nItemIndex )
moruongngaunhien()
RemoveItem(nItemIndex,1);
end

function moruongngaunhien()
sx3 = random(1,100)
    
if sx3 == 5 then 
AddItemID(AddItem(0,6,12,0,0,5,0,0))  ----Bµn Nh­îc T©m Kinh
Msg2Player("B¹n nhËn ®­îc 1 Bµn Nh­îc T©m Kinh") 
elseif sx3 == 10 then
AddItemID(AddItem(0,6,2629,0,0,5,0,0));  ----X¸ Lîi Kim §¬n
Msg2Player("<color=green>B¹n nhËn ®­îc 1 X¸ Lîi Kim §¬n");      
elseif sx3 == 15 then
AddItemID(AddItem(0,6,72,0,0,5,0,0));  ----Thiªn s¬n B¶o Lé
Msg2Player("<color=green>B¹n nhËn ®­îc 1 Thiªn s¬n B¶o Lé");
elseif sx3 == 20 then
AddItemID(AddItem(0,6,124,0,0,5,0,0));  ----QuÕ Hoa Töu
Msg2Player("<color=green>B¹n nhËn ®­îc 1 QuÕ Hoa Töu");
elseif sx3 == 25 then
AddItemID(AddItem(0,6,71,0,0,5,0,0));  ----tien thao lo
Msg2Player("<color=green>B¹n nhËn ®­îc 1 tien thao lo");
elseif sx3 == 30 then
AddItemID(AddItem(0,6,1182,0,0,5,0,0));  ----tien thao lo db
Msg2Player("<color=green>B¹n nhËn ®­îc 1 tien thao lo db");
elseif sx3 == 35 then
AddItemID(AddItem(0,6,2434,0,0,5,0,0))  ----®¹i thµnh 120x
Msg2Player("<color=green>B¹n nhËn ®­îc 1 ®¹i thµnh 120x");
elseif sx3 == 40 then
AddItemID(AddItem(0,4,239,0,0,0,0,0)) --tu thuy tinh
Msg2Player("<color=green>B¹n nhËn ®­îc 1 tö thñy tinh.");
elseif sx3 == 45 then
AddItemID(AddItem(0,4,238,0,0,0,0,0)) --lam thuy tinh
Msg2Player("<color=green>B¹n nhËn ®­îc 1 lam thñy tinh.");
elseif sx3 == 50 then
AddItemID(AddItem(0,4,240,0,0,0,0,0)) --luc thuy tinh   
Msg2Player("<color=green>B¹n nhËn ®­îc 1 lôc thñy tinh.");
elseif sx3 == 55 then
AddItemID(AddItem(0,4,353,0,0,5,0,0));  ---tinh hång b¶o th¹ch
Msg2Player("<color=green>B¹n nhËn ®­îc 1 tinh hång b¶o th¹ch.");
elseif sx3 == 60 then
AddItemID(AddItem(0,6,1508,0,0,5,0,0));  ----khiªu chiÕn lÖnh
 Msg2Player("<color=green>B¹n nhËn ®­îc 1 khiªu chiÕn lÖnh.");
elseif sx3 == 65 then
AddItemID(AddItem(0,0,10,5,5,5,0)); ---chieu da
Msg2Player("<color=green>B¹n nhËn ®­îc 1 ngùa chiÕu d¹.");
elseif sx3 == 70 then
AddItemID(AddItem(0,0,11,random(265,272),0,0,0,0))
Msg2Player("<color=green>B¹n nhËn ®­îc 1 mÆt n¹ ngÉu nhiªn");
elseif sx3 == 75 then
              else 
AddOwnExp(500000)  
Msg2Player("LÇn nµy kh«ng tróng") 	       
	end		
end

























