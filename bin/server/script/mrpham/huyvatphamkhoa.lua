Include("\\script\\header\\taskid.lua");
Include("\\script\\mrpham\\mrpham_inc.lua");

function main()
	Say2(15454,8,1,"",
	"Giao dﬁch/giaodich",
	"HÒy B· T t C∂ Trang Bﬁ Kh„a/XoaItem",
	"K’t thÛc ÆËi thoπi/no")
end;

function giaodich()
	Sale(12)
end;

function XoaItem()
	Say2("Chºng hay vﬁ thi’u hi÷p muËn nhÍ l∑o phu hÒy trang bﬁ nµo?\n<color=green>Sau Khi HÒy Trang Bﬁ SŒ Kh´ng Th” L y Lπi ß≠Óc Ngµi C„ MuËn B· Trang bﬁ Kh´ng?",2,1,"",
		"B t ß«u HÒy Trang Bﬁ Kh„a V‹nh Vi’n/XoaItemOK",
		"K’t thÛc ÆËi thoπi/no")
end

function XoaItemOK()
	PutItem("Vui lﬂng Æ∆t vµo trang bﬁ c«n x„a.","y/delitem","n/no")
end;

function delitem()
	local i,j, nIndex,kind,genre,detail,parti,level,series,row;
	local Rkind,Rgenre,Rdetail,Rparti,Rlevel,Rseries,Rrow;
	local nRealIndex = 0;
	local count = 0;
	for i=0,5 do
		for j=0,3 do
		nIndex,kind,genre,detail,parti,level,series,row = GetItemParam(10,i,j);
			if (nIndex > 0) then
				count = count + 1;
				nRealIndex,Rkind,Rgenre,Rdetail,Rparti,Rlevel,Rseries,Rrow
				= nIndex,kind,genre,detail,parti,level,series,row;
				local bLock,nMin = GetItemLock(nRealIndex);
				if (bLock ~= 2) then Talk(1,"","Chÿ c„ th” x„a trang bﬁ kh„a b∂o hi”m v‹nh vi‘n.") return end
				RemoveItem(nRealIndex,1);
			end
		end
	end
end;