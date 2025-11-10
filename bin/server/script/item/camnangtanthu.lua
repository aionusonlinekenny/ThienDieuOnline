------NameTools: Cam Nang Tan Thu

Include("\\script\\checkIPtongkim.lua");
Include("\\script\\feature\\tongkim\\tkmoquan.lua")
Include("\\script\\lib\\worldlibrary.lua");
Include("\\script\\header\\taskid.lua");
Include("\\script\\header\\forbidmap.lua");
Include("\\script\\header\\npcfile.lua")
Include("\\script\\global\\npcchucnang\\trogiup.lua")
Include("\\script\\checkAdmin.lua");


function main(nItemIdx)
	Say("Hç Trî T©n Thñ, Vâ L©m CTC", 10,	
               "Gi¶i KÑt nh©n vËt/giaiket",
          --     "Gäi Pet hç trî Pk/goibosspk1",
               "Chøc n¨ng Admin sö dông/tesetAD",
          

	--"Ho¹t ®éng V­ît ¶i/FindTalk1",
	--"Ho¹t ®éng Tèng Kim/FindTalk2",
	--"Ho¹t ®éng Phong L¨ng §é/FindTalk3",
	--"Ho¹t ®éng Liªn §Êu/FindTalk4",
	--"Ho¹t ®éng Huy Hoµng/FindTalk5",
	--"Ho¹t ®éng Hoa §¨ng/FindTalk6",
	--"Ho¹t ®éng Boss TiÓu Hoµng Kim/FindTalk7",
	"Tho¸t/no")
          end;

function FindTalk1()
Talk(1,"","<color=red>Ho¹t ®éng v­ît ¶i<color>: Thêi gian phót 30 mçi giê, mçi nh©n vËt ®i ®­îc tèi ®a 3 trËn, muèn ®i nhiÒu h¬n ph¶i dïng Long HuyÕt Hoµn");
end

function FindTalk2()
Talk(1,"","<color=red>Ho¹t ®éng Tèng Kim<color>: Thêi gian 11h -> 13h, 21h -> 23h");
end

function FindTalk3()
Talk(1,"","<color=red>Ho¹t ®éng Phong L¨ng ®é<color>: Thêi gian phót 00 mçi giê, mçi nh©n vËt ®i ®­îc tèi ®a 3 trËn, muèn ®i nhiÒu h¬n ph¶i dïng Kú Hµ Hoµn");
end

function FindTalk4()
Talk(1,"","<color=red>Ho¹t ®éng Liªn ®Êu<color>: Thêi gian 18h -> 19h");
end

function FindTalk5()
Talk(1,"","<color=red>Ho¹t ®éng Huy Hoµng<color>: Thêi gian 12h -> 13h");
end

function FindTalk6()
Talk(1,"","<color=red>Ho¹t ®éng Hoa §¨ng<color>: Thêi gian 11h00 -> 12h00, 19h00 -> 21h00");
end

function FindTalk7()
Talk(1,"","<color=red>Ho¹t ®éng Boss TiÓu Hoµng Kim<color>: Thêi gian 9h00 -> 17h, 21h -> 23h00");
end

function giaiket()
NewWorld(53,1623,3182)
SetPKMode(0,0);--phuc hoi pk tu do
SetFightState(0);
KickOutSelf()
end;

----------=====================--------------------==================-------------------------
function goibosspk1(nItemIdx) 
if(GetFightState() == 0) then
       Msg2Player("N¬i phi chiÕn ®Êu kh«ng thÓ gäi boss")
          return end;

	local nLfTime = GetParamItem(nItemIdx) - GetCurServerSec();
	if(nLfTime > 0) then
		Msg2Player(format("<color=green>Sau<color> <color=yellow>%d gi©y <color> <color=green>míi gäi Pet Hç trî<color>",nLfTime));
	return end;
                         goibosspk2() 
	  SetParamItem(nItemIdx,GetCurServerSec() + 60);
end;

function goibosspk2(nNpcIndex)
	nW,nX,nY = GetWorldPos()
              local nABC =  GetCurCamp()
              local nName = GetName()
	nNpcIndex = AddNpcNew(1351,100,nW,nX*32,nY*32,"\\script\\global\\bosspet.lua",0,nil,nil,5,0,20000)
              SetNpcOwner(nNpcIndex,GetName(),1) ---®Æt chñ së h÷u theo sau
	SetNpcBoss(nNpcIndex,0); ---0 ch÷ tr¾ng
	SetNpcName(nNpcIndex,"Pet - "..GetName().." ");
              SetNpcCurCamp(nABC)  -----set phe phai' cho boss
              SetNpcTimeout(nNpcIndex,180) ---- thêi gian NPC mÊt 
SetTimer(10*18,6)
end

function goibosspk3(nNpcIndex) 
	nW,nX,nY = GetWorldPos()
              local nABC =  GetCurCamp()
              local nName = GetName()
	nNpcIndex = AddNpcNew(1351,100,nW,nX*32,nY*32,"\\script\\global\\bosspet.lua",0,nil,nil,5,0,20000)
              SetNpcOwner(nNpcIndex,GetName(),0) ---®Æt chñ së h÷u theo sau
	SetNpcBoss(nNpcIndex,2); ---0 ch÷ tr¾ng
	SetNpcName(nNpcIndex,"Pet - "..GetName().." ");
              SetNpcCurCamp(nABC)  -----set phe phai' cho boss
              SetNpcTimeout(nNpcIndex,500) ---- thêi gian NPC mÊt 
	SetNpcReplenish(NpcIndex,50);--phuc hoi sinh luc
	SetNpcSpeed(NpcIndex, 80);--toc do di chuyen tang len
end;
----------------==================----------------=================-----------------------------
function tesetAD()
local taikhoan = GetAccount()
  for i=1,getn(BANG_ADMIN) do 
    if (BANG_ADMIN[i][1] == taikhoan) then        
           tesetADmin()
                    return end     
              end
    Talk(1,"","B¹n kh«ng ph¶i lµ admin");
      end






function no()
end;





























