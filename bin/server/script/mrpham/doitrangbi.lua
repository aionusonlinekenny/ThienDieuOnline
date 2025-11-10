Include("\\script\\library\\worldlibrary.lua");
Include("\\script\\header\\taskid.lua");

function main()
	dofile("script/global/mrpham/doitrangbi.lua")
	Say2("B¹n muèn ta gióp g×?",5,1,"",
	"NhËn Trang BÞ Kim ¤/kimo",
	"NhËn Trang BÞ Tö M·ng/tumang",
	"NhËn Trang BÞ HuyÒn Viªn/huyenvien",
	"NhËn Trang BÞ Th­¬ng Lang/thuonglang",
	"kÕt thóc ®èi tho¹i/no")
end

function kimo()
	Say("Mêi cô <color=wood>"..GetName().."<color> chän trang bÞ...",11,
	"Kim ¤ ThiÕu l©m/kotl",
	"Kim ¤ Thiªn V­¬ng/kotv",
	"Kim ¤ §­êng M«n/kodm",
	"Kim ¤ Ngò §éc/kond",
	"Kim ¤ Nga My/konm",
	"Kim ¤ Thóy Yªn/koty",
	"Kim ¤ C¸i Bang/kocb",
	"Kim ¤ Thiªn NhÉn/kotn",
	"Kim ¤ Vâ §ang/kovd",
	"Kim ¤ C«n L«n/kocl",
	"KÕt thóc ®èi tho¹i/no")
end

function tumang()
	Say("Mêi cô <color=wood>"..GetName().."<color> chän trang bÞ...",11,
	"Tö M·ng ThiÕu l©m/tmtl",
	"Tö M·ng Thiªn V­¬ng/tmtv",
	"Tö M·ng §­êng M«n/tmdm",
	"Tö M·ng Ngò §éc/tmnd",
	"Tö M·ng Nga My/tmnm",
	"Tö M·ng Thóy Yªn/tmty",
	"Tö M·ng C¸i Bang/tmcb",
	"Tö M·ng Thiªn NhÉn/tmtn",
	"Tö M·ng Vâ §ang/tmvd",
	"Tö M·ng C«n L«n/tmcl",
	"KÕt thóc ®èi tho¹i/no")
end

function huyenvien()
	Say("Mêi cô <color=wood>"..GetName().."<color> chän trang bÞ...",11,
	"HuyÒn Viªn ThiÕu l©m/hvtl",
	"HuyÒn Viªn Thiªn V­¬ng/hvtv",
	"HuyÒn Viªn §­êng M«n/hvdm",
	"HuyÒn Viªn Ngò §éc/hvnd",
	"HuyÒn Viªn Nga My/hvnm",
	"HuyÒn Viªn Thóy Yªn/hvty",
	"HuyÒn Viªn C¸i Bang/hvcb",
	"HuyÒn Viªn Thiªn NhÉn/hvtn",
	"HuyÒn Viªn Vâ §ang/hvvd",
	"HuyÒn Viªn C«n L«n/hvcl",
	"KÕt thóc ®èi tho¹i/no")
end

function thuonglang()
	Say("Mêi cô <color=wood>"..GetName().."<color> chän trang bÞ...",11,
	"Th­¬ng Lang ThiÕu l©m/tltl",
	"Th­¬ng Lang Thiªn V­¬ng/tltv",
	"Th­¬ng Lang §­êng M«n/tldm",
	"Th­¬ng Lang Ngò §éc/tlnd",
	"Th­¬ng Lang Nga My/tlnm",
	"Th­¬ng Lang Thóy Yªn/tlty",
	"Th­¬ng Lang C¸i Bang/tlcb",
	"Th­¬ng Lang Thiªn NhÉn/tltn",
	"Th­¬ng Lang Vâ §ang/tlvd",
	"Th­¬ng Lang C«n L«n/tlcl",
	"KÕt thóc ®èi tho¹i/no")
end
--------------
function kotl()
	Say("Xin chµo <color=wood>"..GetName().."<color>!",4,
	"ThiÕu L©m QuyÒn/kotl1",
	"ThiÕu L©m §ao/kotl2",
	"ThiÕu L©m Bæng/kotl3",
	"KÕt thóc ®æi tho¹i/no")
end

function kotl1()
	for i=2056,2065 do 		Index = ItemSetAdd(2,0,i-2,0,0,0,5,0);LockItem(Index);SetItemRich(Index,800) -- ®iÓm binh gi¸p
		AddItemID(Index)
	end
	Msg2Player("B¹n nhËn ®­îc bé trang bÞ <color=blue>Kim ¤")
end
function kotl2()
	for i=2076,2085 do 		Index = ItemSetAdd(2,0,i-2,0,0,0,5,0);LockItem(Index);SetItemRich(Index,800) -- ®iÓm binh gi¸p
		AddItemID(Index)
	end
	Msg2Player("B¹n nhËn ®­îc bé trang bÞ <color=blue>Kim ¤")
end

function kotl3()
	for i=2066,2075 do 		Index = ItemSetAdd(2,0,i-2,0,0,0,5,0);LockItem(Index);SetItemRich(Index,800) -- ®iÓm binh gi¸p
		AddItemID(Index)
	end
	Msg2Player("B¹n nhËn ®­îc bé trang bÞ <color=blue>Kim ¤")
end

function kotv()
	Say("Xin ch¢µo <color=wood>"..GetName().."<color>!",4,
	"Thiªn V­¬ng Th­¬ng/kotv2",
	"Thiªn V­¬ng Chïy/kotv1",
	"Thiªn V­¬ng §ao/kotv3",
	"KÕt thóc ®æi tho¹i/no")
end

function kotv1()
	for i=2096,2105 do 		Index = ItemSetAdd(2,0,i-2,0,0,0,5,0);LockItem(Index);SetItemRich(Index,800) -- ®iÓm binh gi¸p
		AddItemID(Index)
	end
	Msg2Player("B¹n nhËn ®­îc bé trang bÞ <color=blue>Kim ¤")
end

