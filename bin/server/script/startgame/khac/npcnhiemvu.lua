--hoangnhk
function addnpcnhiemvu()
	--============thanh thanh son ==================
	local NpcTab = {24,552,26};
	local NPCTHANHSON={
	{83386,143078},
	{83688,142690},
	{83440,141766},
	{82977,141406},
	{82671,140270},
	{82315,139078},
	{81223,138366},
	{81238,137920},
	{80849,135616},
	{80311,135056},
	{79815,133918},
	{78828,132952},
	{77844,131488},
	{77464,130256},
	{76440,129184},
	{75733,129016},
	{75557,127802},
	{76438,126652},
	{77953,126072},
	{78580,124268},
	{79007,123916},
	{78447,122400},
	{77938,121480},
	{76754,121210},
	{75449,120262},
	{75170,120882},
	{73685,121074},
	{73009,122072},
	{72379,121686},
	{71373,120540},
	{70195,120272},
	{69150,119234},
	{68635,119588},
	{67876,119882},
	{67321,120980},
	{66055,121142},
	{64873,120924},
	{64666,120282},
	{63938,120156},
	{63410,120460},
	{62158,121726},
	{61128,122054},
	{60437,122308},
	{60115,121590},
	{60238,120238},
	{59973,118840},
	{60187,117764},
	{61109,116756},
	{62093,115094},
	{62480,115030}
	};
	for i=1,getn(NPCTHANHSON) do
		AddNpcNew(NpcTab[random(3)],70,21,NPCTHANHSON[i][1],NPCTHANHSON[i][2],DEATHFILE6X,5,nil,1,"555",nil,nil,nil,100,35,40,45,nil,800,nil,nil,DROPFILE6X);
	end

	--============monster heo rung khach san Long Mon ==================
	AddNpcNew(11,10,121,72097,149324,TASK_HEORUNG,
		5,nil,1,RANDOMC(0,1,2,3,4),nil,nil,nil,50,10,15,20,nil,600,nil,nil,DROPFILE1X);
	AddNpcNew(11,10,121,70098,133684,TASK_HEORUNG,
		5,nil,1,RANDOMC(0,1,2,3,4),nil,nil,nil,50,10,15,20,nil,600,nil,nil,DROPFILE1X);
	AddNpcNew(11,10,121,57041,133316,TASK_HEORUNG,
		5,nil,1,RANDOMC(0,1,2,3,4),nil,nil,nil,50,10,15,20,nil,600,nil,nil,DROPFILE1X);
	--============monster meo rung co gai hai thuoc Thanh Do ==================
	AddNpcNew(34,10,140,78059,119624,TASK_MEORUNG,
		5,"MÌo rõng",1,RANDOMC(0,1,2,3,4),nil,nil,nil,50,10,15,20,nil,600,nil,nil,DROPFILE1X);
	AddNpcNew(34,10,140,76258,116724,TASK_MEORUNG,
		5,"MÌo rõng",1,RANDOMC(0,1,2,3,4),nil,nil,nil,50,10,15,20,nil,600,nil,nil,DROPFILE1X);
	AddNpcNew(34,10,140,77077,113262,TASK_MEORUNG,
		5,"MÌo rõng",1,RANDOMC(0,1,2,3,4),nil,nil,nil,50,10,15,20,nil,600,nil,nil,DROPFILE1X);
	--dau truong-------
	-- AddTrapEx4(964,1626,3212,5,"\\script\\feature\\dautruong\\traphoisinh.lua")
	-- AddNpcNew(87,1,162,1588*32,3134*32,"\\script\\feature\\dautruong\\baodanh.lua",6,"§Êu tr­êng sø gi¶ ")
	----------viem de----------------

	AddNpcNew(1320,1,37,54857,101541,"\\script\\feature\\viemde\\sugia.lua",6);
	-- AddNpcNew(1320,1,78,1580,3205,"\\script\\feature\\viemde\\sugia.lua",6);
	AddNpcNew(203,1,851,50486,101891,"\\script\\feature\\viemde\\hieuthuoc.lua",6);
	AddNpcNew(625,1,851,51408,101633,"\\script\\global\\npcchucnang\\ruongchua.lua",6);
	AddTrapEx1(853,1747,3525,20,"\\script\\feature\\viemde\\trap1.lua")
	AddTrapEx1(853,1806,3592,20,"\\script\\feature\\viemde\\trap2.lua")
	AddTrapEx2(853,1799,3482,20,"\\script\\feature\\viemde\\trap3.lua")
	-- AddNpcNew(240,1,342,37792,77136,"\\script\\feature\\sukiengame\\khuvucbang\\xaphu.lua",6,"TruyÒn Tèng Bang Héi");
	
	-------------------------NV hoang kim------------------------------------------------------------
	AddNpcNew(647,100,162,1638*32,2982*32,"\\script\\feature\\nvhoangkim\\m_macsau.lua",
		5,"M¹c SÇu",1,RANDOMC(0,1,2,3,4),0,3000,25,500,10,1,10,nil,600,20,nil,nil);
	AddNpcNew(653,100,140,2314*32,3290*32,"\\script\\feature\\nvhoangkim\\m_luuphong.lua",
		5,"Giíi L­u Phong",1,RANDOMC(0,1,2,3,4),0,10000,25,500,10,1,10,nil,600,20,nil,nil);
	AddNpcNew(654,100,41,1956*32,2996*32,"\\script\\feature\\nvhoangkim\\m_tudaohiep.lua",
		5,"Tö §ao HiÖp",1,RANDOMC(0,1,2,3,4),0,15000,25,500,10,1,10,nil,600,20,nil,nil);
	AddNpcNew(655,100,125,54005,101483,"\\script\\feature\\nvhoangkim\\m_oandoc.lua",
		5,"O¸n §éc",1,RANDOMC(0,1,2,3,4),0,20000,25,500,10,1,10,nil,600,22,nil,nil);
	AddNpcNew(656,100,163,53661,99494,"\\script\\feature\\nvhoangkim\\m_thanbi.lua",
		5,"Ng­êi thÇn bÝ ",1,RANDOMC(0,1,2,3,4),0,40000,25,500,10,1,10,nil,600,25,nil,nil);
	local nNpcIdx;
	nNpcIdx = AddNpcNew(678,100,176,1758*32,3441*32,"\\script\\feature\\nvhoangkim\\m_macsau.lua",
		5,"Ninh T­íng qu©n",1,RANDOMC(0,1,2,3,4),0,3000,25,500,10,1,10,nil,600,20,nil,nil);SetNpcValue(nNpcIdx,1);
	nNpcIdx = AddNpcNew(679,100,92,1848*32,3185*32,"\\script\\feature\\nvhoangkim\\m_luuphong.lua",
		5,"L­ ThiÖn T­îng",1,RANDOMC(0,1,2,3,4),0,10000,25,500,10,1,10,nil,600,20,nil,nil);SetNpcValue(nNpcIdx,1);
	AddNpcNew(126,1,162,58816,107978,"\\script\\feature\\nvhoangkim\\lethuy.lua",6,"H¶i ®­êng sø gi¶ LÖ Thu Thñy");
	nNpcIdx = AddNpcNew(680,100,122,49296,100299,"\\script\\feature\\nvhoangkim\\m_tudaohiep.lua",
		5,"Tõ Tù Lùc",1,RANDOMC(0,1,2,3,4),0,15000,25,500,10,1,10,nil,600,20,nil,nil);SetNpcValue(nNpcIdx,1);
	AddNpcNew(677,1,53,57373,101388,"\\script\\feature\\nvhoangkim\\hannguong.lua",6);
	nNpcIdx = AddNpcNew(681,100,53,56750,93361,"\\script\\feature\\nvhoangkim\\m_oandoc.lua",
		5,"Hµn Ng­ ¤ng",1,RANDOMC(0,1,2,3,4),0,20000,25,500,10,1,10,nil,600,22,nil,nil);SetNpcValue(nNpcIdx,1);
	AddNpcNew(665,1,37,53453,94056,"\\script\\feature\\nvhoangkim\\khongtich.lua",6,"Kh«ng TÞch ®¹i s­ ");
	nNpcIdx = AddNpcNew(666,100,37,1461*32,2842*32,"\\script\\feature\\nvhoangkim\\m_thanbi.lua",
		5,"Kh«ng TÞch ®¹i s­ ",1,RANDOMC(0,1,2,3,4),0,40000,25,500,10,1,10,nil,600,25,nil,nil);SetNpcValue(nNpcIdx,1);
	AddNpcNew(352,1,121,61951,146258,"\\script\\feature\\nvhoangkim\\vannhi.lua",6,649);
	nNpcIdx = AddNpcNew(722,100,90,1810*32,3290*32,"\\script\\feature\\nvhoangkim\\m_macsau.lua",
		5,nil,1,RANDOMC(0,1,2,3,4),0,3000,25,500,10,1,10,nil,600,20,nil,nil);SetNpcValue(nNpcIdx,2);
	nNpcIdx = AddNpcNew(716,100,21,2715*32,3953*32,"\\script\\feature\\nvhoangkim\\m_luuphong.lua",
		5,nil,1,RANDOMC(0,1,2,3,4),0,10000,25,500,10,1,10,nil,600,20,nil,nil);SetNpcValue(nNpcIdx,2);
	AddNpcNew(455,1,20,113938,198360,"\\script\\feature\\nvhoangkim\\pholoithu.lua",6,"Phã L«i Th­ ");
	AddNpcNew(121,1,176,53827,104046,"\\script\\feature\\nvhoangkim\\tangchu.lua",6,121);
	AddNpcNew(79,1,78,49666,93055,"\\script\\feature\\nvhoangkim\\daothachmon.lua",6,756);
	nNpcIdx = AddNpcNew(717,100,92,62208,102400,"\\script\\feature\\nvhoangkim\\m_tudaohiep.lua",
		5,nil,1,RANDOMC(0,1,2,3,4),0,15000,25,500,10,1,10,nil,600,20,nil,nil);SetNpcValue(nNpcIdx,2);
	nNpcIdx = AddNpcNew(720,100,9,2408*32,5851*32,"\\script\\feature\\nvhoangkim\\m_oandoc.lua",
		5,nil,1,RANDOMC(0,1,2,3,4),0,20000,25,500,10,1,10,nil,600,22,nil,nil);SetNpcValue(nNpcIdx,2);
	nNpcIdx = AddNpcNew(721,100,56,1649*32,3262*32,"\\script\\feature\\nvhoangkim\\m_oandoc.lua",
		5,nil,1,RANDOMC(0,1,2,3,4),0,30000,25,500,10,1,10,nil,600,22,nil,nil);SetNpcValue(nNpcIdx,3);
	AddNpcNew(135,1,37,70449,101553,"\\script\\feature\\nvhoangkim\\doanmocdue.lua",6,597);
	nNpcIdx = AddNpcNew(694,100,123,50203,103868,"\\script\\feature\\nvhoangkim\\m_thanbi.lua",
		5,"Liªu §Þnh",1,RANDOMC(0,1,2,3,4),0,40000,25,500,10,1,10,nil,600,25,nil,nil);SetNpcValue(nNpcIdx,2);
	
end;
