--||Author:	Ken Nguyen
--||Date:	08/11/2013
--||FileName: worldlibrary.lua
--||Feaure:	thu vien tong hop cua server
--||Description:	You are missing in my heart
Include("\\script\\startgame\\npcposarray.lua");
--Loai ITEM-----------------
ITEM_NORMAL	= 0	--Xanh trang'
ITEM_VIOLET	= 1	--Tim'
ITEM_GOLD	= 2	--Hoang` kim
ITEM_GREEN	= 3 --Luc. Ngan^
--Kieu ITEM-----------------
trangbi			= 0		--quan ao' giay dep' vu khi', v.v.v
duocpham		= 1		--mau' mana
vatdung			= 2		--using tools
nguyenlieu		= 3		--materials
vatphamnv		= 4		--questkey
vatphamsukien	= 5		--eventitem
--Cac room chua vat pham----
ROOME	= 0		--hanh trang
ROOMW	= 1		--ruong chua do
ROOMW1	= 2		--ruong mo rong 1
ROOMW2	= 3		--ruong mo rong 2
ROOMW3	= 4		--ruong mo rong 3
ROOMI	= 5		--4 o phim tat
ROOMEX	= 6		--tui hanh trang
ROOMC	= 7		--kham nam
--Cac vi tri dat item-------
POSH	= 1		--Tay cam`
POSE	= 2		--Trang bi tren nguoi nhan vat
POSROOME= 3		--Hanh trang
POSW	= 4		--ruong chua do
POSW1	= 5     --ruong mo rong 1
POSW2	= 6     --ruong mo rong 2
POSW3	= 7     --ruong mo rong 3
POSI	= 8		--4 o phim tat
POSEX	= 9     --tui hanh trang
POSC	= 10    --kham nam
--Cac phan tren co the------
PARTKHOI		= 0
PARTYPHUC		= 1
PARTDAI			= 2
PARTVUKHI		= 3
PARTGIAY		= 4
PARTBAOTAY		= 5
PARTHANGLIEN	= 6
PARTNHANTREN	= 7
PARTNHANDUOI	= 8
PARTNGOCBOI		= 9
PARTNGUA		= 10
PARTMATNA		= 11
PARTPHIPHONG	= 12
PARTAN			= 13
PARTTRANGSUC	= 14
--Phe phai---------------
nguoimoi	= 0
chinhphai	= 1
taphai		= 2
trunglap	= 3
xuatsu		= 4
--Ngu hanh--------------
hekim	= 0
hemoc	= 1
hethuy	= 2
hehoa	= 3
hetho	= 4
vohe	= 5
---------------------
--                  1     2      3    4   5      6        7        8           9            10      11    12
function AddNpcNew(nId,nLevel, nMap, nX, nY, szScript, nCurCamp, szName,  bBarrierCheck, szSeries, nExp, nLife,
--                      13         14       15
					nReplenish, nAttackR, nDefend,			--phuc hoi sinh luc | do chinh xac | ne tranh
--                      16          17
					nMinDamage, nMaxDamage,					--sat thuong nho nhat/lon nhat
--                      18
					nNoAppend,								--Tinh damage tren skill
--                      19           20           21
					nReviveTime, nHitRecover, nBossType,	--Thoi gian phuc sinh, thoi gian phuc hoi, kieu boss
--                      22
					DropRateFile)							--File ty le rot do`
	   	mapindex = SubWorldID2Idx(nMap)
		npcid = nId
    	npclvl = nLevel
    	bBarrier = 0
		if(bBarrierCheck~=nil) then
    		bBarrier = bBarrierCheck;
    	end
	local nNpcId = AddNpc(npcid,npclvl,mapindex,nX,nY,bBarrier);
	
    if(nCurCamp~=nil) then	
		SetNpcCurCamp(nNpcId, nCurCamp);
	end
	if(szName~=nil) then	
		SetNpcName(nNpcId, szName);
		end
	if(szSeries~=nil) then	
		SetNpcSer(nNpcId, szSeries);
		end
	if(nExp~=nil) then	
		SetNpcExp(nNpcId, nExp, 1);
		end
	if(nLife~=nil) then	
		SetNpcLife(nNpcId, nLife, 1);--set luon mau' nguyen thuy~
		end
	if(nReplenish~=nil) then	
		SetNpcReplenish(nNpcId, nReplenish, 1);
		end
	if(nAttackR~=nil) then	
		SetNpcAR(nNpcId, nAttackR, 1);
		end
	if(nDefend~=nil) then	
		SetNpcDefense(nNpcId, nDefend, 1);
		end
	if(nMinDamage~=nil and nMaxDamage~=nil) then	
		SetNpcDamage(nNpcId, nMinDamage, nMaxDamage);
		end
	if(nNoAppend~=nil) then	
		SetNpcCancelDmg(nNpcId, nNoAppend);
		end
	if(nReviveTime~=nil) then	
		SetNpcRevTime(nNpcId, nReviveTime);
		end
	if(nHitRecover~=nil) then	
		SetNpcHitRecover(nNpcId, nHitRecover, 1);
		end
	if(nBossType~=nil) then	
		SetBoss(nNpcId, nBossType);
		end
	if(DropRateFile~=nil) then	
		SetNpcDropScript(nNpcId, DropRateFile);
		end
	if(szScript~=nil) then
    		SetNpcScript(nNpcId, szScript);
    	end
	return nNpcId
end;
--                                                      1     2      3    4   5      6        7        8           9            10      11    12
function AddNpcAuto(nArray, nRegionX, nRegionY, ArrayNpcId,nLevel, nMap, nX, nY, szScript, nCurCamp, szName,  bBarrierCheck, szSeries, nExp, nLife,
--                      13         14       15
					nReplenish, nAttackR, nDefend,			--phuc hoi sinh luc | do chinh xac | ne tranh
--                      16          17
					nMinDamage, nMaxDamage,					--sat thuong nho nhat/lon nhat
--                      18
					nNoAppend,								--Tinh damage tren skill
--                      19           20           21
					nReviveTime, nHitRecover, nBossType,	--Thoi gian phuc sinh, thoi gian phuc hoi, kieu boss
--                      22			  23
					DropRateFile, nMissionAdd)				--File ty le rot do`
	
	local nNpcIdx;
	local nRandNum = getn(ArrayNpcId);
	for y=1,nRegionY-nY+1 do
	for x=1,floor((nRegionX-nX+2)/2) do
	for i=1,16 do
	for j=1,16 do
		if(NPCPOSARRAY[nArray][i][j] > 0) then
		nNpcIdx = AddNpcNew(ArrayNpcId[RANDOM(1,nRandNum)],nLevel, nMap,(((nX+(x-1)*2)*8)+(j-1))*32,(((nY+(y-1))*16)+(i-1))*32,szScript, nCurCamp, szName,  bBarrierCheck, szSeries, nExp, nLife,
					nReplenish, nAttackR, nDefend,	
					nMinDamage, nMaxDamage,			
					nNoAppend, nReviveTime, nHitRecover, nBossType,
					DropRateFile)
			if(nMissionAdd ~= nil) then
			AddMSNpc(nMissionAdd,nNpcIdx);
			end
		end
	end
	end
	end
	end
