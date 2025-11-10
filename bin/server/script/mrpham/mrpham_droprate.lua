Include("\\script\\mrpham\\mrpham_server_config.lua")

function DatDrop_KyTranDiBao(NpcIndex, Dat_Loop, Dat_Type)
	if Dat_gDropConfig.KyTranDiBao ~= 1 then return end
	local Dat_1 = {
		{Dat_r = 65, Dat_1 = {3, 13, 0}, Dat_2 = "Lam thñy tinh"},
		{Dat_r = 40, Dat_1 = {3, 14, 0}, Dat_2 = "Tö thñy tinh"},
		{Dat_r = 5, Dat_1 = {5, 79, 0}, Dat_2 = "Hång ¶nh LÔ Bao"},
		{Dat_r = 40, Dat_1 = {3, 15, 0}, Dat_2 = "Lôc thñy tinh"},
	}
	if not(Dat_Loop) then Dat_Loop = 1 end
	for Dat_l_2 = 1, Dat_Loop do
		for Dat_l_1 = 1, getn(Dat_1) do
			if random(100) <= Dat_1[Dat_l_1].Dat_r then
				if Dat_Type then
					AddItem(0,Dat_1[Dat_l_1].Dat_1[1],Dat_1[Dat_l_1].Dat_1[2],Dat_1[Dat_l_1].Dat_1[3],0,5,0,0);
				else
					DropNpcItem(NpcIndex, 0, Dat_1[Dat_l_1].Dat_1[1],Dat_1[Dat_l_1].Dat_1[2],Dat_1[Dat_l_1].Dat_1[3],0,5,0,0) 
				end
			end
		end
	end
end































