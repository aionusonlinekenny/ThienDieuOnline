--------========================================================================================----------
--------========================================================================================----------
--------=======================================ANHVIETDONGNAI=====================================-----------
--------========================================================================================----------
--------========================================================================================----------


Include("\\script\\lib\\worldlibrary.lua");
Include("\\script\\header\\npcfile.lua");
Include("\\script\\startgame\\traplib.lua");

Include("\\script\\startgame\\thon\\balanghuyen.lua");
Include("\\script\\startgame\\thon\\giangtanthon.lua");
Include("\\script\\startgame\\thon\\longmontran.lua");
Include("\\script\\startgame\\thon\\namnhactran.lua");
---------
Include("\\script\\startgame\\thon\\chutientran.lua");
Include("\\script\\startgame\\thon\\longtuyenthon.lua");
Include("\\script\\startgame\\thon\\daohuongthon.lua");
Include("\\script\\startgame\\thon\\vinhlactran.lua");
Include("\\script\\startgame\\thon\\thachcotran.lua");

Include("\\script\\startgame\\thanh\\tuongduong.lua");
Include("\\script\\startgame\\thanh\\bienkinh.lua");
Include("\\script\\startgame\\thanh\\daily.lua");
Include("\\script\\startgame\\thanh\\duongchau.lua");
Include("\\script\\startgame\\thanh\\laman.lua");
Include("\\script\\startgame\\thanh\\thanhdo.lua");
Include("\\script\\startgame\\thanh\\phuongtuong.lua");

Include("\\script\\startgame\\tinhnang\\daotaytuy.lua");
Include("\\script\\startgame\\tinhnang\\bdtongkimcao.lua");
Include("\\script\\startgame\\tinhnang\\dienvotruong.lua");
Include("\\script\\startgame\\tinhnang\\vantieu.lua"); --van tieu

Include("\\script\\startgame\\khac\\satthu.lua");--boss sat thu
Include("\\script\\startgame\\khac\\othermap.lua");--add npc linh tinh
Include("\\script\\startgame\\khac\\npcnhiemvu.lua");--add npc linh tinh
Include("\\script\\startgame\\monster\\trainingmap.lua");--add quai' luyen cong

Include("\\script\\startgame\\tinhnang\\visondao.lua");
Include("\\script\\feature\\thienbaokho\\addnpctbk.lua");

function main()
  addtrapbalang()
  addobjbalang()
  addtrapgiangtan()
  addobjgiangtan()
  addtraplongmon()
  addobjlongmon()
  addtrapnamnhac()
  addobjnamnhac()
  addtrapchutien()
  addtraplongtuyen()
  addtrapdaohuong()
  addtrapvinhlac()
  addtrapthachcotran()
  ---------------------------------------
  addtraptuongduong()
  addobjtuongduong()
  addtrapbienkinh()
  addobjbienkinh()
  addtrapdaily()
  addobjdaily()
  addtrapduongchau()
  addobjduongchau()
  addtraplaman()
  addobjlaman()
  addtrapthanhdo()
  addobjthanhdo()
  addtrapphuongtuong()
  addobjphuongtuong()
  -----------------------------------------
  traptkcaocap()
  objtkimcaocap()
  addtrapother()
  addobjother()
  addnpcthienbaokho()
  addtraptaytuy()
  addnpcbalang()
  addnpcgiangtan()
  addnpclongmon()
  addnpcnamnhac()
  addnpcchutien()
  addnpclongtuyen()
  addnpcdaohuong()
  addnpcvinhlac()
  addnpcthachcotran()
  addnpcvisondao()
  ------------------------------
  addnpctuongduong()
  addnpcbienkinh()
  addnpcdaily()
  addnpcduongchau()
  addnpclaman()
  addnpcthanhdo()
  addnpcphuongtuong()
  npctkimcaocap()
  --phan add tong hop cac loai khac
  addnpcsatthu()
  addnpcother()
  addnpctaytuy()
  addnpcdienvotruong()
  addnpcnhiemvu()
  addtrainingnpc()
  addnpcvantieu() -- van tieu
  addtrapvantieu() -- van tieu

end