function kotv2()
	for i=2086,2095 do 		Index = ItemSetAdd(2,0,i-2,0,0,0,5,0);LockItem(Index);SetItemRich(Index,800) -- ®iÓm binh gi¸p
		AddItemID(Index)
	end
	Msg2Player("B¹n nhËn ®­îc bé trang bÞ <color=blue>Kim ¤")
end

function kotv3()
	for i=2106,2115 do 		Index = ItemSetAdd(2,0,i-2,0,0,0,5,0);LockItem(Index);SetItemRich(Index,800) -- ®iÓm binh gi¸p
		AddItemID(Index)
	end
	Msg2Player("B¹n nhËn ®­îc bé trang bÞ <color=blue>Kim ¤")
end

function konm()
	Say("Xin ch¢µo <color=wood>"..GetName().."<color>!",3,
	"Nga Mi KiÕm/konm1",
	"Nga Mi Ch­ëng/konm2",
	"KÕt thóc ®æi tho¹i/no")
end

function konm1()
	for i=2116,2125 do 		Index = ItemSetAdd(2,0,i-2,0,0,0,5,0);LockItem(Index);SetItemRich(Index,800) -- ®iÓm binh gi¸p
		AddItemID(Index)
	end
	Msg2Player("B¹n nhËn ®­îc bé trang bÞ <color=blue>Kim ¤")
end

function konm2()
	for i=2126,2135 do 		Index = ItemSetAdd(2,0,i-2,0,0,0,5,0);LockItem(Index);SetItemRich(Index,800) -- ®iÓm binh gi¸p
		AddItemID(Index)
	end
	Msg2Player("B¹n nhËn ®­îc bé trang bÞ <color=blue>Kim ¤")
end

function koty()
	Say("Xin ch¢µo <color=wood>"..GetName().."<color>!",3,
	"Thóy Yªn §ao/koty1",
	"Thóy Yªn Song §ao/koty2",
	"KÕt thóc ®æi tho¹i/no")
end

function koty1()
	for i=2136,2145 do 		Index = ItemSetAdd(2,0,i-2,0,0,0,5,0);LockItem(Index);SetItemRich(Index,800) -- ®iÓm binh gi¸p
		AddItemID(Index)
	end
	Msg2Player("B¹n nhËn ®­îc bé trang bÞ <color=blue>Kim ¤")
end

function koty2()
	for i=2146,2155 do 		Index = ItemSetAdd(2,0,i-2,0,0,0,5,0);LockItem(Index);SetItemRich(Index,800) -- ®iÓm binh gi¸p
		AddItemID(Index)
	end
	Msg2Player("B¹n nhËn ®­îc bé trang bÞ <color=blue>Kim ¤")
end

function kond()
	Say("Xin ch¢µo <color=wood>"..GetName().."<color>!",3,
	"Ngò §éc Ch­ëng/kond1",
	"Ngò §éc §ao/kond2",
	"KÕt thóc ®æi tho¹i/no")
end

function kond1()
	for i=2156,2165 do 		Index = ItemSetAdd(2,0,i-2,0,0,0,5,0);LockItem(Index);SetItemRich(Index,800) -- ®iÓm binh gi¸p
		AddItemID(Index)
	end
	Msg2Player("B¹n nhËn ®­îc bé trang bÞ <color=blue>Kim ¤")
end

function kond2()
	for i=2166,2175 do 		Index = ItemSetAdd(2,0,i-2,0,0,0,5,0);LockItem(Index);SetItemRich(Index,800) -- ®iÓm binh gi¸p
		AddItemID(Index)
	end
	Msg2Player("B¹n nhËn ®­îc bé trang bÞ <color=blue>Kim ¤")
end

function kodm()
	Say("Xin ch¢µo <color=wood>"..GetName().."<color>!",4,
	"§­êng M«n Phi §ao/kodm1",
	"§­êng M«n Phi Tiªu/kodm2",
	"§­êng M«n Tô TiÔn/kodm3",
	"KÕt thóc ®æi tho¹i/no")
end

function kodm1()
	for i=2176,2185 do 		Index = ItemSetAdd(2,0,i-2,0,0,0,5,0);LockItem(Index);SetItemRich(Index,800) -- ®iÓm binh gi¸p
		AddItemID(Index)
	end
	Msg2Player("B¹n nhËn ®­îc bé trang bÞ <color=blue>Kim ¤")
end

function kodm2()
	for i=2196,2205 do 		Index = ItemSetAdd(2,0,i-2,0,0,0,5,0);LockItem(Index);SetItemRich(Index,800) -- ®iÓm binh gi¸p
		AddItemID(Index)
	end
	Msg2Player("B¹n nhËn ®­îc bé trang bÞ <color=blue>Kim ¤")
end

function kodm3()
	for i=2186,2195 do 		Index = ItemSetAdd(2,0,i-2,0,0,0,5,0);LockItem(Index);SetItemRich(Index,800) -- ®iÓm binh gi¸p
		AddItemID(Index)
	end
	Msg2Player("B¹n nhËn ®­îc bé trang bÞ <color=blue>Kim ¤")
end

function kocb()
	Say("Xin ch¢µo <color=wood>"..GetName().."<color>!",3,
	"C¸i Bang Ch­ëng/kocb1",
	"C¸i Bang Bæng/kocb2",
	"KÕt thóc ®æi tho¹i/no")
end

function kocb1()
	for i=2206,2215 do 		Index = ItemSetAdd(2,0,i-2,0,0,0,5,0);LockItem(Index);SetItemRich(Index,800) -- ®iÓm binh gi¸p
		AddItemID(Index)
	end
	Msg2Player("B¹n nhËn ®­îc bé trang bÞ <color=blue>Kim ¤")
end

function kocb2()
	for i=2216,2225 do 		Index = ItemSetAdd(2,0,i-2,0,0,0,5,0);LockItem(Index);SetItemRich(Index,800) -- ®iÓm binh gi¸p
		AddItemID(Index)
	end
	Msg2Player("B¹n nhËn ®­îc bé trang bÞ <color=blue>Kim ¤")
end

function kotn()
	Say("Xin ch¢µo <color=wood>"..GetName().."<color>!",3,
	"Thiªn NhÉn Th­¬ng/kotn1",
	"Thiªn NhÉn §ao/kotn2",
	"KÕt thóc ®æi tho¹i/no")
