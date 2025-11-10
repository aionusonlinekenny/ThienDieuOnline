--Ken Nguyen
TBKRUONG={
{45596,98676},
{45893,96604},
{45155,95120},
{44050,94168},
{45346,92496},
{44085,90306},
{45477,88592},
{43835,87216},
{45613,85134},
{44627,83790},
{44567,81916},
{45703,80596}
};

TBKBOSS={
{45404,98740},
{45797,96870},
{45077,95290},
{44209,93982},
{45226,92600},
{44222,90498},
{45587,88876},
{44017,87486},
{45523,85364},
{44919,83834},
{44695,81734},
{45486,80520}
};

function addnpcthienbaokho()
	AddNpcNew(377,1,393,45183,102474,"\\script\\feature\\thienbaokho\\dichquantbk.lua",6,47);
	AddNpcNew(842,1,393,44362,78154,"\\script\\feature\\thienbaokho\\tieutran.lua",6,"Tiªu TrÊn");
	local nNpcIdx;
	for i=1,getn(TBKRUONG) do
	nNpcIdx = AddNpcNew(844,1,393,TBKRUONG[i][1],TBKRUONG[i][2],"\\script\\feature\\thienbaokho\\baoruong.lua",6);
	SetNpcValue(nNpcIdx, i)
	end
	for i=1,getn(TBKBOSS) do
	    nNpcIdx = AddNpcNew(845,100,393,TBKBOSS[i][1],TBKBOSS[i][2],"\\script\\feature\\thienbaokho\\tbkboss.lua",
	     5,"B¶o Khè Thñ Hé Gi¶",nil,RANDOMC(0,1,2,3,4),0,5000000,100,5000,nil,10,20,nil,2000,50,2,"\\script\\feature\\thienbaokho\\dropboss.lua")
	SetNpcValue(nNpcIdx, i)
	end
end;
