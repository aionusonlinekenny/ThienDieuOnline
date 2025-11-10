/*****************************************************************************************
//	ΩÁ√Ê--◊È∂”π‹¿ÌΩÁ√Ê
//	Copyright : Kingsoft 2002
//	Author	:   Wooy(Wu yue)
//	CreateTime:	2002-9-2
*****************************************************************************************/
#include "KWin32.h"
#include "KIniFile.h"
#include "../Elem/WndMessage.h"
#include "../elem/wnds.h"
#include "UiTeamManage.h"
#include "UiInformation.h"
#include "UiPlayerBar.h"
#include "../UiSoundSetting.h"
#include "../../../core/src/CoreShell.h"
#include "../UiBase.h"
#include <crtdbg.h>
#include "../../../core/src/GameDataDef.h"
#include "../elem/popupmenu.h"							  
extern iCoreShell *g_pCoreShell;

#define MANAGE_INI_TEAM             "UiTeamManage.ini"

KUiTeamManage *KUiTeamManage::m_pSelf = NULL;

//--------------------------------------------------------------------------
//	π¶ƒ‹£∫ππ‘Ï∫Ø ˝
//--------------------------------------------------------------------------
KUiTeamManage::KUiTeamManage() {
    memset(&m_Info, 0, sizeof(KUiPlayerTeam));
    m_pPlayersList = NULL;
    m_pNearbyPlayersList = NULL;
//	m_pNearbyTeamsList = NULL;
}

//--------------------------------------------------------------------------
//	π¶ƒ‹£∫»Áπ˚¥∞ø⁄’˝±ªœ‘ æ£¨‘Ú∑µªÿ µ¿˝÷∏’Î
//--------------------------------------------------------------------------
KUiTeamManage *KUiTeamManage::GetIfVisible() {
    if (m_pSelf && m_pSelf->IsVisible())
        return m_pSelf;
    return NULL;
}

//--------------------------------------------------------------------------
//	π¶ƒ‹£∫¥Úø™¥∞ø⁄£¨∑µªÿŒ®“ªµƒ“ª∏ˆ¿‡∂‘œÛ µ¿˝
//--------------------------------------------------------------------------
KUiTeamManage *KUiTeamManage::OpenWindow() {
    if (m_pSelf == NULL) {
        m_pSelf = new KUiTeamManage;
        if (m_pSelf)
            m_pSelf->Initialize();
    }
    if (m_pSelf) {
        UiSoundPlay(UI_SI_WND_OPENCLOSE);
        m_pSelf->UpdateData(NULL);
        m_pSelf->BringToTop();
        m_pSelf->Show();
    }
    return m_pSelf;
}

//--------------------------------------------------------------------------
//	π¶ƒ‹£∫πÿ±’¥∞ø⁄£¨Õ¨ ±ø…“‘—°‘Ú «∑Ò…æ≥˝∂‘œÛ µ¿˝
//--------------------------------------------------------------------------
void KUiTeamManage::CloseWindow() {
    if (m_pSelf) {
        m_pSelf->Clear();
        m_pSelf->Destroy();
        m_pSelf = NULL;
    }
}

//--------------------------------------------------------------------------
//	π¶ƒ‹£∫≥ı ºªØ
//--------------------------------------------------------------------------
void KUiTeamManage::Initialize() {
    AddChild(&m_LeaderAbility);
//	AddChild(&m_NearbyPlayerTab);
//	AddChild(&m_NearbyTeamTab);
    AddChild(&m_TeamMember);
    AddChild(&m_NearbyList);
    AddChild(&m_MemberScroll);
    AddChild(&m_NearbyScroll);

    AddChild(&m_btnInvite);
    AddChild(&m_btnKick);
//	AddChild(&m_btnApplyJoin);

    AddChild(&m_btnAppoint);
    AddChild(&m_btnLeave);
    AddChild(&m_btnDismiss);
    AddChild(&m_btnRefresh);
    AddChild(&m_btnCloseTeam);
    AddChild(&m_btnCancel);

    m_TeamMember.SetScrollbar(&m_MemberScroll);
    m_NearbyList.SetScrollbar(&m_NearbyScroll);
    m_MemberScroll.Enable(false);
    m_NearbyScroll.Enable(false);
//	m_btnApplyJoin.Hide();

    char Scheme[256];
    g_UiBase.GetCurSchemePath(Scheme, 256);
    LoadScheme(Scheme);

//	m_NearbyPlayerTab.CheckButton(true);
//	m_NearbyTeamTab.CheckButton(false);

    Wnd_AddWindow(this);
}

//--------------------------------------------------------------------------
//	π¶ƒ‹£∫‘ÿ»Î¥∞ø⁄µƒΩÁ√Ê∑Ω∞∏
//--------------------------------------------------------------------------
void KUiTeamManage::LoadScheme(class KIniFile *pSetting) {
    _ASSERT(pSetting);
    Init(pSetting, "Main");
    m_LeaderAbility.Init(pSetting, "LeaderAbility");
//	m_NearbyPlayerTab.Init(pSetting, "NearbyPlayerTab");
//	m_NearbyTeamTab	.Init(pSetting, "NearbyTeamTab");
    m_TeamMember.Init(pSetting, "MemberList");
    m_NearbyList.Init(pSetting, "NearbyList");
    m_MemberScroll.Init(pSetting, "MemberScroll");
    m_NearbyScroll.Init(pSetting, "NearbyScroll");

    m_btnInvite.Init(pSetting, "Invite");
    m_btnKick.Init(pSetting, "Kick");
//	m_btnApplyJoin	.Init(pSetting, "ApplyJoin");
    m_btnAppoint.Init(pSetting, "Appoint");
    m_btnLeave.Init(pSetting, "Leave");
    m_btnDismiss.Init(pSetting, "Dismiss");
    m_btnRefresh.Init(pSetting, "Refresh");
    m_btnCloseTeam.Init(pSetting, "CloseTeam");
    m_btnCancel.Init(pSetting, "Cancel");
}

