TAB_NAMEAO= {
"Thiªn","Kim","Hoµng","Ngu","ãc","Chã","§ång","Ngäc","T©m","Léc","Lý","Thó","Chïa","ThÇy","ThÇn","Kinh","ThiÕu","L©m","Tù","NghÌo","NhÊt","Xãm",
"Xµm","v«","®èi","thô","d©m","tÆc","ng­êi","l¹","cµy","tiÒn","H¹","Minh","Sang","D©m","ThiÕt","Méc","Thñy","Háa","Thæ","M¹nh","Kha","§Þnh","NguyÔn","Th«ng",
"Quang","Vò","Nhßa","Nh¹t","Linh","LÖ","Nam","Th¾ng","Chales","Ronando","messi","HuÊn","Hoa","Hång","Huúnh","Phong","C¸","Bµ","¤ng","Ký","øc","Mét","Thêi","Vâ","L©m",
"§iÓu","Hå","Ngäc","Hµ","Mü","T©m","S¬n","Tïng","MTP","HSZ","GL","PK","Tay","Ch¬i","Bè","Giµ","Nhi","Trô","V­¬ng","Liªn","B×nh"
}


function Active_LogginAo()
	local TAB_NAME ={}
	for i = 1,random(2,3) do
		local Name = random(1,getn(TAB_NAMEAO))
		local FistName = random(1,getn(TAB_NAMEAO))
		local LastName = random(1,getn(TAB_NAMEAO))
		TAB_NAME={Name,FistName,LastName};
		Msg2SubWorld("<color=yellow>§¹i hiÖp "..TAB_NAMEAO[TAB_NAME[1]].." "..TAB_NAMEAO[TAB_NAME[2]].." "..TAB_NAMEAO[TAB_NAME[3]].." §· tham gia Vâ L©m Thiªn §iÓu<color>");
	end
	TAB_NAME ={};
end
	