end

function kotn1()
	for i=2226,2235 do 		Index = ItemSetAdd(2,0,i-2,0,0,0,5,0);LockItem(Index);SetItemRich(Index,800) -- ®iÓm binh gi¸p
		AddItemID(Index)
	end
	Msg2Player("B¹n nhËn ®­îc bé trang bÞ <color=blue>Kim ¤")
end

function kotn2()
	for i=2236,2245 do 		Index = ItemSetAdd(2,0,i-2,0,0,0,5,0);LockItem(Index);SetItemRich(Index,800) -- ®iÓm binh gi¸p
		AddItemID(Index)
	end
	Msg2Player("B¹n nhËn ®­îc bé trang bÞ <color=blue>Kim ¤")
end

function kovd()
	Say("Xin ch¢µo <color=wood>"..GetName().."<color>!",3,
	"Vâ §ang Ch­ëng/kovd1",
	"Vâ §ang KiÕm/kovd2",
	"KÕt thóc ®æi tho¹i/no")
end

function kovd1()
	for i=2246,2255 do 		Index = ItemSetAdd(2,0,i-2,0,0,0,5,0);LockItem(Index);SetItemRich(Index,800) -- ®iÓm binh gi¸p
		AddItemID(Index)
	end
	Msg2Player("B¹n nhËn ®­îc bé trang bÞ <color=blue>Kim ¤")
end

function kovd2()
	for i=2256,2265 do 		Index = ItemSetAdd(2,0,i-2,0,0,0,5,0);LockItem(Index);SetItemRich(Index,800) -- ®iÓm binh gi¸p
		AddItemID(Index)
	end
	Msg2Player("B¹n nhËn ®­îc bé trang bÞ <color=blue>Kim ¤")
end

function kocl()
	Say("Xin ch¢µo <color=wood>"..GetName().."<color>!",3,
	"C«n L«n §ao/kocl1",
	"C«n L«n KiÕm/kocl2",
	"KÕt thóc ®æi tho¹i/no")
end

function kocl1()
	for i=2266,2275 do 		Index = ItemSetAdd(2,0,i-2,0,0,0,5,0);LockItem(Index);SetItemRich(Index,800) -- ®iÓm binh gi¸p
		AddItemID(Index)
	end
	Msg2Player("B¹n nhËn ®­îc bé trang bÞ <color=blue>Kim ¤")
end

function kocl2()
	for i=2276,2285 do 		Index = ItemSetAdd(2,0,i-2,0,0,0,5,0);LockItem(Index);SetItemRich(Index,800) -- ®iÓm binh gi¸p
		AddItemID(Index)
	end
	Msg2Player("B¹n nhËn ®­îc bé trang bÞ <color=blue>Kim ¤")
end

--------------------------------------------------------------------------------Tö M•ng----
function tmtl()
	Say("Xin chµo <color=wood>"..GetName().."<color>!",4,
	"ThiÕu L©m QuyÒn/tmtl1",
	"ThiÕu L©m §ao/tmtl2",
	"ThiÕu L©m Bæng/tmtl3",
	"KÕt thóc ®æi tho¹i/no")
end

function tmtl1()
	for i=1826,1835 do 		Index = ItemSetAdd(2,0,i-2,0,0,0,5,0)SetItemRich(Index,500) -- ®iÓm binh gi¸p
		AddItemID(Index)
	end
	Msg2Player("B¹n nhËn ®­îc bé trang bÞ <color=blue>Tö M•ng")
end
function tmtl2()
	for i=1846,1855 do 		Index = ItemSetAdd(2,0,i-2,0,0,0,5,0)SetItemRich(Index,500) -- ®iÓm binh gi¸p
		AddItemID(Index)
	end
	Msg2Player("B¹n nhËn ®­îc bé trang bÞ <color=blue>Tö M•ng")
end

function tmtl3()
	for i=1836,1845 do 		Index = ItemSetAdd(2,0,i-2,0,0,0,5,0)SetItemRich(Index,500) -- ®iÓm binh gi¸p
		AddItemID(Index)
	end
	Msg2Player("B¹n nhËn ®­îc bé trang bÞ <color=blue>Tö M•ng")
end

function tmtv()
	Say("Xin Chµo <color=wood>"..GetName().."<color>!",4,
	"Thiªn V­¬ng Th­¬ng/tmtv2",
	"Thiªn V­¬ng Chïy/tmtv1",
	"Thiªn V­¬ng §ao/tmtv3",
	"KÕt thóc ®æi tho¹i/no")
end

function tmtv1()
	for i=1866,1875 do 		Index = ItemSetAdd(2,0,i-2,0,0,0,5,0)SetItemRich(Index,500) -- ®iÓm binh gi¸p
		AddItemID(Index)
	end
	Msg2Player("B¹n nhËn ®­îc bé trang bÞ <color=blue>Tö M•ng")
end

function tmtv2()
	for i=1856,1865 do 		Index = ItemSetAdd(2,0,i-2,0,0,0,5,0)SetItemRich(Index,500) -- ®iÓm binh gi¸p
		AddItemID(Index)
	end
	Msg2Player("B¹n nhËn ®­îc bé trang bÞ <color=blue>Tö M•ng")
end

function tmtv3()
	for i=1876,1885 do 		Index = ItemSetAdd(2,0,i-2,0,0,0,5,0)SetItemRich(Index,500) -- ®iÓm binh gi¸p
		AddItemID(Index)
	end
	Msg2Player("B¹n nhËn ®­îc bé trang bÞ <color=blue>Tö M•ng")
end

function tmnm()
	Say("Xin Chµo <color=wood>"..GetName().."<color>!",3,
	"Nga Mi KiÕm/tmnm1",
	"Nga Mi Ch­ëng/tmnm2",
	"KÕt thóc ®æi tho¹i/no")
end

function tmnm1()
	for i=1886,1895 do 		Index = ItemSetAdd(2,0,i-2,0,0,0,5,0)SetItemRich(Index,500) -- ®iÓm binh gi¸p
		AddItemID(Index)
	end
	Msg2Player("B¹n nhËn ®­îc bé trang bÞ <color=blue>Tö M•ng")