//‘ÿ»ÎΩÁ√Ê∑Ω∞∏
void KUiTeamManage::LoadScheme(const char *pScheme) {
    if (m_pSelf && pScheme) {
        char Buff[128];
        KIniFile Ini;
        sprintf(Buff, "%s\\%s", pScheme, MANAGE_INI_TEAM);
        if (Ini.Load(Buff))
            m_pSelf->LoadScheme(&Ini);
    }
}

//--------------------------------------------------------------------------
//	π¶ƒ‹£∫¥∞ø⁄∫Ø ˝
//--------------------------------------------------------------------------
int KUiTeamManage::WndProc(unsigned int uMsg, unsigned int uParam, int nParam) {
    switch (uMsg) {
        case WND_N_BUTTON_CLICK:
            if (uParam == (unsigned int) (KWndWindow *) &m_btnInvite)
                OnInvite();
            else if (uParam == (unsigned int) (KWndWindow *) &m_btnKick)
                OnKick();
//		else if (uParam == (unsigned int)(KWndWindow*)&m_btnApplyJoin)
//			OnApplyJoin();
            if (uParam == (unsigned int) (KWndWindow *) &m_btnAppoint)
                OnAppoint();
            else if (uParam == (unsigned int) (KWndWindow *) &m_btnLeave ||
                     uParam == (unsigned int) (KWndWindow *) &m_btnDismiss)
                OnLeave();
            else if (uParam == (unsigned int) (KWndWindow *) &m_btnRefresh)
                OnRefresh();
//		else if (uParam == (unsigned int)(KWndWindow*)&m_NearbyPlayerTab)
//			SwitchNearbyMode(true);
//		else if (uParam == (unsigned int)(KWndWindow*)&m_NearbyTeamTab)
//			SwitchNearbyMode(false);
            else if (uParam == (unsigned int) (KWndWindow *) &m_btnCloseTeam)
                g_pCoreShell->TeamOperation(TEAM_OI_CLOSE, 0, nParam);
            else if (uParam == (unsigned int) (KWndWindow *) &m_btnCancel)
                CloseWindow();
            break;
        case WND_N_LIST_ITEM_SEL:
            if (uParam == (unsigned int) (KWndWindow *) &m_TeamMember)
                OnSelTeamMember(nParam);
            else if (uParam == (unsigned int) (KWndWindow *) &m_NearbyList)
                OnSelNearby(nParam);
            break;
        case WND_N_SCORLLBAR_POS_CHANGED:
            if (uParam == (unsigned int) (KWndWindow *) &m_MemberScroll)
                m_TeamMember.SetTopItemIndex(nParam);
            else if (uParam == (unsigned int) (KWndWindow *) &m_NearbyScroll)
                m_NearbyList.SetTopItemIndex(nParam);
            break;
        default:
            return KWndShowAnimate::WndProc(uMsg, uParam, nParam);
    }
    return 0;
}

void KUiTeamManage::OnSelTeamMember(int nItem) {
    bool bEnable = false;
    const char *pcszSelfName = KUiPlayerBar::SelfName();
    if (m_Info.bTeamLeader && pcszSelfName && nItem >= 0) {
        bEnable = (strcmp(pcszSelfName, m_pPlayersList[nItem].Name) != 0);
    }
    m_btnKick.Enable(bEnable);
    m_btnAppoint.Enable(bEnable);
}

void KUiTeamManage::OnSelNearby(int nItem) {
    bool bEnable = false;
//	if (m_NearbyPlayerTab.IsButtonChecked())
    {
        if (nItem >= 0 &&
            ((m_Info.cNumMember && m_Info.bTeamLeader) || m_Info.cNumMember == 0)) {
            bEnable = true;
        }
        m_btnInvite.Enable(bEnable);
    }
//	else if (m_NearbyTeamTab.IsButtonChecked())
//	{
//		if (nItem >= 0 && m_Info.cNumMember == 0)
//			bEnable = true;
//		m_btnApplyJoin.Enable(bEnable);
//	}
}

void KUiTeamManage::Clear() {
    m_TeamMember.SetContent(0, 0, 0, 0);
    m_NearbyList.SetContent(0, 0, 0, 0);

    m_btnInvite.Enable(false);
    m_btnKick.Enable(false);
//	m_btnApplyJoin.Enable(false);

    m_btnAppoint.Enable(false);
    m_btnLeave.Enable(false);
    m_btnDismiss.Enable(false);
    m_btnCloseTeam.CheckButton(false);

    memset(&m_Info, 0, sizeof(KUiPlayerTeam));
    if (m_pPlayersList) {
        free(m_pPlayersList);
        m_pPlayersList = NULL;
    }
    if (m_pNearbyPlayersList) {
        free(m_pNearbyPlayersList);
        m_pNearbyPlayersList = NULL;
    }
//	if (m_pNearbyTeamsList)
//	{
//		free (m_pNearbyTeamsList);
//		m_pNearbyTeamsList = NULL;
//	}
}

//--------------------------------------------------------------------------
//	π¶ƒ‹£∫∏¸–¬∂”ŒÈ–≈œ¢
//--------------------------------------------------------------------------
void KUiTeamManage::UpdateData(KUiPlayerTeam *pInfo) {
    Clear();

    KUiPlayerLeaderShip LeaderShip;
    memset(&LeaderShip, 0, sizeof(KUiPlayerLeaderShip));
    g_pCoreShell->GetGameData(GDI_PLAYER_LEADERSHIP,
                              (unsigned int) &LeaderShip, 0);
    m_LeaderAbility.SetIntText(LeaderShip.nLeaderShipLevel);

    if (pInfo)
        m_Info = *pInfo;
    else if (!g_pCoreShell->TeamOperation(TEAM_OI_GD_INFO, (unsigned int) &m_Info, 0)) {
        memset(&m_Info, 0, sizeof(m_Info));
    }

    if (m_Info.bTeamLeader) {
        m_btnCloseTeam.CheckButton(m_Info.bOpened);

        m_btnDismiss.Show();
        m_btnDismiss.Enable(true);
        m_btnLeave.Hide();
    } else {
        m_btnLeave.Show();
        m_btnLeave.Enable(m_Info.cNumMember > 0);
        m_btnDismiss.Hide();
    }

    if (m_Info.cNumMember > 0) {
        m_pPlayersList = (KUiPlayerItem *) malloc(sizeof(KUiPlayerItem) * (m_Info.cNumMember));
        if (m_pPlayersList) {
            int nCount = g_pCoreShell->TeamOperation(TEAM_OI_GD_MEMBER_LIST,
                                                     (unsigned int) m_pPlayersList, m_Info.cNumMember);
            _ASSERT(nCount == m_Info.cNumMember);
            m_TeamMember.SetContent((unsigned char *) m_pPlayersList, m_Info.cNumMember, sizeof(KUiPlayerItem),
                                    ((char *) &m_pPlayersList->Name - (char *) m_pPlayersList));
        } else {
            m_Info.cNumMember = 0;
        }
    }

    OnRefresh();
}