end;

function GetFactionEx()
local F = "";
	if GetFaction() == "C¸i Bang" then F = "CB"	return F end
	if GetFaction() == "Thiªn NhÉn Gi¸o" then F = "TN"	return F end
	if GetFaction() == "ThiÕu L©m Ph¸i" then F = "TL"	return F end
	if GetFaction() == "Thiªn V­¬ng Bang" then F = "TV"	return F end
	if GetFaction() == "§­êng M«n" then F = "DM"	return F end
	if GetFaction() == "Ngò §éc Gi¸o" then F = "ND"	return F end
	if GetFaction() == "Nga My Ph¸i" then F = "NM"	return F end
	if GetFaction() == "Thóy Yªn M«n" then F = "TY"	return F end
	if GetFaction() == "Vâ §ang Ph¸i" then F = "VD"	return F end
	if GetFaction() == "C«n L«n Ph¸i" then F = "CL"	return F end
	if GetFaction() == "Hoa S¬n Ph¸i" then F = "HS"	return F end
		return F
end;

function SetFactionEx(szFac)
	if szFac == "CB"		then SetFaction("C¸i Bang" 					)	return end
	if szFac == "TN"		then SetFaction("Thiªn NhÉn Gi¸o" 		)	return end
	if szFac == "TL"		then SetFaction("ThiÕu L©m Ph¸i" 		)	return end
	if szFac == "TV" 	then SetFaction("Thiªn V­¬ng Bang" 	)	return end
	if szFac == "DM"	then SetFaction("§­êng M«n" 				)	return end
	if szFac == "ND"	then SetFaction("Ngò §éc Gi¸o" 			)	return end
	if szFac == "NM"	then SetFaction("Nga My Ph¸i" 			)	return end
	if szFac == "TY"		then SetFaction("Thóy Yªn M«n" 		)	return end
	if szFac == "VD"	then SetFaction("Vâ §ang Ph¸i" 			)	return end
	if szFac == "CL"		then SetFaction("C«n L«n Ph¸i" 			)	return end
	if szFac == "HS"		then SetFaction("Hoa S¬n Ph¸i" 			)	return end
end;

function AddItemGold(nRow, nLuck)
	local nDetail = nRow - 2
	local nLucky = 0
	if(nLuck~=nil) then	
		nLucky = nLuck
	end
	return AddItem(ITEM_GOLD,trangbi,nDetail,0,0,0,nLucky,0)