end

function tmnm2()
	for i=1896,1905 do 		Index = ItemSetAdd(2,0,i-2,0,0,0,5,0)SetItemRich(Index,500) -- ®iÓm binh gi¸p
		AddItemID(Index)
	end
	Msg2Player("B¹n nhËn ®­îc bé trang bÞ <color=blue>Tö M•ng")
end

function tmty()
	Say("Xin Chµo <color=wood>"..GetName().."<color>!",3,
	"Thóy Yªn §ao/tmty1",
	"Thóy Yªn Song §ao/tmty2",
	"KÕt thóc ®æi tho¹i/no")
end

function tmty1()
	for i=1906,1915 do 		Index = ItemSetAdd(2,0,i-2,0,0,0,5,0)SetItemRich(Index,500) -- ®iÓm binh gi¸p
		AddItemID(Index)
	end
	Msg2Player("B¹n nhËn ®­îc bé trang bÞ <color=blue>Tö M•ng")
end

function tmty2()
	for i=1916,1925 do 		Index = ItemSetAdd(2,0,i-2,0,0,0,5,0)SetItemRich(Index,500) -- ®iÓm binh gi¸p
		AddItemID(Index)
	end
	Msg2Player("B¹n nhËn ®­îc bé trang bÞ <color=blue>Tö M•ng")
end

function tmnd()
	Say("Xin Chµo <color=wood>"..GetName().."<color>!",3,
	"Ngò §éc Ch­ëng/tmnd1",
	"Ngò §éc §ao/tmnd2",
	"KÕt thóc ®æi tho¹i/no")
end

function tmnd1()
	for i=1926,1935 do 		Index = ItemSetAdd(2,0,i-2,0,0,0,5,0)SetItemRich(Index,500) -- ®iÓm binh gi¸p
		AddItemID(Index)
	end
	Msg2Player("B¹n nhËn ®­îc bé trang bÞ <color=blue>Tö M•ng")
end

function tmnd2()
	for i=1936,1945 do 		Index = ItemSetAdd(2,0,i-2,0,0,0,5,0)SetItemRich(Index,500) -- ®iÓm binh gi¸p
		AddItemID(Index)
	end
	Msg2Player("B¹n nhËn ®­îc bé trang bÞ <color=blue>Tö M•ng")
end

function tmdm()
	Say("Xin Chµo <color=wood>"..GetName().."<color>!",4,
	"§­êng M«n Phi §ao/tmdm1",
	"§­êng M«n Phi Tiªu/tmdm3",
	"§­êng M«n Tô TiÔn/tmdm2",
	"KÕt thóc ®æi tho¹i/no")
end

function tmdm1()
	for i=1946,1955 do 		Index = ItemSetAdd(2,0,i-2,0,0,0,5,0)SetItemRich(Index,500) -- ®iÓm binh gi¸p
		AddItemID(Index)
	end
	Msg2Player("B¹n nhËn ®­îc bé trang bÞ <color=blue>Tö M•ng")
end

function tmdm2()
	for i=1956,1965 do 		Index = ItemSetAdd(2,0,i-2,0,0,0,5,0)SetItemRich(Index,500) -- ®iÓm binh gi¸p
		AddItemID(Index)
	end
	Msg2Player("B¹n nhËn ®­îc bé trang bÞ <color=blue>Tö M•ng")
end

function tmdm3()
	for i=1966,1975 do 		Index = ItemSetAdd(2,0,i-2,0,0,0,5,0)SetItemRich(Index,500) -- ®iÓm binh gi¸p
		AddItemID(Index)
	end
	Msg2Player("B¹n nhËn ®­îc bé trang bÞ <color=blue>Tö M•ng")
end

function tmcb()
	Say("Xin Chµo <color=wood>"..GetName().."<color>!",3,
	"C¸i Bang Ch­ëng/tmcb1",
	"C¸i Bang Bæng/tmcb2",
	"KÕt thóc ®æi tho¹i/no")
end

function tmcb1()
	for i=1976,1985 do 		Index = ItemSetAdd(2,0,i-2,0,0,0,5,0)SetItemRich(Index,500) -- ®iÓm binh gi¸p
		AddItemID(Index)
	end
	Msg2Player("B¹n nhËn ®­îc bé trang bÞ <color=blue>Tö M•ng")
end

function tmcb2()
	for i=1986,1995 do 		Index = ItemSetAdd(2,0,i-2,0,0,0,5,0)SetItemRich(Index,500) -- ®iÓm binh gi¸p
		AddItemID(Index)
	end
	Msg2Player("B¹n nhËn ®­îc bé trang bÞ <color=blue>Tö M•ng")
end

function tmtn()
	Say("Xin Chµo <color=wood>"..GetName().."<color>!",3,
	"Thiªn NhÉn Th­¬ng/tmtn1",
	"Thiªn NhÉn §ao/tmtn2",
	"KÕt thóc ®æi tho¹i/no")
end

function tmtn1()
	for i=1996,2005 do 		Index = ItemSetAdd(2,0,i-2,0,0,0,5,0)SetItemRich(Index,500) -- ®iÓm binh gi¸p
		AddItemID(Index)
	end
	Msg2Player("B¹n nhËn ®­îc bé trang bÞ <color=blue>Tö M•ng")
end

function tmtn2()
	for i=2006,2015 do 		Index = ItemSetAdd(2,0,i-2,0,0,0,5,0)SetItemRich(Index,500) -- ®iÓm binh gi¸p
		AddItemID(Index)
	end
	Msg2Player("B¹n nhËn ®­îc bé trang bÞ <color=blue>Tö M•ng")
end

function tmvd()
	Say("Xin Chµo <color=wood>"..GetName().."<color>!",3,
	"Vâ §ang Ch­ëng/tmvd1",
	"Vâ §ang KiÕm/tmvd2",
	"KÕt thóc ®æi tho¹i/no")
end

function tmvd1()
	for i=2016,2025 do 		Index = ItemSetAdd(2,0,i-2,0,0,0,5,0)SetItemRich(Index,500) -- ®iÓm binh gi¸p
		AddItemID(Index)
	end
	Msg2Player("B¹n nhËn ®­îc bé trang bÞ <color=blue>Tö M•ng")
