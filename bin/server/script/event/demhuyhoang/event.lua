--------========================================================================================----------
--------========================================================================================----------
--------=======================================ANHVIETDONGNAI=====================================-----------
--------========================================================================================----------
--------========================================================================================----------

Include("\\script\\lib\\worldlibrary.lua");
Include("\\script\\header\\npcfile.lua")
MAX_HUYHOANG_PER_DAY = 5
TIME_SWITCH = 5*60*18   	----- 5 phut qua chin
--hat huy hoang - hoang km
HUYHOANG_THAP={
[1] = "Hπt Huy Hoµng s¨",
[2] = {
	{320,43532,94632},
	{320,43241,95234},
	{320,42979,94646},
	{320,42624,94884},
	{320,42228,94700},
	{320,42054,95334},
	{320,41710,94732},
	{320,41445,95572},
	{320,41141,94742},
	{320,40816,95500},
	{320,1306*32,2947*32},
	{320,1303*32,2972*32},
	{320,1306*32,2990*32},
	{320,1314*32,2989*32},
	{320,1320*32,2978*32},
	{320,1332*32,2973*32},
	{320,1329*32,2953*32},
	{320,1304*32,2991*32},
	{320,1279*32,2972*32},
	{320,1282*32,2996*32},
	{320,1292*32,2997*32},
	{320,1301*32,3004*32},
	{320,1305*32,2991*32},
	{320,1300*32,2981*32},
	{320,1292*32,2975*32},
	{320,1306*32,2975*32},
	{320,1308*32,2986*32},
	{320,1319*32,2988*32},
	{320,1333*32,2978*32},
	{320,1322*32,2989*32},
	{320,1320*32,2973*32}
}
};

HUYHOANG_TRUNG={
[1] = "Hπt Huy Hoµng trung",
[2] = {
	{340,56247,93582},
	{340,55963,93236},
	{340,55636,92946},
	{340,55354,93104},
	{340,55046,93204},
	{340,54851,92690},
	{340,54450,92720},
	{340,54664,93406},
	{340,54171,93316},
	{340,54094,92618},
	{340,1740*32,2912*32},
	{340,1733*32,2912*32},
	{340,1726*32,2918*32},
	{340,1715*32,2912*32},
	{340,1708*32,2905*32},
	{340,1700*32,2905*32},
	{340,1697*32,2915*32},
	{340,1688*32,2903*32},
	{340,1695*32,2886*32},
	{340,1704*32,2885*32},
	{340,1710*32,2880*32},
	{340,1717*32,2884*32},
	{340,1722*32,2882*32},
	{340,1730*32,2892*32},
	{340,1739*32,2890*32},
	{340,1746*32,2898*32},
	{340,1724*32,2902*32},
	{340,1706*32,2890*32},
	{340,1699*32,2912*32},
	{340,1696*32,2923*32},
	{340,1685*32,2917*32},
	{340,1686*32,2910*32},
	{340,1684*32,2893*32},
	{340,1700*32,2883*32}
	}
};

HUYHOANG_CAO={
[1] = "Hπt Huy Hoµng cao",
[2] = {
	{322,54493,113656},
	{322,54558,114484},
	{322,54812,113986},
	{322,55036,114376},
	{322,55124,113610},
	{322,55381,113936},
	{322,55772,113664},
	{322,55984,114264},
	{322,56159,113692},
	{322,56398,113358},
	{322,1702,3551*32},
	{322,1706*32,3566*32},
	{322,1701*32,3562*32},
	{322,1709*32,3542*32},
	{322,1716*32,3548*32},
	{322,1720*32,3559*32},
	{322,1712*32,3573*32},
	{322,1707*32,3583*32},
	{322,1700*32,3577*32},
	{322,1708*32,3553*32},
	{322,1714*32,3540*32},
	{322,1705*32,3535*32},
	{322,1697*32,3538*32},
	{322,1726*32,3541*32},
	{322,1735*32,3547*32},
	{322,1750*32,3556*32},
	{322,1744*32,3571*32},
	{322,1759*32,3570*32},
	{322,1765*32,3549*32},
	{322,1766*32,3530*32}
	}
};