/*void KUiTeamManage::SwitchNearbyMode(bool bNearbyPlayer)
{
	m_NearbyPlayerTab.CheckButton(bNearbyPlayer);
	m_NearbyTeamTab.CheckButton(!bNearbyPlayer);

	if (bNearbyPlayer)
	{
		m_btnKick.Show();
		m_btnApplyJoin.Hide();
	}
	else
	{
		m_btnInvite.Enable(false);
		m_btnKick.Hide();
		m_btnApplyJoin.Show();
	}

	OnRefresh();
}*/

//--------------------------------------------------------------------------
//	π¶ƒ‹£∫∏¸–¬÷‹Œß∂”ŒÈµƒ¡–±Ì
//--------------------------------------------------------------------------
/*void KUiTeamManage::UpdateNearbyTeams(KUiTeamItem* pList, int nCount)
{
	if (m_pSelf == NULL)
		return;
	if (m_pSelf->m_NearbyTeamTab.IsButtonChecked())
	{
		m_pSelf->m_NearbyList.SetContent(NULL, 0, 0, 0);
		if (m_pSelf->m_pNearbyTeamsList)
		{
			free (m_pSelf->m_pNearbyTeamsList);
			m_pSelf->m_pNearbyTeamsList = NULL;
		}
		if (pList && nCount)
		{
			m_pSelf->m_pNearbyTeamsList = (KUiTeamItem*)malloc(sizeof(KUiTeamItem) * nCount);
			if (m_pSelf->m_pNearbyTeamsList)
			{
				memcpy(m_pSelf->m_pNearbyTeamsList, pList, sizeof(KUiTeamItem) * nCount);
				m_pSelf->m_NearbyList.SetContent((unsigned char*)m_pSelf->m_pNearbyTeamsList,
					nCount, sizeof(KUiTeamItem), (int)&(((KUiTeamItem*)0)->Leader.Name));
			}
		}
	}
}
*/
//--------------------------------------------------------------------------
//	π¶ƒ‹£∫»Œ√¸∂”≥§
//--------------------------------------------------------------------------
void KUiTeamManage::OnAppoint() {
    int nCurSel = m_TeamMember.GetCurSel();
    if (nCurSel >= 0)
        g_pCoreShell->TeamOperation(TEAM_OI_APPOINT, (unsigned int) &m_pPlayersList[nCurSel], 0);
}

//--------------------------------------------------------------------------
//	π¶ƒ‹£∫Ãﬂ≥˝
//--------------------------------------------------------------------------
void KUiTeamManage::OnKick() {
    int nCurSel = m_TeamMember.GetCurSel();
    if (nCurSel >= 0)
        g_pCoreShell->TeamOperation(TEAM_OI_KICK, (unsigned int) &m_pPlayersList[nCurSel], 0);
}

//--------------------------------------------------------------------------
//	π¶ƒ‹£∫…Í«Îº”»Î
//--------------------------------------------------------------------------
/*void KUiTeamManage::OnApplyJoin()
{
	int nCurSel = m_NearbyList.GetCurSel();
	if (nCurSel >= 0)
	{
		g_pCoreShell->OperationRequest(GOI_TEAM_APPLY,
			(unsigned int)&m_pNearbyTeamsList[nCurSel], 0);
	}
}*/

//--------------------------------------------------------------------------
//	π¶ƒ‹£∫—˚«Î
//--------------------------------------------------------------------------
void KUiTeamManage::OnInvite() {
    int nCurSel = m_NearbyList.GetCurSel();
    if (nCurSel >= 0) {
        if (m_Info.cNumMember == 0)
            g_pCoreShell->TeamOperation(TEAM_OI_CREATE, 0, 0);
        g_pCoreShell->TeamOperation(TEAM_OI_INVITE, (unsigned int) (&m_pNearbyPlayersList[nCurSel]), 0);
    }
}

void KUiTeamManage::OnRefresh() {
    m_NearbyList.SetContent(NULL, 0, 0, 0);
    if (m_pNearbyPlayersList) {
        free(m_pNearbyPlayersList);
        m_pNearbyPlayersList = NULL;
    }
//	if (m_pNearbyTeamsList)
//	{
//		free (m_pNearbyTeamsList);
//		m_pNearbyTeamsList = NULL;
//	}

//	if (m_NearbyPlayerTab.IsButtonChecked())
    {
        int nCount = g_pCoreShell->GetGameData(GDI_NEARBY_IDLE_PLAYER_LIST, 0, 0);
        if (nCount) {
            m_pNearbyPlayersList = (KUiPlayerItem *) malloc(sizeof(KUiPlayerItem) * nCount);
            if (m_pNearbyPlayersList) {
                g_pCoreShell->GetGameData(GDI_NEARBY_IDLE_PLAYER_LIST, (unsigned int) m_pNearbyPlayersList, nCount);
                m_NearbyList.SetContent((unsigned char *) m_pNearbyPlayersList, nCount,
                                        sizeof(KUiPlayerItem),
                                        ((char *) &m_pNearbyPlayersList->Name - (char *) m_pNearbyPlayersList));
            }
        }
    }
//	else
//	{
//		g_pCoreShell->OperationRequest(GOI_TEAM_COLLECT_NEARBY_LIST, 0, 0);
//	}
}