end

function tmvd2()
	for i=2026,2035 do 		Index = ItemSetAdd(2,0,i-2,0,0,0,5,0)SetItemRich(Index,500) -- ®iÓm binh gi¸p
		AddItemID(Index)
	end
	Msg2Player("B¹n nhËn ®­îc bé trang bÞ <color=blue>Tö M•ng")
end

function tmcl()
	Say("Xin Chµo <color=wood>"..GetName().."<color>!",3,
	"C«n L«n §ao/tmcl1",
	"C«n L«n KiÕm/tmcl2",
	"KÕt thóc ®æi tho¹i/no")
end

function tmcl1()
	for i=2036,2045 do 		Index = ItemSetAdd(2,0,i-2,0,0,0,5,0)SetItemRich(Index,500) -- ®iÓm binh gi¸p
		AddItemID(Index)
	end
	Msg2Player("B¹n nhËn ®­îc bé trang bÞ <color=blue>Tö M•ng")
end

function tmcl2()
	for i=2046,2055 do 		Index = ItemSetAdd(2,0,i-2,0,0,0,5,0)SetItemRich(Index,500) -- ®iÓm binh gi¸p
		AddItemID(Index)
	end
	Msg2Player("B¹n nhËn ®­îc bé trang bÞ <color=blue>Tö M•ng")
end

--------------------------------------------------------------------------------HuyÒn Viªn----
function hvtl()
	Say("Xin chµo <color=wood>"..GetName().."<color>!",4,
	"ThiÕu L©m QuyÒn/hvtl1",
	"ThiÕu L©m §ao/hvtl2",
	"ThiÕu L©m Bæng/hvtl3",
	"KÕt thóc ®æi tho¹i/no")
end

function hvtl1()
	for i=1596,1605 do 		Index = ItemSetAdd(2,0,i-2,0,0,0,5,0);LockItem(Index);SetItemRich(Index,100) -- ®iÓm binh gi¸p
		AddItemID(Index)
	end
	Msg2Player("B¹n nhËn ®­îc bé trang bÞ <color=blue>HuyÒn Viªn")
end
function hvtl2()
	for i=1616,1625 do 		Index = ItemSetAdd(2,0,i-2,0,0,0,5,0);LockItem(Index);SetItemRich(Index,100) -- ®iÓm binh gi¸p
		AddItemID(Index)
	end
	Msg2Player("B¹n nhËn ®­îc bé trang bÞ <color=blue>HuyÒn Viªn")
end

function hvtl3()
	for i=1606,1615 do 		Index = ItemSetAdd(2,0,i-2,0,0,0,5,0);LockItem(Index);SetItemRich(Index,100) -- ®iÓm binh gi¸p
		AddItemID(Index)
	end
	Msg2Player("B¹n nhËn ®­îc bé trang bÞ <color=blue>HuyÒn Viªn")
end

function hvtv()
	Say("Xin ch¢µo <color=wood>"..GetName().."<color>!",4,
	"Thiªn V­¬ng Th­¬ng/hvtv2",
	"Thiªn V­¬ng Chïy/hvtv1",
	"Thiªn V­¬ng §ao/hvtv3",
	"KÕt thóc ®æi tho¹i/no")
end

function hvtv1()
	for i=1626,1635 do 		Index = ItemSetAdd(2,0,i-2,0,0,0,5,0);LockItem(Index);SetItemRich(Index,100) -- ®iÓm binh gi¸p
		AddItemID(Index)
	end
	Msg2Player("B¹n nhËn ®­îc bé trang bÞ <color=blue>HuyÒn Viªn")
end

function hvtv2()
	for i=1636,1645 do 		Index = ItemSetAdd(2,0,i-2,0,0,0,5,0);LockItem(Index);SetItemRich(Index,100) -- ®iÓm binh gi¸p
		AddItemID(Index)
	end
	Msg2Player("B¹n nhËn ®­îc bé trang bÞ <color=blue>HuyÒn Viªn")
end

function hvtv3()
	for i=1646,1655 do 		Index = ItemSetAdd(2,0,i-2,0,0,0,5,0);LockItem(Index);SetItemRich(Index,100) -- ®iÓm binh gi¸p
		AddItemID(Index)
	end
	Msg2Player("B¹n nhËn ®­îc bé trang bÞ <color=blue>HuyÒn Viªn")
end

function hvnm()
	Say("Xin ch¢µo <color=wood>"..GetName().."<color>!",3,
	"Nga Mi KiÕm/hvnm1",
	"Nga Mi Ch­ëng/hvnm2",
	"KÕt thóc ®æi tho¹i/no")
end

function hvnm1()
	for i=1656,1665 do 		Index = ItemSetAdd(2,0,i-2,0,0,0,5,0);LockItem(Index);SetItemRich(Index,100) -- ®iÓm binh gi¸p
		AddItemID(Index)
	end
	Msg2Player("B¹n nhËn ®­îc bé trang bÞ <color=blue>HuyÒn Viªn")
end

function hvnm2()
	for i=1666,1675 do 		Index = ItemSetAdd(2,0,i-2,0,0,0,5,0);LockItem(Index);SetItemRich(Index,100) -- ®iÓm binh gi¸p
		AddItemID(Index)
	end
	Msg2Player("B¹n nhËn ®­îc bé trang bÞ <color=blue>HuyÒn Viªn")
end

function hvty()
	Say("Xin ch¢µo <color=wood>"..GetName().."<color>!",3,
	"Thóy Yªn §ao/hvty1",
	"Thóy Yªn Song §ao/hvty2",
	"KÕt thóc ®æi tho¹i/no")
end

function hvty1()
	for i=1676,1685 do 		Index = ItemSetAdd(2,0,i-2,0,0,0,5,0);LockItem(Index);SetItemRich(Index,100) -- ®iÓm binh gi¸p
		AddItemID(Index)
	end
	Msg2Player("B¹n nhËn ®­îc bé trang bÞ <color=blue>HuyÒn Viªn")
end