end;

function AddItemViolet(nDetail, nParti, nLevel, nSeries, nLine)
	return AddItem(ITEM_VIOLET,trangbi,nDetail,nParti,nLevel,nSeries,nLine,0)
end;

function AddItemBlue(nDetail, nParti, nLevel, nSeries, nLuck,lv1,lv2,lv3,lv4,lv5,lv6)
	local elv1,elv2,elv3,elv4,elv5,elv6 = 0,0,0,0,0,0;
	if(lv1~=nil) then	
		elv1 = lv1
	end
	if(lv2~=nil) then	
		elv2 = lv2
	end
	if(lv3~=nil) then	
		elv3 = lv3
	end
	if(lv4~=nil) then	
		elv4 = lv4
	end
	if(lv5~=nil) then	
		elv5 = lv5
	end
	if(lv6~=nil) then	
		elv6 = lv6
	end
	return AddItem(ITEM_NORMAL,trangbi,nDetail,nParti,nLevel,nSeries,nLuck,elv1,elv2,elv3,elv4,elv5,elv6)
end;

function AddQuestKey(nDetail, nCount, nLevel, nSeries)
	local detail = 0
	local count = 1
	local level = 0
	local series = 5
	if(nDetail~=nil) then	
		detail = nDetail
	end
	if(nCount~=nil) then	
		count = nCount
	end
	if(nLevel~=nil) then	
		level = nLevel
	end
	if(nSeries~=nil) then	
		series = nSeries
	end
	return AddItem(ITEM_NORMAL,vatphamnv,detail,0,level,series,count,0)
end;

function AddTool(nDetail, nCount, nLevel, nSeries)
	local detail = 0
	local count = 1
	local level = 0
	local series = 5
	if(nDetail~=nil) then	
		detail = nDetail
	end
	if(nCount~=nil) then	
		count = nCount
	end
	if(nLevel~=nil) then	
		level = nLevel
	end
	if(nSeries~=nil) then	
		series = nSeries
	end
	return AddItem(ITEM_NORMAL,vatdung,detail,0,level,series,count,0)
end;

function AddMat(nDetail, nCount, nLevel, nSeries, nProp)
	local detail = 0
	local count = 1
	local level = 0
	local series = 5
	local prop = 0
	if(nDetail~=nil) then	
		detail = nDetail
	end
	if(nCount~=nil) then	
		count = nCount
	end
	if(nLevel~=nil) then	
		level = nLevel
	end
	if(nSeries~=nil) then	
		series = nSeries
	end
	if(nProp~=nil) then	
		prop = nProp
	end
	return AddItem(ITEM_NORMAL,nguyenlieu,detail,0,level,series,count,prop)
end;

function AddEventItem(nDetail, nCount, nLevel, nSeries)
	local detail = 0
	local count = 1
	local level = 0
	local series = 5
	if(nDetail~=nil) then	
		detail = nDetail
	end
	if(nCount~=nil) then	
		count = nCount
	end
	if(nLevel~=nil) then	
		level = nLevel
	end
	if(nSeries~=nil) then	
		series = nSeries
	end
	return AddItem(ITEM_NORMAL,vatphamsukien,detail,0,level,series,count,0)
end;

function AddTrapEx1(nMap, nBX, nBY, nDistance, szScript)
	local nX,nY = nBX,nBY;
	for i=0,nDistance do
		AddTrap(nMap, (nX + i)*32, (nY - i)*32, szScript)
	end
	nX = nX - 1;
	for i=0,nDistance do
		AddTrap(nMap, (nX + i)*32, (nY - i)*32, szScript)
	end
end;

function AddTrapEx2(nMap, nBX, nBY, nDistance, szScript)
	local nX,nY = nBX,nBY;
	for i=0,nDistance do
		AddTrap(nMap, (nX + i)*32, (nY + i)*32, szScript)
	end
	nY = nY - 1;
	for i=0,nDistance do
		AddTrap(nMap, (nX + i)*32, (nY + i)*32, szScript)
	end
end;

function AddTrapEx3(nMap, nBX, nBY, nDistance, szScript)
	local nX,nY = nBX,nBY;
	for i=0,nDistance do
		AddTrap(nMap, nX*32, (nY + i)*32, szScript)
	end
	nX = nX - 1;
	for i=0,nDistance do
		AddTrap(nMap, nX*32, (nY + i)*32, szScript)
	end
end;

function AddTrapEx4(nMap, nBX, nBY, nDistance, szScript)
	local nX,nY = nBX,nBY;
	for i=0,nDistance do
		AddTrap(nMap, (nX + i)*32, nY*32, szScript)
	end
	nY = nY - 1;
	for i=0,nDistance do
		AddTrap(nMap, (nX + i)*32, nY*32, szScript)
	end
end;