function addhhh()
	local nNpcIdx;
	for i=1,getn(HUYHOANG_THAP[2]) do
	nNpcIdx = AddNpcNew(1110,1,HUYHOANG_THAP[2][i][1],HUYHOANG_THAP[2][i][2],HUYHOANG_THAP[2][i][3],HATHH_FILE,6)
	SetNpcParam(nNpcIdx,1,1);
	SetNpcTimeout(nNpcIdx, TIME_SWITCH)
	end
	
	for i=1,getn(HUYHOANG_TRUNG[2]) do
	nNpcIdx = AddNpcNew(1110,1,HUYHOANG_TRUNG[2][i][1],HUYHOANG_TRUNG[2][i][2],HUYHOANG_TRUNG[2][i][3],HATHH_FILE,6)
	SetNpcParam(nNpcIdx,1,2);
	SetNpcTimeout(nNpcIdx, TIME_SWITCH)
	end
	
	for i=1,getn(HUYHOANG_CAO[2]) do
	nNpcIdx = AddNpcNew(1110,1,HUYHOANG_CAO[2][i][1],HUYHOANG_CAO[2][i][2],HUYHOANG_CAO[2][i][3],HATHH_FILE,6)
	SetNpcParam(nNpcIdx,1,3);
	SetNpcTimeout(nNpcIdx, TIME_SWITCH)
	end
	
	nNpcIdx = AddNpcNew(1117,1,336,46332,95226,HATHH_FILE,6);
	SetNpcParam(nNpcIdx,1,4);
	SetNpcTimeout(nNpcIdx, TIME_SWITCH);
	
	--thong bao--
	local commonstr = "<color=Yellow>%s<color> xu t hi÷n tπi %s (%d,%d)"
	Msg2SubWorld(format(commonstr,HUYHOANG_THAP[1],GetWorldName(HUYHOANG_THAP[2][1][1]),floor(HUYHOANG_THAP[2][1][2]/256), floor(HUYHOANG_THAP[2][1][3]/512)));
	Msg2SubWorld(format(commonstr,HUYHOANG_TRUNG[1],GetWorldName(HUYHOANG_TRUNG[2][1][1]),floor(HUYHOANG_TRUNG[2][1][2]/256), floor(HUYHOANG_TRUNG[2][1][3]/512)));
	Msg2SubWorld(format(commonstr,HUYHOANG_CAO[1],GetWorldName(HUYHOANG_CAO[2][1][1]),floor(HUYHOANG_CAO[2][1][2]/256), floor(HUYHOANG_CAO[2][1][3]/512)));
	Msg2SubWorld("<color=Yellow>Hπt Hoµng Kim<color> sæp k’t tr∏i tπi Phong L®ng ßÈ (180,185)");	
end

function addqhh()
local nNewNpcIdx;
	
		for i=1,getn(HUYHOANG_THAP[2]) do
		nNewNpcIdx = AddNpcNew(1111,1,HUYHOANG_THAP[2][i][1],HUYHOANG_THAP[2][i][2],HUYHOANG_THAP[2][i][3],QUAHH_FILE,6)
		SetNpcParam(nNewNpcIdx,1,1);
		SetNpcTimeout(nNewNpcIdx, TIME_SWITCH);
		end
	
		for i=1,getn(HUYHOANG_TRUNG[2]) do
		nNewNpcIdx = AddNpcNew(1111,1,HUYHOANG_TRUNG[2][i][1],HUYHOANG_TRUNG[2][i][2],HUYHOANG_TRUNG[2][i][3],QUAHH_FILE,6)
		SetNpcParam(nNewNpcIdx,1,2);
		SetNpcTimeout(nNewNpcIdx, TIME_SWITCH);
		end
	
		for i=1,getn(HUYHOANG_CAO[2]) do
		nNewNpcIdx = AddNpcNew(1111,1,HUYHOANG_CAO[2][i][1],HUYHOANG_CAO[2][i][2],HUYHOANG_CAO[2][i][3],QUAHH_FILE,6)
		SetNpcParam(nNewNpcIdx,1,3);
		SetNpcTimeout(nNewNpcIdx, TIME_SWITCH);
		end
	
		nNewNpcIdx = AddNpcNew(1118,1,336,46332,95226,QUAHH_FILE,6);
		SetNpcParam(nNewNpcIdx,1,4);
		SetNpcTimeout(nNewNpcIdx, TIME_SWITCH);		

end