function hvty2()
	for i=1686,1695 do 		Index = ItemSetAdd(2,0,i-2,0,0,0,5,0);LockItem(Index);SetItemRich(Index,100) -- ®iÓm binh gi¸p
		AddItemID(Index)
	end
	Msg2Player("B¹n nhËn ®­îc bé trang bÞ <color=blue>HuyÒn Viªn")
end

function hvnd()
	Say("Xin ch¢µo <color=wood>"..GetName().."<color>!",3,
	"Ngò §éc Ch­ëng/hvnd1",
	"Ngò §éc §ao/hvnd2",
	"KÕt thóc ®æi tho¹i/no")
end

function hvnd1()
	for i=1696,1705 do 		Index = ItemSetAdd(2,0,i-2,0,0,0,5,0);LockItem(Index);SetItemRich(Index,100) -- ®iÓm binh gi¸p
		AddItemID(Index)
	end
	Msg2Player("B¹n nhËn ®­îc bé trang bÞ <color=blue>HuyÒn Viªn")
end

function hvnd2()
	for i=1706,1715 do 		Index = ItemSetAdd(2,0,i-2,0,0,0,5,0);LockItem(Index);SetItemRich(Index,100) -- ®iÓm binh gi¸p
		AddItemID(Index)
	end
	Msg2Player("B¹n nhËn ®­îc bé trang bÞ <color=blue>HuyÒn Viªn")
end

function hvdm()
	Say("Xin ch¢µo <color=wood>"..GetName().."<color>!",4,
	"§­êng M«n Phi §ao/hvdm1",
	"§­êng M«n Phi Tiªu/hvdm3",
	"§­êng M«n Tô TiÔn/hvdm2",
	"KÕt thóc ®æi tho¹i/no")
end

function hvdm1()
	for i=1716,1725 do 		Index = ItemSetAdd(2,0,i-2,0,0,0,5,0);LockItem(Index);SetItemRich(Index,100) -- ®iÓm binh gi¸p
		AddItemID(Index)
	end
	Msg2Player("B¹n nhËn ®­îc bé trang bÞ <color=blue>HuyÒn Viªn")
end

function hvdm2()
	for i=1726,1735 do 		Index = ItemSetAdd(2,0,i-2,0,0,0,5,0);LockItem(Index);SetItemRich(Index,100) -- ®iÓm binh gi¸p
		AddItemID(Index)
	end
	Msg2Player("B¹n nhËn ®­îc bé trang bÞ <color=blue>HuyÒn Viªn")
end

function hvdm3()
	for i=1736,1745 do 		Index = ItemSetAdd(2,0,i-2,0,0,0,5,0);LockItem(Index);SetItemRich(Index,100) -- ®iÓm binh gi¸p
		AddItemID(Index)
	end
	Msg2Player("B¹n nhËn ®­îc bé trang bÞ <color=blue>HuyÒn Viªn")
end

function hvcb()
	Say("Xin ch¢µo <color=wood>"..GetName().."<color>!",3,
	"C¸i Bang Ch­ëng/hvcb1",
	"C¸i Bang Bæng/hvcb2",
	"KÕt thóc ®æi tho¹i/no")
end

function hvcb1()
	for i=1746,1755 do 		Index = ItemSetAdd(2,0,i-2,0,0,0,5,0);LockItem(Index);SetItemRich(Index,100) -- ®iÓm binh gi¸p
		AddItemID(Index)
	end
	Msg2Player("B¹n nhËn ®­îc bé trang bÞ <color=blue>HuyÒn Viªn")
end

function hvcb2()
	for i=1756,1765 do 		Index = ItemSetAdd(2,0,i-2,0,0,0,5,0);LockItem(Index);SetItemRich(Index,100) -- ®iÓm binh gi¸p
		AddItemID(Index)
	end
	Msg2Player("B¹n nhËn ®­îc bé trang bÞ <color=blue>HuyÒn Viªn")
end

function hvtn()
	Say("Xin ch¢µo <color=wood>"..GetName().."<color>!",3,
	"Thiªn NhÉn Th­¬ng/hvtn1",
	"Thiªn NhÉn §ao/hvtn2",
	"KÕt thóc ®æi tho¹i/no")
end

function hvtn1()
	for i=1766,1775 do 		Index = ItemSetAdd(2,0,i-2,0,0,0,5,0);LockItem(Index);SetItemRich(Index,100) -- ®iÓm binh gi¸p
		AddItemID(Index)
	end
	Msg2Player("B¹n nhËn ®­îc bé trang bÞ <color=blue>HuyÒn Viªn")
end

function hvtn2()
	for i=1776,1785 do 		Index = ItemSetAdd(2,0,i-2,0,0,0,5,0);LockItem(Index);SetItemRich(Index,100) -- ®iÓm binh gi¸p
		AddItemID(Index)
	end
	Msg2Player("B¹n nhËn ®­îc bé trang bÞ <color=blue>HuyÒn Viªn")
end

function hvvd()
	Say("Xin ch¢µo <color=wood>"..GetName().."<color>!",3,
	"Vâ §ang Ch­ëng/hvvd1",
	"Vâ §ang KiÕm/hvvd2",
	"KÕt thóc ®æi tho¹i/no")
end

function hvvd1()
	for i=1786,1795 do 		Index = ItemSetAdd(2,0,i-2,0,0,0,5,0);LockItem(Index);SetItemRich(Index,100) -- ®iÓm binh gi¸p
		AddItemID(Index)
	end
	Msg2Player("B¹n nhËn ®­îc bé trang bÞ <color=blue>HuyÒn Viªn")
end

function hvvd2()
	for i=1796,1805 do 		Index = ItemSetAdd(2,0,i-2,0,0,0,5,0);LockItem(Index);SetItemRich(Index,100) -- ®iÓm binh gi¸p
		AddItemID(Index)
	end
	Msg2Player("B¹n nhËn ®­îc bé trang bÞ <color=blue>HuyÒn Viªn")
end

function hvcl()
	Say("Xin ch¢µo <color=wood>"..GetName().."<color>!",3,
	"C«n L«n §ao/hvcl1",
	"C«n L«n KiÕm/hvcl2",
	"KÕt thóc ®æi tho¹i/no")
end

