Include("\\script\\lib\\worldlibrary2.lua");
Include("\\script\\header\\taskid.lua");



---------Kho Bau ---------
function main()
DelItem(10,0,2,55)
SetTask(TASK_TOADOX,0)
SetTask(TASK_TOADOY,0)
SetTask(TASK_MAP,0)
SetTask(TASK_VINHLACTRAN,SetNumber(GetTask(TASK_VINHLACTRAN),7,0)) -- loai ruong
sankhobau1122()
end

function sankhobau1122()
Say("HÁ TrÓ T©n ThÒ, V‚ L©m CTC", 10,
"Ta muËn t◊m kho b∏u!/khobau", 
"Ta chÿ ti÷n gh– qua th´i!/no");
end
	
function khobau()
if GetLevel() < 80 then
	Talk(1,"","<color=metal>Ki’m Kh∏ch: <color>ßºng c p 80 trÎ l™n mÌi c„ th” ti’p nhÀn nhi÷m vÙ")
	return end
	if GetLevel() >= 80 then
	local m = GetTask(TASK_TOADOX)
	local n = GetTask(TASK_TOADOY)
	local map = GetTask(TASK_MAP)
	local d = m + n + map
	if d >= 0 then

		AddItemID(AddItem(0,2,35,0,0,5,0,0))  

	local i = RANDOM(1,getn(KHOBAU))
	SetTask(TASK_TOADOX,KHOBAU[i][1])
	SetTask(TASK_TOADOY,KHOBAU[i][2])
	SetTask(TASK_MAP,KHOBAU[i][3])
	SetTask(TASK_VINHLACTRAN,SetNumber(GetTask(TASK_VINHLACTRAN),6,GetNumber(GetTask(TASK_VINHLACTRAN),6) +1)) -- so lan trong ngay
          
	Talk(1,"","<color=metal>Ki’m Kh∏ch: <color>Ng≠¨i h∑y Æ’n <color=red> "..KHOBAU[i][4].."<color> t◊m <color=yellow>B∏u vÀt<color> v“ cho ta.")
	return end
	end
end


KHOBAU={ --- toa do x,y,w cua kho bau
----Vinh lac tran ---
---x-----y----w-------Ten map---------
{1858,3115,99,"V‹nh Lπc Tr n"},  ---232,194
{1814,2893,99,"V‹nh Lπc Tr n"},  ---226,180
{1580,2827,99,"V‹nh Lπc Tr n"},  ---197,176
{1430,2971,99,"V‹nh Lπc Tr n"},  ---178,185
{1423,3214,99,"V‹nh Lπc Tr n"},  ---177,200
{1597,3480,99,"V‹nh Lπc Tr n"},  ---199,217
{1553,3631,99,"V‹nh Lπc Tr n"},   ---194,226
{1764,3552,99,"V‹nh Lπc Tr n"},   ---220,222
{1730,3369,99,"V‹nh Lπc Tr n"},   ---216,210
{1620,3394,99,"V‹nh Lπc Tr n"},  ---202,212
}





function no()
end;
