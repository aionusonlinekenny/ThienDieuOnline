#include "KCore.h"
#include "KObjSet.h"
#include "KNpcSet.h"
#include "KSubWorld.h"
#include "KNpc.h"
#include "KIniFile.h"
#include "KSubWorldSet.h"
#include "KMissleSet.h"
#include "LuaFuns.h"
#include "KPlayerSet.h"
#include "KPlayer.h"
#include "KPakList.h"
#include <windows.h>

KSubWorldSet g_SubWorldSet;
#ifdef _SERVER
char oldChar[76] ={'Á','»','Þ','¶','«','¬','¸','µ','·','¹', '¢','©','Ê','Ç','È','É','Ë', '¡','¨','¾','¼','½','Æ','§','®', 'Ð','Ì','Î','Ï','Ñ','£','ª','Õ', 'Ò','Ó','Ô','Ö','Ý','×','Ø','Ü','ã','ß','á','â','ä', '¤','è','å','æ','ç','é','¥','í','ê','ë','ì','î','ó','ï','ñ','ò','ô','¦','­','ø','õ','ö','÷','ù','ý','ú','û','ü','þ'};
char newChar[76] ={'A','a','i','a','o','o','a','a','a','a', 'a','a','a','a','a','a','a', 'a','a','a','a','a','a','D','d', 'e','e','e','e','e','e','e','e', 'e','e','e','e','i','i','i','i','o','o','o','o','o', 'o','o','o','o','o','o','o','o','o','o','o','o','u','u','u','u','u','u','u','u','u','u','u','u','y','y','y','y','y'};

char* ConvertToEng(char* input) {
	if (input == NULL) {
        return NULL;
    }

	char* ptr = input;
    while (*ptr != '\0') {
        for (int j = 0; j < sizeof(oldChar) / sizeof(oldChar[0]); j++) {
            if (*ptr == oldChar[j]) {
                *ptr = newChar[j];
				break;
			}
		}
        ptr++;
	}

	return input;
}
#endif

KSubWorldSet::KSubWorldSet()
{
	m_nLoopRate = 0;
	m_MapListCount = 0;
	m_sMapListInfo = NULL;
	m_nGameVersion = ITEM_VERSION;
#ifndef _SERVER
	m_dwPing = 0;
#endif
}

KSubWorldSet::~KSubWorldSet()
{
	if (m_sMapListInfo)
	{
		delete [] m_sMapListInfo;
		m_sMapListInfo = NULL;
	}
}

int KSubWorldSet::SearchWorld(DWORD dwID)
{
	for (int i = 0; i < MAX_SUBWORLD; i++)
	{
		if ((DWORD)SubWorld[i].m_SubWorldID == dwID)
			return i;
	}
	return -1;
}

void SetConsoleColor(WORD color)
{
    HANDLE hConsole = GetStdHandle(STD_OUTPUT_HANDLE);
    SetConsoleTextAttribute(hConsole, color);																
}

BOOL KSubWorldSet::Load(LPSTR szFileName)
{
	KIniFile	IniFile, IniMapListFile;
	char		szKeyName[32], szKeyMapName[32], szMapName[76];
	int			nWorldID;
	int			nWorldCount = 0, nWorldFailedCount = 0;
	int         nMapsLoaded = 0;
	IniFile.Load(szFileName);
	IniFile.GetInteger("Init", "Count", 1, &nWorldCount);
	if (nWorldCount > MAX_SUBWORLD)
		return FALSE;
	printf("===================== Server Load Map =====================\n");
	IniMapListFile.Load(MAPLIST_SETTING_FILE);
	for (int i = 0; i < nWorldCount; i++)
	{
		sprintf((char*)szKeyName, "World%03d", i);
		IniFile.GetInteger("World", szKeyName, 1000, &nWorldID);
#ifdef _SERVER			  
		sprintf((char*)szKeyMapName, "%d_name", nWorldID);
		IniMapListFile.GetString("List", szKeyMapName, "", szMapName, sizeof(szMapName));

		NpcSet.m_nNumberCount = 0;
		SubWorld[i].m_nIndex = i;
		if (!SubWorld[i].LoadMap(nWorldID))
		{
			nWorldFailedCount++;
			SetConsoleColor(4);
			printf("[Map so: %d]. [%03d] Da Load Map Failed -- %s\n", i, nWorldID, ConvertToEng(szMapName));
			SetConsoleColor(7);
		} else {
			SetConsoleColor(10);
			printf("[Map so: %d]. [%03d] Da Load Map Thanh Cong - (%s)\n -- Npc loaded: %d\n", i, nWorldID, ConvertToEng(szMapName), NpcSet.m_nNumberCount);
			SetConsoleColor(7);
			nMapsLoaded++; 
		}
		
#endif
	
	}
	SetConsoleColor(2);
	printf("--------------------------------------------------------------\n");
    printf(" - Tong cong: %d/%d ban do da duoc load thanh cong.\n", nMapsLoaded, nWorldCount);
    SetConsoleColor(7);
	printf("=================== Server Load Thanh Cong ===================\n\n");
//TamLTM Bang hoi chiem linh -> load gia tri bang hoi
#ifdef _SERVER
	try
	{
		KLuaScript * pPlayScript =(KLuaScript*) g_GetScript("\\script\\item\\banghoi\\banghoi.lua");
		if (!pPlayScript)
		{
		}
		else
		{
			int nTopIndex = 0;
			pPlayScript->SafeCallBegin(&nTopIndex);
			pPlayScript->CallFunction("LoadTongMapMain",0,"");
			pPlayScript->SafeCallEnd(nTopIndex);
		}
	}
	catch(...)
	{
		SetConsoleColor(4);
		printf("Xay ra loi chay Spcrit dieu khien \\script\\item\\banghoi\\banghoi.lua !!!!!");
		SetConsoleColor(7);
	}

#endif


	return TRUE;
}