function hvcl1()
	for i=1806,1815 do 		Index = ItemSetAdd(2,0,i-2,0,0,0,5,0);LockItem(Index);SetItemRich(Index,100) -- ®iÓm binh gi¸p
		AddItemID(Index)
	end
	Msg2Player("B¹n nhËn ®­îc bé trang bÞ <color=blue>HuyÒn Viªn")
end

function hvcl2()
	for i=1816,1825 do 		Index = ItemSetAdd(2,0,i-2,0,0,0,5,0);LockItem(Index);SetItemRich(Index,100) -- ®iÓm binh gi¸p
		AddItemID(Index)
	end
	Msg2Player("B¹n nhËn ®­îc bé trang bÞ <color=blue>HuyÒn Viªn")
end

--------------------------------------------------------------------------------Th­¬ng Lang----
function tltl()
	Say("Xin chµo <color=wood>"..GetName().."<color>!",4,
	"ThiÕu L©m QuyÒn/tltl1",
	"ThiÕu L©m §ao/tltl2",
	"ThiÕu L©m Bæng/tltl3",
	"KÕt thóc ®æi tho¹i/no")
end

function tltl1()
	for i=1366,1375 do 		Index = ItemSetAdd(2,0,i-2,0,0,0,5,0);LockItem(Index);SetItemRich(Index,80) -- ®iÓm binh gi¸p
		AddItemID(Index)
	end
	Msg2Player("B¹n nhËn ®­îc bé trang bÞ <color=blue>Th­¬ng Lang")
end
function tltl2()
	for i=1386,1395 do 		Index = ItemSetAdd(2,0,i-2,0,0,0,5,0);LockItem(Index);SetItemRich(Index,80) -- ®iÓm binh gi¸p
		AddItemID(Index)
	end
	Msg2Player("B¹n nhËn ®­îc bé trang bÞ <color=blue>Th­¬ng Lang")
end

function tltl3()
	for i=1376,1385 do 		Index = ItemSetAdd(2,0,i-2,0,0,0,5,0);LockItem(Index);SetItemRich(Index,80) -- ®iÓm binh gi¸p
		AddItemID(Index)
	end
	Msg2Player("B¹n nhËn ®­îc bé trang bÞ <color=blue>Th­¬ng Lang")
end

function tltv()
	Say("Xin ch¢µo <color=wood>"..GetName().."<color>!",4,
	"Thiªn V­¬ng Th­¬ng/tltv2",
	"Thiªn V­¬ng Chïy/tltv1",
	"Thiªn V­¬ng §ao/tltv3",
	"KÕt thóc ®æi tho¹i/no")
end

function tltv1()
	for i=1406,1415 do 		Index = ItemSetAdd(2,0,i-2,0,0,0,5,0);LockItem(Index);SetItemRich(Index,80) -- ®iÓm binh gi¸p
		AddItemID(Index)
	end
	Msg2Player("B¹n nhËn ®­îc bé trang bÞ <color=blue>Th­¬ng Lang")
end

function tltv2()
	for i=1396,1405 do 		Index = ItemSetAdd(2,0,i-2,0,0,0,5,0);LockItem(Index);SetItemRich(Index,80) -- ®iÓm binh gi¸p
		AddItemID(Index)
	end
	Msg2Player("B¹n nhËn ®­îc bé trang bÞ <color=blue>Th­¬ng Lang")
end

function tltv3()
	for i=1416,1425 do 		Index = ItemSetAdd(2,0,i-2,0,0,0,5,0);LockItem(Index);SetItemRich(Index,80) -- ®iÓm binh gi¸p
		AddItemID(Index)
	end
	Msg2Player("B¹n nhËn ®­îc bé trang bÞ <color=blue>Th­¬ng Lang")
end

function tlnm()
	Say("Xin ch¢µo <color=wood>"..GetName().."<color>!",3,
	"Nga Mi KiÕm/tlnm1",
	"Nga Mi Ch­ëng/tlnm2",
	"KÕt thóc ®æi tho¹i/no")
end

function tlnm1()
	for i=1426,1435 do 		Index = ItemSetAdd(2,0,i-2,0,0,0,5,0);LockItem(Index);SetItemRich(Index,80) -- ®iÓm binh gi¸p
		AddItemID(Index)
	end
	Msg2Player("B¹n nhËn ®­îc bé trang bÞ <color=blue>Th­¬ng Lang")
end

function tlnm2()
	for i=1436,1445 do 		Index = ItemSetAdd(2,0,i-2,0,0,0,5,0);LockItem(Index);SetItemRich(Index,80) -- ®iÓm binh gi¸p
		AddItemID(Index)
	end
	Msg2Player("B¹n nhËn ®­îc bé trang bÞ <color=blue>Th­¬ng Lang")
end

function tlty()
	Say("Xin ch¢µo <color=wood>"..GetName().."<color>!",3,
	"Thóy Yªn §ao/tlty1",
	"Thóy Yªn Song §ao/tlty2",
	"KÕt thóc ®æi tho¹i/no")
end

function tlty1()
	for i=1446,1455 do 		Index = ItemSetAdd(2,0,i-2,0,0,0,5,0);LockItem(Index);SetItemRich(Index,80) -- ®iÓm binh gi¸p
		AddItemID(Index)
	end
	Msg2Player("B¹n nhËn ®­îc bé trang bÞ <color=blue>Th­¬ng Lang")
end

function tlty2()
	for i=1456,1465 do 		Index = ItemSetAdd(2,0,i-2,0,0,0,5,0);LockItem(Index);SetItemRich(Index,80) -- ®iÓm binh gi¸p
		AddItemID(Index)
	end
	Msg2Player("B¹n nhËn ®­îc bé trang bÞ <color=blue>Th­¬ng Lang")
end

function tlnd()
	Say("Xin ch¢µo <color=wood>"..GetName().."<color>!",3,
	"Ngò §éc Ch­ëng/tlnd1",
	"Ngò §éc §ao/tlnd2",
	"KÕt thóc ®æi tho¹i/no")
end

function tlnd1()
	for i=1466,1475 do 		Index = ItemSetAdd(2,0,i-2,0,0,0,5,0);LockItem(Index);SetItemRich(Index,80) -- ®iÓm binh gi¸p
		AddItemID(Index)
	end
	Msg2Player("B¹n nhËn ®­îc bé trang bÞ <color=blue>Th­¬ng Lang")