//--------------------------------------------------------------------------
//	π¶ƒ‹£∫¿Îø™
//--------------------------------------------------------------------------
void KUiTeamManage::OnLeave() {
    g_pCoreShell->TeamOperation(TEAM_OI_LEAVE, 0, 0);
}

//----------------------------------------------------------------------------------------------
//------------------------------ Ui Team Manage Bar --------------------------------------------
//----------------------------------------------------------------------------------------------

#define MANAGE_BAR_INI_TEAM    "UiTeamManageBar.ini"
#define MENU_DATA_SIZE(nNumItem)    (sizeof(KPopupMenuData) + (nNumItem - 1) * sizeof(KPopupMenuItem))
#define MENU_TEAM_BAR    0x00
char szArray_TeamBarPlayer[][32] =
{
    "Tin t¯c",
    "Theo sau",
    "T∏n g…u",
    "TrÙc xu t",
    "Nh≠Íng ch¯c",
};

KUiTeamManageBar *KUiTeamManageBar::m_pSelf = NULL;

//--------------------------------------------------------------------------
KUiTeamManageBar::KUiTeamManageBar() {
    m_nGameLoop = 0;
    m_bShowUI = true;
    memset(&m_Info, 0, sizeof(KUiPlayerTeam));
    m_pPlayersList = NULL;
}

//--------------------------------------------------------------------------
KUiTeamManageBar *KUiTeamManageBar::GetIfVisible() {
    if (m_pSelf && m_pSelf->IsVisible())
        return m_pSelf;
    return NULL;
}

//--------------------------------------------------------------------------
KUiTeamManageBar *KUiTeamManageBar::OpenWindow() {
    if (m_pSelf == NULL) {
        m_pSelf = new KUiTeamManageBar;
        if (m_pSelf)
            m_pSelf->Initialize();
    }
    if (m_pSelf) {
        m_pSelf->UpdateData(NULL);
        m_pSelf->BringToTop();
        m_pSelf->Show();
    }

    return m_pSelf;
}

//--------------------------------------------------------------------------
void KUiTeamManageBar::CloseWindow(BOOL bDestroy) {
    if (m_pSelf) {
        m_pSelf->ClearTeamManageBar();
        if (bDestroy)
        {
            m_pSelf->Destroy();
            m_pSelf = NULL;
        }
        else{
            m_pSelf->Hide();
       }
    }
}

//--------------------------------------------------------------------------
void KUiTeamManageBar::Initialize() {

        AddChild(&m_Box1);
    AddChild(&m_IconFaction1);
    AddChild(&m_RoleName1);
    AddChild(&m_Life1);
    AddChild(&m_Level1);
    AddChild(&m_Map1);

        AddChild(&m_Box2);
    AddChild(&m_IconFaction2);
    AddChild(&m_RoleName2);
    AddChild(&m_Life2);
    AddChild(&m_Level2);
    AddChild(&m_Map2);

        AddChild(&m_Box3);
    AddChild(&m_IconFaction3);
    AddChild(&m_RoleName3);
    AddChild(&m_Life3);
    AddChild(&m_Level3);
    AddChild(&m_Map3);

        AddChild(&m_Box4);
    AddChild(&m_IconFaction4);
    AddChild(&m_RoleName4);
    AddChild(&m_Life4);
    AddChild(&m_Level4);
    AddChild(&m_Map4);

        AddChild(&m_Box5);
    AddChild(&m_IconFaction5);
    AddChild(&m_RoleName5);
    AddChild(&m_Life5);
    AddChild(&m_Level5);
    AddChild(&m_Map5);

        AddChild(&m_Box6);
    AddChild(&m_IconFaction6);
    AddChild(&m_RoleName6);
    AddChild(&m_Life6);
    AddChild(&m_Level6);
    AddChild(&m_Map6);

        AddChild(&m_Box7);
    AddChild(&m_IconFaction7);
    AddChild(&m_RoleName7);
    AddChild(&m_Life7);
    AddChild(&m_Level7);
    AddChild(&m_Map7);


    AddChild(&m_CaptainFlag);
    AddChild(&m_ButtonShowHide);

    char Scheme[256];
    g_UiBase.GetCurSchemePath(Scheme, 256);
    LoadScheme(Scheme);

    Wnd_AddWindow(this);
}

//--------------------------------------------------------------------------
void KUiTeamManageBar::LoadScheme(class KIniFile *pSetting) {
    _ASSERT(pSetting);
    Init(pSetting, "Main");

        m_Box1.Init(pSetting, "Box1");
    m_IconFaction1.Init(pSetting, "IconFaction1");
    m_RoleName1.Init(pSetting, "RoleName1");
    m_Life1.Init(pSetting, "Life1");
    m_Level1.Init(pSetting, "Level1");
    m_Map1.Init(pSetting, "Map1");

        m_Box2.Init(pSetting, "Box2");
    m_IconFaction2.Init(pSetting, "IconFaction2");
    m_RoleName2.Init(pSetting, "RoleName2");
    m_Life2.Init(pSetting, "Life2");
    m_Level2.Init(pSetting, "Level2");
    m_Map2.Init(pSetting, "Map2");

        m_Box3.Init(pSetting, "Box3");
    m_IconFaction3.Init(pSetting, "IconFaction3");
    m_RoleName3.Init(pSetting, "RoleName3");
    m_Life3.Init(pSetting, "Life3");
    m_Level3.Init(pSetting, "Level3");
    m_Map3.Init(pSetting, "Map3");

        m_Box4.Init(pSetting, "Box4");
    m_IconFaction4.Init(pSetting, "IconFaction4");
    m_RoleName4.Init(pSetting, "RoleName4");
    m_Life4.Init(pSetting, "Life4");
    m_Level4.Init(pSetting, "Level4");
    m_Map4.Init(pSetting, "Map4");

        m_Box5.Init(pSetting, "Box5");
    m_IconFaction5.Init(pSetting, "IconFaction5");
    m_RoleName5.Init(pSetting, "RoleName5");
    m_Life5.Init(pSetting, "Life5");
    m_Level5.Init(pSetting, "Level5");
    m_Map5.Init(pSetting, "Map5");

        m_Box6.Init(pSetting, "Box6");
    m_IconFaction6.Init(pSetting, "IconFaction6");
    m_RoleName6.Init(pSetting, "RoleName6");
    m_Life6.Init(pSetting, "Life6");
    m_Level6.Init(pSetting, "Level6");
    m_Map6.Init(pSetting, "Map6");

        m_Box7.Init(pSetting, "Box7");
    m_IconFaction7.Init(pSetting, "IconFaction7");
    m_RoleName7.Init(pSetting, "RoleName7");
    m_Life7.Init(pSetting, "Life7");
    m_Level7.Init(pSetting, "Level7");
    m_Map7.Init(pSetting, "Map7");

    m_CaptainFlag.Init(pSetting, "CaptainFlag1");
    m_ButtonShowHide.Init(pSetting, "ButtonShowHide");

}

