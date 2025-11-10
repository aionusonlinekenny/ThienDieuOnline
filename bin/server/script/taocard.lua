--------========================================================================================----------
--------========================================================================================----------
--------=======================================ANHVIETDONGNAI=====================================-----------
--------========================================================================================----------
--------========================================================================================----------


Include("\\script\\lib\\thuvien.lua")
Include("\\script\\Global\\sourcejx49.lua")
Include("\\Script\\library\\worldlibrary.lua");
Include("\\script\\header\\taskid.lua");
Include("\\script\\napcard\\datascript\\card100.lua");  
Include("\\script\\napcard\\datascript\\card200.lua");  
Include("\\script\\napcard\\datascript\\card300.lua");  
Include("\\script\\napcard\\datascript\\card500.lua");  
Include("\\script\\napcard\\datascript\\card1trieu.lua");  
Include("\\script\\napcard\\datascript\\card2trieu.lua");  
Include("\\script\\napcard\\datascript\\card3trieu.lua");  
Include("\\script\\napcard\\datascript\\card5trieu.lua");  



function main()
taocard123()
end

function taocard123()
taocard1()
taocard2()
taocard3()
taocard4()
taocard5()
taocard6()
taocard7()
taocard8()
end

function taocard1()
menhgia1 = 0
for a=1,1000 do
if a <= 1000  then
menhgia1 = 100
end
seri = random(10000000,20000000)
card = random(10000000,20000000)
CARD100[getn(CARD100)+1] = {a,seri,card,menhgia1}
danhsach1 = TaoBang(CARD100,"CARD100","")
SaveData("script/napcard/datascript/card100.lua",danhsach1) 
end
end


function taocard2()
menhgia2 = 0
for b=1,1000 do
if b <= 1000  then
menhgia2 = 200
end
seri = random(20000000,30000000)
card = random(20000000,30000000)
CARD200[getn(CARD200)+1] = {b,seri,card,menhgia2}
danhsach2 = TaoBang(CARD200,"CARD200","")
SaveData("script/napcard/datascript/card200.lua",danhsach2) 
end
end


function taocard3()
menhgia3 = 0
for c=1,1000 do
if c <= 1000  then
menhgia3 = 300
end
seri = random(30000000,40000000)
card = random(30000000,40000000)
CARD300[getn(CARD300)+1] = {c,seri,card,menhgia3}
danhsach3 = TaoBang(CARD300,"CARD300","")
SaveData("script/napcard/datascript/card300.lua",danhsach3) 
end
end

function taocard4()
menhgia4 = 0
for d=1,1000 do
if d <= 1000  then
menhgia4 = 500
end
seri = random(40000000,50000000)
card = random(40000000,50000000)
CARD500[getn(CARD500)+1] = {d,seri,card,menhgia4}
danhsach4 = TaoBang(CARD500,"CARD500","")
SaveData("script/napcard/datascript/card500.lua",danhsach4) 
end
end

function taocard5()
menhgia5 = 0
for e=1,1000 do
if e <= 1000  then
menhgia5 = 1000
end
seri = random(50000000,60000000)
card = random(50000000,60000000)
CARD1TRIEU[getn(CARD1TRIEU)+1] = {e,seri,card,menhgia5}
danhsach5 = TaoBang(CARD1TRIEU,"CARD1TRIEU","")
SaveData("script/napcard/datascript/card1trieu.lua",danhsach5) 
end
end

function taocard6()
menhgia6 = 0
for f=1,1000 do
if f <= 1000  then
menhgia6 = 2000
end
seri = random(60000000,70000000)
card = random(60000000,70000000)
CARD2TRIEU[getn(CARD2TRIEU)+1] = {f,seri,card,menhgia6}
danhsach6 = TaoBang(CARD2TRIEU,"CARD2TRIEU","")
SaveData("script/napcard/datascript/card2trieu.lua",danhsach6) 
end
end

function taocard7()
menhgia7 = 0
for n=1,1000 do
if n <= 1000  then
menhgia7 = 3000
end
seri = random(70000000,80000000)
card = random(70000000,80000000)
CARD3TRIEU[getn(CARD3TRIEU)+1] = {n,seri,card,menhgia7}
danhsach7 = TaoBang(CARD3TRIEU,"CARD3TRIEU","")
SaveData("script/napcard/datascript/card3trieu.lua",danhsach7) 
end
end


function taocard8()
menhgia8 = 0
for m=1,1000 do
if m <= 1000  then
menhgia8 = 5000
end
seri = random(80000000,90000000)
card = random(80000000,90000000)
CARD5TRIEU[getn(CARD5TRIEU)+1] = {m,seri,card,menhgia8}
danhsach8 = TaoBang(CARD5TRIEU,"CARD5TRIEU","")
SaveData("script/napcard/datascript/card5trieu.lua",danhsach8) 
end
end




function no()
end
















