end

function tlnd2()
	for i=1476,1485 do 		Index = ItemSetAdd(2,0,i-2,0,0,0,5,0);LockItem(Index);SetItemRich(Index,80) -- ®iÓm binh gi¸p
		AddItemID(Index)
	end
	Msg2Player("B¹n nhËn ®­îc bé trang bÞ <color=blue>Th­¬ng Lang")
end

function tldm()
	Say("Xin ch¢µo <color=wood>"..GetName().."<color>!",4,
	"§­êng M«n Phi §ao/tldm1",
	"§­êng M«n Phi Tiªu/tldm2",
	"§­êng M«n Tô TiÔn/tldm3",
	"KÕt thóc ®æi tho¹i/no")
end

function tldm1()
	for i=1486,1495 do 		Index = ItemSetAdd(2,0,i-2,0,0,0,5,0);LockItem(Index);SetItemRich(Index,80) -- ®iÓm binh gi¸p
		AddItemID(Index)
	end
	Msg2Player("B¹n nhËn ®­îc bé trang bÞ <color=blue>Th­¬ng Lang")
end

function tldm2()
	for i=1506,1515 do 		Index = ItemSetAdd(2,0,i-2,0,0,0,5,0);LockItem(Index);SetItemRich(Index,80) -- ®iÓm binh gi¸p
		AddItemID(Index)
	end
	Msg2Player("B¹n nhËn ®­îc bé trang bÞ <color=blue>Th­¬ng Lang")
end

function tldm3()
	for i=1496,1505 do 		Index = ItemSetAdd(2,0,i-2,0,0,0,5,0);LockItem(Index);SetItemRich(Index,80) -- ®iÓm binh gi¸p
		AddItemID(Index)
	end
	Msg2Player("B¹n nhËn ®­îc bé trang bÞ <color=blue>Th­¬ng Lang")
end

function tlcb()
	Say("Xin ch¢µo <color=wood>"..GetName().."<color>!",3,
	"C¸i Bang Ch­ëng/tlcb1",
	"C¸i Bang Bæng/tlcb2",
	"KÕt thóc ®æi tho¹i/no")
end

function tlcb1()
	for i=1516,1525 do 		Index = ItemSetAdd(2,0,i-2,0,0,0,5,0);LockItem(Index);SetItemRich(Index,80) -- ®iÓm binh gi¸p
		AddItemID(Index)
	end
	Msg2Player("B¹n nhËn ®­îc bé trang bÞ <color=blue>Th­¬ng Lang")
end

function tlcb2()
	for i=1526,1535 do 		Index = ItemSetAdd(2,0,i-2,0,0,0,5,0);LockItem(Index);SetItemRich(Index,80) -- ®iÓm binh gi¸p
		AddItemID(Index)
	end
	Msg2Player("B¹n nhËn ®­îc bé trang bÞ <color=blue>Th­¬ng Lang")
end

function tltn()
	Say("Xin ch¢µo <color=wood>"..GetName().."<color>!",3,
	"Thiªn NhÉn Th­¬ng/tltn1",
	"Thiªn NhÉn §ao/tltn2",
	"KÕt thóc ®æi tho¹i/no")
end

function tltn1()
	for i=1536,1545 do 		Index = ItemSetAdd(2,0,i-2,0,0,0,5,0);LockItem(Index);SetItemRich(Index,80) -- ®iÓm binh gi¸p
		AddItemID(Index)
	end
	Msg2Player("B¹n nhËn ®­îc bé trang bÞ <color=blue>Th­¬ng Lang")
end

function tltn2()
	for i=1546,1555 do 		Index = ItemSetAdd(2,0,i-2,0,0,0,5,0);LockItem(Index);SetItemRich(Index,80) -- ®iÓm binh gi¸p
		AddItemID(Index)
	end
	Msg2Player("B¹n nhËn ®­îc bé trang bÞ <color=blue>Th­¬ng Lang")
end

function tlvd()
	Say("Xin ch¢µo <color=wood>"..GetName().."<color>!",3,
	"Vâ §ang Ch­ëng/tlvd1",
	"Vâ §ang KiÕm/tlvd2",
	"KÕt thóc ®æi tho¹i/no")
end

function tlvd1()
	for i=1556,1565 do 		Index = ItemSetAdd(2,0,i-2,0,0,0,5,0);LockItem(Index);SetItemRich(Index,80) -- ®iÓm binh gi¸p
		AddItemID(Index)
	end
	Msg2Player("B¹n nhËn ®­îc bé trang bÞ <color=blue>Th­¬ng Lang")
end

function tlvd2()
	for i=1566,1575 do 		Index = ItemSetAdd(2,0,i-2,0,0,0,5,0);LockItem(Index);SetItemRich(Index,80) -- ®iÓm binh gi¸p
		AddItemID(Index)
	end
	Msg2Player("B¹n nhËn ®­îc bé trang bÞ <color=blue>Th­¬ng Lang")
end

function tlcl()
	Say("Xin ch¢µo <color=wood>"..GetName().."<color>!",3,
	"C«n L«n §ao/tlcl1",
	"C«n L«n KiÕm/tlcl2",
	"KÕt thóc ®æi tho¹i/no")
end

function tlcl1()
	for i=1576,1585 do 		Index = ItemSetAdd(2,0,i-2,0,0,0,5,0);LockItem(Index);SetItemRich(Index,80) -- ®iÓm binh gi¸p
		AddItemID(Index)
	end
	Msg2Player("B¹n nhËn ®­îc bé trang bÞ <color=blue>Th­¬ng Lang")
end

function tlcl2()
	for i=1586,1595 do 		Index = ItemSetAdd(2,0,i-2,0,0,0,5,0);LockItem(Index);SetItemRich(Index,80) -- ®iÓm binh gi¸p
		AddItemID(Index)
	end
	Msg2Player("B¹n nhËn ®­îc bé trang bÞ <color=blue>Th­¬ng Lang")
end
-------------------------------------***END***-----------------------------------------------
function no()
end;