void KUiTeamManageBar::LoadScheme(const char *pScheme) {
    if (m_pSelf && pScheme) {
        char Buff[128];
        KIniFile Ini;
        sprintf(Buff, "%s\\%s", pScheme, MANAGE_BAR_INI_TEAM);
        if (Ini.Load(Buff))
            m_pSelf->LoadScheme(&Ini);
    }
}

//--------------------------------------------------------------------------
int KUiTeamManageBar::WndProc(unsigned int uMsg, unsigned int uParam, int nParam) {
    switch (uMsg) {
        case WND_N_BUTTON_CLICK:
            if (uParam == (unsigned int) (KWndWindow *) &m_ButtonShowHide)
                OnHideShow();
        else
        {
            int indexMenu = -1;
            if      (uParam == (unsigned int) (KWndWindow *) &m_Life1 || uParam == (unsigned int) (KWndWindow *) &m_IconFaction1) indexMenu = 0;
            else if (uParam == (unsigned int) (KWndWindow *) &m_Life2 || uParam == (unsigned int) (KWndWindow *) &m_IconFaction2) indexMenu = 1;
            else if (uParam == (unsigned int) (KWndWindow *) &m_Life3 || uParam == (unsigned int) (KWndWindow *) &m_IconFaction3) indexMenu = 2;
            else if (uParam == (unsigned int) (KWndWindow *) &m_Life4 || uParam == (unsigned int) (KWndWindow *) &m_IconFaction4) indexMenu = 3;
            else if (uParam == (unsigned int) (KWndWindow *) &m_Life5 || uParam == (unsigned int) (KWndWindow *) &m_IconFaction5) indexMenu = 4;
            else if (uParam == (unsigned int) (KWndWindow *) &m_Life6 || uParam == (unsigned int) (KWndWindow *) &m_IconFaction6) indexMenu = 5;
            else if (uParam == (unsigned int) (KWndWindow *) &m_Life7 || uParam == (unsigned int) (KWndWindow *) &m_IconFaction7) indexMenu = 6;

            if (indexMenu != -1)
                PopupTeamBarPlayer(indexMenu);
        }
        break;
        case WND_M_MENUITEM_SELECTED:
            if (uParam == (unsigned int) (KWndWindow *) this)
            {
                if (HIWORD(nParam) >= 0 && (short) (LOWORD(nParam)) >= 0) {
                    ActionPopupTeamBarPlayer(HIWORD(nParam), LOWORD(nParam));
                }
            }
        break;
        default:
            return KWndShowAnimate::WndProc(uMsg, uParam, nParam);
    }
    return 0;
}


void KUiTeamManageBar::ClearTeamManageBar()
{
    memset(&m_Info, 0, sizeof(KUiPlayerTeam));
    if (m_pPlayersList) {
        free(m_pPlayersList);
        m_pPlayersList = NULL;
    }
}

//--------------------------------------------------------------------------
void KUiTeamManageBar::UpdateData(KUiPlayerTeam *pInfo) {
    ClearTeamManageBar();
    int i;
    if (!m_bShowUI)
    {
        for (i = 0; i < MAX_TEAM_MEMBER; i++)
            HideInfo(i);
        return;
    }

    if (pInfo)
        m_Info = *pInfo;
    else if (!g_pCoreShell->TeamOperation(TEAM_OI_GD_INFO, (unsigned int) &m_Info, 0))
        memset(&m_Info, 0, sizeof(m_Info));
    //m_Info.cNumMember = 7;// debug111111111111111111111111
    if (m_Info.cNumMember > 0)
    {
        m_pPlayersList = (KUiPlayerItem *) malloc(sizeof(KUiPlayerItem) * (m_Info.cNumMember));
        if (m_pPlayersList)
        {
            int nCount = g_pCoreShell->TeamOperation(TEAM_OI_GD_MEMBER_LIST, (unsigned int)m_pPlayersList, m_Info.cNumMember);
           // nCount = 7;m_Info.cNumMember = 7;// debug1111111111111111111
            _ASSERT(nCount == m_Info.cNumMember);

            for (i = nCount; i < MAX_TEAM_MEMBER; i++)
                HideInfo(i);
            for (i = 0; i < nCount && i < MAX_TEAM_MEMBER; i++)
            {
                ShowInfo(i);
                DisplayInfo(i);// debug1111111111111111111
            }
        }
        else
        {
            m_Info.cNumMember = 0;
            CloseWindow(false);
        }
    }
    else
    {
        CloseWindow(false);
    }
}

void KUiTeamManageBar::Breathe()
{

    if (!m_bShowUI)
        return;

    m_nGameLoop++;
	if (m_nGameLoop != GAME_FPS)
        return;//1s refresh 1 lan 18*5 = 90

    m_nGameLoop = 0;
    m_pSelf->UpdateData(NULL);
}

void KUiTeamManageBar::OnHideShow()
{
    if ( m_bShowUI ) // show -> hide
    {
        m_ButtonShowHide.SetImage(ISI_T_SPR, "\\spr\\Ui3\\UiTeamManageBar\\team_show.spr");
        SetSize(130,30);
    }
    else// hide -> show
    {
        m_ButtonShowHide.SetImage(ISI_T_SPR, "\\spr\\Ui3\\UiTeamManageBar\\team_hide.spr");
        SetSize(130,350);
    }
    m_bShowUI = !m_bShowUI;

    UpdateData(NULL);
}