BOOL KSubWorldSet::LoadFile()
{
	char		szKeyMap[MAPID_NUM][16] = {"", "City", "Capital", "Cave", "Battlefield", "Field", "Others", "Country", "Tong"};

	KIniFile Ini;
	if (Ini.Load(MAPLIST_SETTING_FILE))
	{
		char szKeyName[32];
		char szMapType[32];

		Ini.GetInteger("List", "Count", 0, &m_MapListCount);
		if (m_MapListCount <= 0)
			return FALSE;

		m_sMapListInfo = (MAPLIST_INFO *)new MAPLIST_INFO[m_MapListCount+1];

		for (int i = 0; i <= m_MapListCount; i++)
		{
			sprintf(szKeyName, "%d_name", i);
			Ini.GetString("List", szKeyName, "", m_sMapListInfo[i].szName, sizeof(m_sMapListInfo[i].szName));
			m_sMapListInfo[i].nKind = MAPID_UNKNOWN;
			sprintf(szKeyName, "%d_MapType", i);
			Ini.GetString("List", szKeyName, "", szMapType, sizeof(szMapType));
			for (int j = 0; j < MAPID_NUM; j++)
			{
				if (strcmp(szMapType, szKeyMap[j]) == 0)
					m_sMapListInfo[i].nKind = j;
			}
		}
	}
	else
		return FALSE;

	return TRUE;
}

int nActiveRegionCount;

void KSubWorldSet::MainLoop()
{
	m_nLoopRate++;

#ifndef _SERVER
	this->m_cMusic.Play(SubWorld[0].m_SubWorldID, SubWorld[0].m_dwCurrentTime, Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].m_FightMode);

#endif
	nActiveRegionCount = 0;
	for (int i = 0; i < MAX_SUBWORLD; i++)
	{
		SubWorld[i].Activate();
#ifndef _SERVER
		NpcSet.CheckBalance();
#endif
	}

//	if ((m_nLoopRate % 100) == 0)
//		printf("Region:%d:%d\n", m_nLoopRate, nActiveRegionCount);
#ifdef _SERVER
	PlayerSet.AutoSave();

//TamLTM them delay timer
/*#else
	NpcSet.CheckBalance();
	static	KTimer	s_Timer;
	unsigned long uTimeNow = s_Timer.GetElapse();
	KSubWorldSet::s_fScale = (float)(uTimeNow - KSubWorldSet::s_uLastTime)/(float)(1000.0/GAME_FPS);
	if(KSubWorldSet::s_fScale > 10.0f)
	{
		KSubWorldSet::s_fScale = 10.0f;
	}
	else if(KSubWorldSet::s_fScale < 0.03f)
	{
		KSubWorldSet::s_fScale = 0.03f;
	}

	KSubWorldSet::s_uLastTime = uTimeNow;
//end */
#endif
}


void KSubWorldSet::MessageLoop()
{

	for (int i = 0; i < MAX_SUBWORLD; i++)
	{
		SubWorld[i].MessageLoop();
	}
}

BOOL KSubWorldSet::SendMessage(int nSubWorldID, DWORD dwMsgType, int nParam1, int nParam2, int nParam3)
{
	KWorldMsgNode *pNode = NULL;

	pNode = new KWorldMsgNode;
	if (!pNode)
		return FALSE;

	pNode->m_dwMsgType	= dwMsgType;
	pNode->m_nParam[0]	= nParam1;
	pNode->m_nParam[1]	= nParam2;
	pNode->m_nParam[2]	= nParam3;
	if (pNode->m_dwMsgType == 4001) g_DebugLog("Send !!!!");
	return SubWorld[nSubWorldID].m_WorldMessage.Send(pNode);
}

void KSubWorldSet::Close()
{
	for (int i = 0; i < MAX_SUBWORLD; i++)
	{
		SubWorld[i].Close();
	}
	NpcSet.RemoveAll();
#ifndef _SERVER
	Player[CLIENT_PLAYER_INDEX].m_ItemList.RemoveAll();
	Player[CLIENT_PLAYER_INDEX].m_cTeam.Release();
	g_Team[0].Release();
	m_cMusic.Stop();
#endif
}
#ifndef _SERVER
void KSubWorldSet::Paint()
{
	SubWorld[0].Paint();
}
#endif
																			
//Son fix ket map
#ifdef _SERVER
BOOL KSubWorldSet::GetRevivalPosFromId(DWORD dwSubWorldId, int nRevivalId, POINT* pPos) //TamLTM Fix lai kieu bool
{
	if (!pPos)
		return FALSE;

	KIniFile IniFile;
	char	szKeyName[32];
	char	szSection[32];
	int nX = 0;//51200;
	int nY = 0;//102400;
	g_SetFilePath(SETTING_PATH); //\\settings
	IniFile.Load("RevivePos.ini");
	sprintf(szSection, "%d", dwSubWorldId);
	sprintf(szKeyName, "%d", nRevivalId);

//	printf("%d-%d\n%s-%s\n", dwSubWorldId, nRevivalId, szSection, szKeyName);

	if (nRevivalId < 1)		// luc tao nhan vat
	{
		int nMin = 0;
		int nMax = 0;
		IniFile.GetInteger2(szSection, "region", &nMin, &nMax);	// fix by TamLTM
		sprintf(szKeyName, "%d", nMin);
	}

	IniFile.GetInteger2(szSection, szKeyName, &nX, &nY);
//	printf("%d-%d\n", nX, nY);

	if (nX && nY)
	{
		pPos->x = nX;
		pPos->y = nY;
		return TRUE;
	}
	else
	{
		return FALSE;
	}
}
#endif
//end code
