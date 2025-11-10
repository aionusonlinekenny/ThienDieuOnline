Include("\\script\\serverscript.lua");
Include("\\script\\lib\\worldlibrary.lua");
Include("\\script\\header\\taskid.lua");
Include("\\script\\header\\npcfile.lua");
Include("\\script\\header\\bosstieuhk.lua");
Include("\\script\\header\\vuotai.lua");
Include("\\script\\header\\tongkim.lua");
Include("\\script\\header\\loginao.lua");
Include("\\script\\event\\demhuyhoang\\event.lua");
Include("\\script\\event\\hoadang\\lib.lua");
Include("\\script\\player\\playerlogin.lua");
Include("\\script\\event\\30thang4\\eventlib.lua");
function test_func(NpcIndex)
-- addfullnpc();
-- caltest(NpcIndex)
-- Msg2Player(" "..GetLucky(0).."");
-- AddItemID(AddItem(0,0,2,1,3,4,0,2)); -- nItemGenre,nDetail,nParticur,nLevel,nSeries,0, so dong vip;
	-- local nValue = GetTask(TASK_RESET);
	-- local nNum = GetNumber(1,nValue,2);
	-- SetTask(TASK_RESET,0);
	-- local nTaskValue = GetTask(TASK_TANTHU);
	-- SetTask(TASK_TANTHU, SetNumber(1,nTaskValue,1,1));
	-- SetTask(TASK_TANTHU, SetNumber(1,nTaskValue,2,1));
	-- SetTask(TASK_TANTHU, SetNumber(1,nTaskValue,3,1));
	-- SetTask(TASK_TANTHU, SetNumber(1,nTaskValue,4,1));
	-- Msg2Player("  "..GetNumber(1,nTaskValue,2).." ");
	-- Msg2Player("  "..GetTask(TASK_TANTHU).." ");
	-- if HaveMagic(450) > 1 then
	-- Msg2Player("Skills da add "..HaveMagic(324).."");
	-- Msg2Player("Skills da add "..GetLucky(0).."");
	-- end
	-- AddMagic(1556,1);
	-- DelMagic(1556);
	-- Msg2SubWorld("M¸y chñ Vâ L©m Thiªn §iÓu OPEN\Chóc ®¹i hiÖp ch¬i game vui vÎ\nTrang chñ: volamthiendieu.com\nHotLine: 0903.563.967");
	-- Msg2SubWorld("BQT-Admin kh«ng bao giê nh¾n tin xin tµi kho¶n quý ®ång chó ý b¶o vÖ tµi kho¶n khái kÎ gian!");
	-- Msg2SubWorld("Khi ph¸t hiÖn bÊt kú hµnh vi gian l©n nµo xin vui lßng liªn hÖ BQT Vâ L©m Thiªn §iÓu ®Ó tè gi¸c!");
	-- AddItemID(AddItem(0,0,10,5,5,0,0));
	-- AddItemID(AddItem(0,4,195,0,0,5,0,0));
	-- AddItemID(AddItem(0,0,	9,	0,6,0,0,0));
	-- local nTaskValue = GetTask(TASK_DATAU_ACCEPT);
	-- local x = GetNumber(1,nTaskValue, 9); --loai item thu' may
	-- local  nNum = GetNumber(2,nTaskValue,4);--so thu tu
	-- SetTask(TASK_DATAU_ACCEPT,SetNumber(1,nTaskValue, 2,1))--loai nv giao hay ko? --set « [2]
	-- SetTask(TASK_DATAU_ACCEPT,SetNumber(1,nTaskValue,9,2));
	-- SetTask(TASK_DATAU_ACCEPT,SetNumber(2,nTaskValue,4,37));
	-- Msg2Player(" "..random(2).. "  ");
	-- Msg2Player(" "..nNum.. "  ");
	-- 0,	4,	1,1 
	-- releasebosstieu()
	-- support_skill2();
	-- if GetLevel() < 200 then
	 -- SetLevel(200);
	-- end
				-- addfullnpc();
			-- Msg2SubWorld("M¸y chñ Vâ L©m Thiªn §iÓu OPEN");
			-- Msg2SubWorld("Chóc ®¹i hiÖp ch¬i game vui vÎ");
			-- Msg2SubWorld("Trang chñ: volamthiendieu.com");
			-- AddCountNews("Trang chñ: volamthiendieu.com");
			-- Msg2SubWorld("HotLine: 0903.563.967");		
			-- AddPropPoint(1000);
-- Input("event",500);
-- AddItemID(AddItem(0,6,15,0,0,5,0,0)); -- phi phong

end

function event()
local nNum = tonumber(GetInput())
local nIndex;
nIndex =  AddItemID(AddItem(0,6,4818,0,0,5,0,0));
SetStackItem(nIndex,nNum);
nIndex =  AddItemID(AddItem(0,6,4819,0,0,5,0,0));
SetStackItem(nIndex,nNum);
nIndex =  AddItemID(AddItem(0,6,4817,0,0,5,0,0));
SetStackItem(nIndex,nNum);
end


function support_skill2()
	HELLO	= "<color=red>Hç trî t©n thñ<color>: C¸c h¹ ®ang tr¶i nghiÖm phiªn b¶n chÝnh thøc cña m¸y chñ <color=yellow>Vâ L©m Thiªn §iÓu<color>!"
	EXIT 	=  "Ta chØ ghÐ ngang qua/no"
	TAB_INSERT ={};
	local nCurFac = GetFactionNo();
	
	if(nCurFac < 0 or nCurFac > 10) then
		Msg2Player("C¸c h¹ ch­a gia nhËp m«n ph¸i!")
	return end
	
	nCurFac = nCurFac +1;
	for i = 1,getn(SKILL90_ARRAY) do
		if (i == nCurFac) then
			GETN_TAB = getn(SKILL90_ARRAY[nCurFac]);
			for z = 1, GETN_TAB do
				TAB_INSERT[z] = SKILL90_ARRAY[nCurFac][z][1].."/ChooseSkill2("..""..nCurFac..""..","..""..z.."";
			end	
				Say(HELLO,getn(TAB_INSERT),
					TAB_INSERT,
					EXIT
					);
		end
	end
end

function ChooseSkill2(nCurFac,z)
		local nTaskValue = GetTask(TASK_TANTHU);
		AddMagic(SKILL90_ARRAY[nCurFac][z][2],11);
		Talk(1,"","Chóc mõng c¸c h¹ ®· lÜnh héi ®­îc kü n¨ng <color=yellow>"..SKILL90_ARRAY[nCurFac][z][1].."<color>");
end