void KUiTeamManageBar::HideInfo(int index)
{
   // printf("HideInfo: %d \n" ,index );
    m_CaptainFlag.Hide();
    switch (index)
    {
    case 0:
        m_RoleName1.Hide();
        m_IconFaction1.Hide();
        m_Box1.Hide();
        m_Level1.Hide();
        m_Map1.Hide();
        m_Life1.Hide();
        break;
    case 1:
        m_RoleName2.Hide();
        m_IconFaction2.Hide();
        m_Box2.Hide();
        m_Level2.Hide();
        m_Map2.Hide();
        m_Life2.Hide();
        break;
    case 2:
        m_RoleName3.Hide();
        m_IconFaction3.Hide();
        m_Box3.Hide();
        m_Level3.Hide();
        m_Map3.Hide();
        m_Life3.Hide();
        break;
    case 3:
        m_RoleName4.Hide();
        m_IconFaction4.Hide();
        m_Box4.Hide();
        m_Level4.Hide();
        m_Map4.Hide();
        m_Life4.Hide();
        break;
    case 4:
        m_RoleName5.Hide();
        m_IconFaction5.Hide();
        m_Box5.Hide();
        m_Level5.Hide();
        m_Map5.Hide();
        m_Life5.Hide();
        break;
    case 5:
        m_RoleName6.Hide();
        m_IconFaction6.Hide();
        m_Box6.Hide();
        m_Level6.Hide();
        m_Map6.Hide();
        m_Life6.Hide();
        break;
    case 6:
        m_RoleName7.Hide();
        m_IconFaction7.Hide();
        m_Box7.Hide();
        m_Level7.Hide();
        m_Map7.Hide();
        m_Life7.Hide();
        break;
    default:
        break;
    }

}

void KUiTeamManageBar::ShowInfo(int index)
{
   // printf("HideInfo: %d \n" ,index );

    m_CaptainFlag.Show();
    switch (index)
    {
    case 0:
        m_RoleName1.Show();
        m_IconFaction1.Show();
        m_Box1.Show();
        m_Level1.Show();
        m_Map1.Show();
        m_Life1.Show();
        break;
    case 1:
        m_RoleName2.Show();
        m_IconFaction2.Show();
        m_Box2.Show();
        m_Level2.Show();
        m_Map2.Show();
        m_Life2.Show();
        break;
    case 2:
        m_RoleName3.Show();
        m_IconFaction3.Show();
        m_Box3.Show();
        m_Level3.Show();
        m_Map3.Show();
        m_Life3.Show();
        break;
    case 3:
        m_RoleName4.Show();
        m_IconFaction4.Show();
        m_Box4.Show();
        m_Level4.Show();
        m_Map4.Show();
        m_Life4.Show();
        break;
    case 4:
        m_RoleName5.Show();
        m_IconFaction5.Show();
        m_Box5.Show();
        m_Level5.Show();
        m_Map5.Show();
        m_Life5.Show();
        break;
    case 5:
        m_RoleName6.Show();
        m_IconFaction6.Show();
        m_Box6.Show();
        m_Level6.Show();
        m_Map6.Show();
        m_Life6.Show();
        break;
    case 6:
        m_RoleName7.Show();
        m_IconFaction7.Show();
        m_Box7.Show();
        m_Level7.Show();
        m_Map7.Show();
        m_Life7.Show();
        break;
    default:
        break;
    }

}

