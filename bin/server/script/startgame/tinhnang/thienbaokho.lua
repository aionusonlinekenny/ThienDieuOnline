Include("\\script\\startgame\\traplib.lua");

HOTHUGIA_OFFSET = 2

NPC_THIENBAOKHO = {
[1] = {
	{844,1,395,1415,3082,0,"B¶o r­¬ng 1",1,"\\script\\feature\\thien_bao_kho\\baoruong.lua",1,0},
	{844,1,395,1437,3040,0,"B¶o r­¬ng 2",1,"\\script\\feature\\thien_bao_kho\\baoruong.lua",2,0},
	{844,1,395,1409,2978,0,"B¶o R­¬ng 3",1,"\\script\\feature\\thien_bao_kho\\baoruong.lua",3,0},
	{844,1,395,1377,2940,0,"B¶o R­¬ng 4",1,"\\script\\feature\\thien_bao_kho\\baoruong.lua",4,0},
	{844,1,395,1409,2870,0,"B¶o R­¬ng 5",1,"\\script\\feature\\thien_bao_kho\\baoruong.lua",5,0},
	{844,1,395,1378,2821,0,"B¶o R­¬ng 6",1,"\\script\\feature\\thien_bao_kho\\baoruong.lua",6,0},
	{844,1,395,1420,2769,0,"B¶o R­¬ng 7",1,"\\script\\feature\\thien_bao_kho\\baoruong.lua",7,0},
	{844,1,395,1375,2737,0,"B¶o R­¬ng 8",1,"\\script\\feature\\thien_bao_kho\\baoruong.lua",8,0},
	{844,1,395,1419,2668,0,"B¶o R­¬ng 9",1,"\\script\\feature\\thien_bao_kho\\baoruong.lua",9,0},
},
[2] = {
	{849,1,395,1415,3082,0,"B¶o Khè Thñ Hé Gi¶",5,"\\script\\feature\\thien_bao_kho\\hobao.lua",1,2},
	{849,1,395,1437,3040,0,"B¶o Khè Thñ Hé Gi¶",5,"\\script\\feature\\thien_bao_kho\\hobao.lua",2,2},
	{849,1,395,1409,2978,0,"B¶o Khè Thñ Hé Gi¶",5,"\\script\\feature\\thien_bao_kho\\hobao.lua",3,2},
	{849,1,395,1377,2940,0,"B¶o Khè Thñ Hé Gi¶",5,"\\script\\feature\\thien_bao_kho\\hobao.lua",4,2},
	{849,1,395,1409,2870,0,"B¶o Khè Thñ Hé Gi¶",5,"\\script\\feature\\thien_bao_kho\\hobao.lua",5,2},
	{849,1,395,1378,2821,0,"B¶o Khè Thñ Hé Gi¶",5,"\\script\\feature\\thien_bao_kho\\hobao.lua",6,2},
	{849,1,395,1420,2769,0,"B¶o Khè Thñ Hé Gi¶",5,"\\script\\feature\\thien_bao_kho\\hobao.lua",7,2},
	{849,1,395,1375,2737,0,"B¶o Khè Thñ Hé Gi¶",5,"\\script\\feature\\thien_bao_kho\\hobao.lua",8,2},
	{849,1,395,1419,2668,0,"B¶o Khè Thñ Hé Gi¶",5,"\\script\\feature\\thien_bao_kho\\hobao.lua",9,2},
}
}

function addnpctbk()
	local nNpcIdx
	for i=1,getn(NPC_THIENBAOKHO[1]) do
		nNpcIdx = AddNpcNew(NPC_THIENBAOKHO[1][i][1],NPC_THIENBAOKHO[1][i][2],NPC_THIENBAOKHO[1][i][3],NPC_THIENBAOKHO[1][i][4]*32,NPC_THIENBAOKHO[1][i][5]*32,NPC_THIENBAOKHO[1][i][9],NPC_THIENBAOKHO[1][i][8],NPC_THIENBAOKHO[1][i][7])
		SetNpcParam(nNpcIdx,1,NPC_THIENBAOKHO[1][i][10])
	end
	for i=1,getn(NPC_THIENBAOKHO[2]) do
		nNpcIdx = AddNpcNew(NPC_THIENBAOKHO[2][i][1],NPC_THIENBAOKHO[2][i][2],NPC_THIENBAOKHO[2][i][3],NPC_THIENBAOKHO[2][i][4]*32+HOTHUGIA_OFFSET,NPC_THIENBAOKHO[2][i][5]*32,NPC_THIENBAOKHO[2][i][9],NPC_THIENBAOKHO[2][i][8],NPC_THIENBAOKHO[2][i][7],0,nil,0,650000,500,100,100,100,234,nil,1620,100,nil,nil)
		SetNpcParam(nNpcIdx,1,NPC_THIENBAOKHO[2][i][10])
		SetNpcBoss(nNpcIdx,NPC_THIENBAOKHO[2][i][11])
	end	
	AddNpcNew(842,1,395,1386*32,2442*32,"\\script\\feature\\thien_bao_kho\\tieutran.lua",6,"Tiªu TrÊn")
	AddNpcNew(377,1,395,1412*32,3203*32,"\\script\\feature\\thien_bao_kho\\dichquan.lua",6,"DÞch Quan")
end

function addtraptbk()
	for i=1,getn(TRAPTHIENBAOKHO) do
		AddTrap(TRAPTHIENBAOKHO[i][1],TRAPTHIENBAOKHO[i][2],TRAPTHIENBAOKHO[i][3],"\\script\\feature\\thien_bao_kho\\chancua.lua")
	end
end