void KUiTeamManageBar::DisplayInfo(int index)
{

    if (index > MAX_TEAM_MEMBER - 1)
    return;
	char Buff[128];
	char BuffHe[128];
    char BuffIcon[256];
    char BuffLevel[10];
    char BuffMap[128];
	switch (m_pPlayersList[index].m_SM)
{
case 0:
    sprintf(BuffHe, "Thi’u L©m");
    break;
case 1:
    sprintf(BuffHe, "Thi™n V≠¨ng");
    break;
case 2:
    sprintf(BuffHe, "ß≠Íng M´n");
    break;
case 3:
    sprintf(BuffHe, "NgÚ ßÈc");
    break;		
case 4:
    sprintf(BuffHe, "Nga My");
    break;
case 5:
    sprintf(BuffHe, "ThÛy Y™n");
    break;
case 6:
    sprintf(BuffHe, "C∏i Bang");
    break;	
case 7:
    sprintf(BuffHe, "Thi™n Nh…n");
    break;
case 8:
    sprintf(BuffHe, "V‚ ßang");
    break;
case 9:
    sprintf(BuffHe, "C´n L´n");
    break;	
default:
    sprintf(BuffHe, "Ch≠a nhÀp ph∏i");
    break;
}	
    sprintf(Buff, "%s - %s", m_pPlayersList[index].Name, BuffHe);
    sprintf(BuffLevel, "%d", m_pPlayersList[index].m_Level);
    sprintf(BuffIcon, "\\spr\\Ui3\\UiTeamManageBar\\%d.spr", m_pPlayersList[index].m_SM);

   switch (m_pPlayersList[index].m_TP)
{
case 1:
    sprintf(BuffMap, "Ph≠Óng T≠Íng");
    break;

case 2:
    sprintf(BuffMap, "Hoa S¨n");
    break;

case 3:
    sprintf(BuffMap, "Ki’n C∏c T©y Bæc");
    break;

case 9:
    sprintf(BuffMap, "Tr≠Íng Giang Nguy™n ß«u");
    break;

case 11:
    sprintf(BuffMap, "Thµnh ß´");
    break;

case 13:
    sprintf(BuffMap, "Nga My Ph∏i");
    break;

case 25:
    sprintf(BuffMap, "ß≠Íng M´n");
    break;

case 37:
    sprintf(BuffMap, "Bi÷n Kinh");
    break;

case 41:
    sprintf(BuffMap, "PhÙc Ng≠u S¨n T©y");
    break;

case 49:
    sprintf(BuffMap, "Thi™n Nh…n Gi∏o");
    break;

case 53:
    sprintf(BuffMap, "Ba L®ng Huy÷n");
    break;

case 56:
    sprintf(BuffMap, "Hoµnh S¨n Ph∏i");
    break;

case 59:
    sprintf(BuffMap, "Thi™n V≠¨ng Bang");
    break;

case 70:
    sprintf(BuffMap, "VÚ L®ng S¨n");
    break;

case 75:
    sprintf(BuffMap, "Kh·a Lang ßÈng");
    break;

case 78:
    sprintf(BuffMap, "T≠¨ng D≠¨ng");
    break;

case 80:
    sprintf(BuffMap, "D≠¨ng Ch©u");
    break;

case 81:
    sprintf(BuffMap, "V‚ ßang Ph∏i");
    break;

case 90:
    sprintf(BuffMap, "PhÙc Ng≠u S¨n ß´ng");
    break;

case 92:
    sprintf(BuffMap, "ThÙc C≠¨ng S¨n");
    break;

case 93:
    sprintf(BuffMap, "Ti’n CÛc ßÈng");
    break;

case 99:
    sprintf(BuffMap, "Thπch CÊ Tr n");
    break;

case 100:
    sprintf(BuffMap, "Chu Ti™n Tr n");
    break;

case 101:
    sprintf(BuffMap, "ßπo H≠¨ng Th´n");
    break;

case 103:
    sprintf(BuffMap, "Thi’u L©m Ph∏i");
    break;

case 115:
    sprintf(BuffMap, "C∏i Bang");
    break;

case 121:
    sprintf(BuffMap, "Long M´n Tr n");
    break;

case 123:
    sprintf(BuffMap, "L∑o HÊ ßÈng");
    break;

case 124:
    sprintf(BuffMap, "C∏n Vi™n ßÈng");
    break;

case 125:
    sprintf(BuffMap, "L≠u Ti™n ßÈng");
    break;

case 131:
    sprintf(BuffMap, "C´n L´n ph∏i");
    break;

case 153:
    sprintf(BuffMap, "Thπch CÊ Tr n");
    break;

case 154:
    sprintf(BuffMap, "ThÛy Y™n M´n");
    break;

case 162:
    sprintf(BuffMap, "ßπi L˝");
    break;

case 163:
    sprintf(BuffMap, "∏c B∏ ßﬁa ßπo");
    break;

case 174:
    sprintf(BuffMap, "Long Tuy“n Th´n");
    break;

case 176:
    sprintf(BuffMap, "L©m An");
    break;

case 183:
    sprintf(BuffMap, "NgÚ ßÈc Gi∏o");
    break;

case 208:
    sprintf(BuffMap, "Thi™n Lao");
    break;

case 224:
    sprintf(BuffMap, "Sa Mπc ßﬁa Bi”u");
    break;

case 225:
    sprintf(BuffMap, "Sa Mπc 1");
    break;

case 226:
    sprintf(BuffMap, "Sa Mπc 2");
    break;

case 227:
    sprintf(BuffMap, "Sa Mπc 3");
    break;

case 242:
    sprintf(BuffMap, "ß∂o T»y TÒy");
    break;

case 320:
    sprintf(BuffMap, "Ch©n NÛi Tr≠Íng Bπch");
    break;

case 321:
    sprintf(BuffMap, "Tr≠Íng Bπch S¨n Nam");
    break;

case 322:
    sprintf(BuffMap, "Tr≠Íng Bπch S¨n Bæc");
    break;

case 325:
    sprintf(BuffMap, "B∏o danh TËng Kim");
    break;

case 336:
    sprintf(BuffMap, "Phong L®ng ßÈ");
    break;

case 337:
    sprintf(BuffMap, "Thuy“n PLß");
    break;
case 340:
    sprintf(BuffMap, "Mπc Cao QuÀt");
    break;
case 341:
    sprintf(BuffMap, "Mπng Bæc Th∂o Nguy™n");
    break;	
case 380:
    sprintf(BuffMap, "Hoµng Sa L©m Ngao");
    break;

case 393:
    sprintf(BuffMap, "Thi™n B∂o KhË");
    break;

case 396:
    sprintf(BuffMap, "HÈi Tr≠Íng Li™n ß u");
    break;

case 480:
	sprintf(BuffMap, "Th∏ch th¯c thÍi gian 1");
    break;
case 481:
	sprintf(BuffMap, "Th∏ch th¯c thÍi gian 2");
    break;
case 482:
	sprintf(BuffMap, "Th∏ch th¯c thÍi gian 3");
    break;
case 483:
	sprintf(BuffMap, "Th∏ch th¯c thÍi gian 4");
    break;
case 484:
	sprintf(BuffMap, "Th∏ch th¯c thÍi gian 5");
    break;
case 485:
	sprintf(BuffMap, "Th∏ch th¯c thÍi gian 6");
    break;
case 486:
	sprintf(BuffMap, "Th∏ch th¯c thÍi gian 7");
    break;
case 487:
	sprintf(BuffMap, "Th∏ch th¯c thÍi gian 8");
    break;
case 488:
	sprintf(BuffMap, "Th∏ch th¯c thÍi gian 9");
    break;
case 489:
    sprintf(BuffMap, "Khu v˘c V≠Ót ∂i");
    break;

default:
    sprintf(BuffMap, "Kh´ng x∏c Æﬁnh...");
    break;
}

    switch (index)
    {
    case 0:
        m_RoleName1.SetText(Buff);
        m_IconFaction1.SetImage(ISI_T_SPR, BuffIcon);
        m_Life1.Set2IntValue(m_pPlayersList[index].m_HP, m_pPlayersList[index].m_MHP);
        m_Level1.SetText(BuffLevel);
        m_Map1.SetText(BuffMap);
        break;
    case 1:
        m_RoleName2.SetText(Buff);
        m_IconFaction2.SetImage(ISI_T_SPR, BuffIcon);
        m_Life2.Set2IntValue(m_pPlayersList[index].m_HP, m_pPlayersList[index].m_MHP);
        m_Level2.SetText(BuffLevel);
        m_Map2.SetText(BuffMap);
        break;
    case 2:
        m_RoleName3.SetText(Buff);
        m_IconFaction3.SetImage(ISI_T_SPR, BuffIcon);
        m_Life3.Set2IntValue(m_pPlayersList[index].m_HP, m_pPlayersList[index].m_MHP);
        m_Level3.SetText(BuffLevel);
        m_Map3.SetText(BuffMap);
        break;
    case 3:
        m_RoleName4.SetText(Buff);
        m_IconFaction4.SetImage(ISI_T_SPR, BuffIcon);
        m_Life4.Set2IntValue(m_pPlayersList[index].m_HP, m_pPlayersList[index].m_MHP);
        m_Level4.SetText(BuffLevel);
        m_Map4.SetText(BuffMap);
        break;
    case 4:
        m_RoleName5.SetText(Buff);
        m_IconFaction5.SetImage(ISI_T_SPR, BuffIcon);
        m_Life5.Set2IntValue(m_pPlayersList[index].m_HP, m_pPlayersList[index].m_MHP);
        m_Level5.SetText(BuffLevel);
        m_Map5.SetText(BuffMap);
        break;
    case 5:
        m_RoleName6.SetText(Buff);
        m_IconFaction6.SetImage(ISI_T_SPR, BuffIcon);
        m_Life6.Set2IntValue(m_pPlayersList[index].m_HP, m_pPlayersList[index].m_MHP);
        m_Level6.SetText(BuffLevel);
        m_Map6.SetText(BuffMap);
        break;
    case 6:
        m_RoleName7.SetText(Buff);
        m_IconFaction7.SetImage(ISI_T_SPR, BuffIcon);
        m_Life7.Set2IntValue(m_pPlayersList[index].m_HP, m_pPlayersList[index].m_MHP);
        m_Level7.SetText(BuffLevel);
        m_Map7.SetText(BuffMap);
        break;
    default:
        break;
    }

}

void KUiTeamManageBar::PopupTeamBarPlayer(int index)
{
    //printf("PopupTeamBarPlayer [%d] uId: %d, nNpcId: %d \n" , index, m_pPlayersList[index].uId, m_Info.nNpcId);
    if (m_pPlayersList && m_pPlayersList[index].uId == m_Info.nNpcId) // click vµo b∂n th©n m◊nh
        return;

    int nActionDataCount = sizeof(szArray_TeamBarPlayer) / sizeof(szArray_TeamBarPlayer[0]);
    if (!m_Info.bTeamLeader)
       nActionDataCount -= 2;

    struct KPopupMenuData *pSelUnitMenu = (KPopupMenuData *) malloc(MENU_DATA_SIZE(nActionDataCount));
    if (pSelUnitMenu == NULL)
        return;

    KPopupMenu::InitMenuData(pSelUnitMenu, nActionDataCount);
    pSelUnitMenu->nNumItem = 0;
    pSelUnitMenu->usMenuFlag |= PM_F_AUTO_DEL_WHEN_HIDE;

    int x, y, i;
    for (i = 0; i < nActionDataCount; i++)
    {
        strncpy(pSelUnitMenu->Items[i].szData, szArray_TeamBarPlayer[i], sizeof(szArray_TeamBarPlayer[i]));
        pSelUnitMenu->Items[i].szData[sizeof(pSelUnitMenu->Items[i].szData) - 1] = 0;
        pSelUnitMenu->Items[i].uDataLen = strlen(pSelUnitMenu->Items[i].szData);
        pSelUnitMenu->nNumItem++;
    }

    switch (index)
    {
    case 0:
        m_RoleName1.GetAbsolutePos(&x, &y);
        break;
    case 1:
        m_RoleName2.GetAbsolutePos(&x, &y);
        break;
    case 2:
        m_RoleName3.GetAbsolutePos(&x, &y);
        break;
    case 3:
        m_RoleName4.GetAbsolutePos(&x, &y);
        break;
    case 4:
        m_RoleName5.GetAbsolutePos(&x, &y);
        break;
    case 5:
        m_RoleName6.GetAbsolutePos(&x, &y);
        break;
    case 6:
        m_RoleName7.GetAbsolutePos(&x, &y);
        break;
        m_RoleName1.GetAbsolutePos(&x, &y);
    default:
        break;
    }
    pSelUnitMenu->nX = x; pSelUnitMenu->nY = y;
    //printf("pSelUnitMenu %d/%d \n" , pSelUnitMenu->nX, pSelUnitMenu->nY);
    KPopupMenu::Popup(pSelUnitMenu, this, index);
}

void KUiTeamManageBar::ActionPopupTeamBarPlayer(int indexPlayer, int indexMenu)
{
    //printf("ActionPopupTeamBarPlayer Player: %d , Menu: %d\n" , indexPlayer, indexMenu);
    if ( !m_pPlayersList )
        return;
    //printf("    Name: %s, uId: %d , nIndex: %d\n" ,m_pPlayersList[indexPlayer].Name,  m_pPlayersList[indexPlayer].uId, m_pPlayersList[indexPlayer].nIndex);

    if (!g_pCoreShell)
        return;

    switch (indexMenu)
    {
        case 0: // "Tin t¯c",
            if (m_pPlayersList[indexPlayer].uId)
                g_pCoreShell->OperationRequest(GOI_VIEW_PLAYERITEM, (unsigned int) m_pPlayersList[indexPlayer].uId, 0);
            break;
        case 1: // "Theo sau",
			     g_pCoreShell->OperationRequest(GOI_FOLLOW_SOMEONE, (unsigned int) &m_pPlayersList[indexPlayer], 0);
            break;

        case 2: // "T∏n g…u",
                if (m_pPlayersList[indexPlayer].Name[0])
                    KUiPlayerBar::InputNameMsg(false, m_pPlayersList[indexPlayer].Name, true);
            break;
        case 3: // "TrÙc xu t",
                g_pCoreShell->TeamOperation(TEAM_OI_KICK, (unsigned int) &m_pPlayersList[indexPlayer], 0);
            break;
        case 4: // "Nh≠Íng ch¯c",
                g_pCoreShell->TeamOperation(TEAM_OI_APPOINT, (unsigned int) &m_pPlayersList[indexPlayer], 0);
            break;
        default:
            break;
    }
}