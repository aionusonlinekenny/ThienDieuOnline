/*****************************************************************************************
//	½çÃæ--Ñ¡ÔñÓÎÏ··þÎñÆ÷´°¿Ú
//	Copyright : Kingsoft 2002
//	Author	:   Wooy(Wu yue)
//	CreateTime:	2002-8-12
*****************************************************************************************/
#include "KWin32.h"
#include "KIniFile.h"
#include "../Elem/WndMessage.h"
#include "../Elem/Wnds.h"
#include "../UiShell.h"
#include "UiInit.h"
#include "UiLoginBg.h"
#include "UiConnectInfo.h"
#include "UiSelServer.h"
#include "../UiSoundSetting.h"
#include "../UiBase.h"
#include "../../Login/Login.h"
#include <crtdbg.h>
#define WND_N_LIST_ITEM_CLICK 1025
#define	SCHEME_INI_SELSERV				"UiSelServer.ini"
#define	SERVER_LIST_FILE				"\\Settings\\ServerList.ini"

KUiSelServer* KUiSelServer::m_pSelf = NULL;

//--------------------------------------------------------------------------
//	¹¦ÄÜ£º¹¹Ôìº¯Êý
//--------------------------------------------------------------------------
KUiSelServer::KUiSelServer()
{
	m_pServList = NULL;
	m_szLoginBg[0] = 0;
	m_bSelRegion = true;
	m_nRegionIndex = 0;
}

KUiSelServer::~KUiSelServer()
{
	m_List.SetContent(NULL, 0, 0, 0);
	if (m_pServList)
	{
		free(m_pServList);
		m_pServList = NULL;
	}
}

//--------------------------------------------------------------------------
//	¹¦ÄÜ£º´ò¿ª´°¿Ú£¬·µ»ØÎ¨Ò»µÄÒ»¸öÀà¶ÔÏóÊµÀý
//--------------------------------------------------------------------------
KUiSelServer* KUiSelServer::OpenWindow()
{
	if (m_pSelf == NULL)
	{
		m_pSelf = new KUiSelServer;
		if (m_pSelf)
			m_pSelf->Initialize();
	}
	if (m_pSelf)
	{
		UiSoundPlay(UI_SI_POPUP_OUTGAME_WND);
		KUiLoginBackGround::SetConfig(m_pSelf->m_szLoginBg);
		m_pSelf->m_bSelRegion = true;
		m_pSelf->GetList();
		m_pSelf->Show();
	}
	return m_pSelf;
}

//--------------------------------------------------------------------------
//	¹¦ÄÜ£º¹Ø±Õ´°¿Ú
//--------------------------------------------------------------------------
void KUiSelServer::CloseWindow(bool bDestroy)
{
	if (m_pSelf)
	{
		if (bDestroy)
		{
			m_pSelf->Destroy();
			m_pSelf = NULL;
		}
		else
		{
			m_pSelf->Hide();
		}
	}
}

//--------------------------------------------------------------------------
//	¹¦ÄÜ£º³õÊ¼»¯
//--------------------------------------------------------------------------
void KUiSelServer::Initialize()
{
	AddChild(&m_DanhSach);
	AddChild(&m_List);
	AddChild(&m_ScrollBar);
	AddChild(&m_RegionName);
	AddChild(&m_IpList);
	AddChild(&m_Login);
	AddChild(&m_Cancel);

	m_List.SetScrollbar(&m_ScrollBar);
	m_IpList.SetScrollbar(&m_ScrollBar);
	
	char Scheme[256];
	g_UiBase.GetCurSchemePath(Scheme, 256);
	LoadScheme(Scheme);
	Wnd_AddWindow(this, WL_TOPMOST);
	m_List.SetFocus(true);
    m_IpList.SetFocus(false);
}

void KUiSelServer::GetList()
{
	m_List.SetContent(NULL, 0, 0, 0);
	m_IpList.SetContent(NULL, 0, 0, 0);
	if (m_pServList)
	{
		free(m_pServList);
		m_pServList = NULL;
	}

	int nCount, nSel;
	if (m_bSelRegion)
	{
		m_pServList = g_LoginLogic.GetServerRegionList(nCount, m_nRegionIndex);
		if (m_pServList)
		{
			m_List.SetContent((BYTE*)m_pServList, nCount, sizeof(KLoginServer), 0);
			m_List.SetCurSel(m_nRegionIndex);
		}
	}
	g_LoginLogic.LoadLoginChoice();
	m_pServList = g_LoginLogic.GetServerList(m_nRegionIndex, nCount, nSel);
	if (m_pServList)
	{
		m_IpList.SetContent((BYTE*)m_pServList, nCount, sizeof(KLoginServer), 0);
		m_IpList.SetCurSel(nSel);
	}
}

//--------------------------------------------------------------------------
//	¹¦ÄÜ£ºÔØÈë´°¿ÚµÄ½çÃæ·½°¸
//--------------------------------------------------------------------------
void KUiSelServer::LoadScheme(const char* pScheme)
{
	char		Buff[128];
	KIniFile	Ini;
	sprintf(Buff, "%s\\%s", pScheme, SCHEME_INI_SELSERV);
	if (Ini.Load(Buff))
	{
		KWndShowAnimate::Init(&Ini, "Main");
		m_List     .Init(&Ini, "List");
		m_ScrollBar.Init(&Ini, "Scroll");
		m_RegionName.Init(&Ini, "NameBigger");
		m_IpList.Init(&Ini, "IpList");
		m_Login    .Init(&Ini, "Login");
		m_Cancel   .Init(&Ini, "Cancel");
		m_DanhSach.Init(&Ini, "DanhSach");
		m_DanhSach.SetText("Danh S¸ch M¸y Chñ");

		Ini.GetString("Main", "LoginBg", "", m_szLoginBg, sizeof(m_szLoginBg));
			KIniFile	File;
			if (File.Load(SERVER_LIST_FILE))
			{
				char	szKey[32], szBuffer[32];
				sprintf(szKey, "Region_%d", m_nRegionIndex);
				File.GetString("List", szKey, "", szBuffer, sizeof(szBuffer));
				if (szBuffer)
					m_RegionName.SetText(szBuffer);
			}
	}
}

//--------------------------------------------------------------------------
//	¹¦ÄÜ£º´°¿Úº¯Êý
//--------------------------------------------------------------------------
int KUiSelServer::WndProc(unsigned int uMsg, unsigned int uParam, int nParam)
{
    int nRet = 0;

    switch (uMsg)
    {
    case WND_N_BUTTON_CLICK:
        OnClickButton((KWndButton*)(KWndWindow*)uParam);
        break;
    /*case WND_N_SCORLLBAR_POS_CHANGED:
        m_List.SetTopItemIndex(nParam);
		m_IpList.SetTopItemIndex(nParam);
        break;*/
		case WND_N_SCORLLBAR_POS_CHANGED:
    if (m_List.GetFocus())
    {
        m_List.SetTopItemIndex(nParam);
        m_ScrollBar.SetValue(nParam); // Ð?ng b? giá tr? scrollbar
    }
    else if (m_IpList.GetFocus())
    {
        m_IpList.SetTopItemIndex(nParam);
        m_ScrollBar.SetValue(nParam); // Ð?ng b? giá tr? scrollbar
    }
    break;

    case WM_KEYDOWN:
        nRet = OnKeyDown(uParam);
        break;
    case WND_N_LIST_ITEM_CLICK:
        if (uParam == (unsigned int)(KWndWindow*)&m_List)
        {
            m_List.SetFocus(true);
            m_IpList.SetFocus(false);
        }
        else if (uParam == (unsigned int)(KWndWindow*)&m_IpList)
        {
            m_IpList.SetFocus(true);
            m_List.SetFocus(false);
            m_IpList.SetCurSel(nParam);
        }
        break;
    case WND_N_LIST_ITEM_D_CLICK:
        if (uParam == (unsigned int)(KWndWindow*)&m_IpList)
        {
            OnLogin();
        }
        break;
    default:
        nRet = KWndShowAnimate::WndProc(uMsg, uParam, nParam);
    }

    return nRet;
}
void KUiSelServer::PaintWindow()
{
	KWndShowAnimate::PaintWindow();
	int nCount, nSel;
	if (m_List.GetCurSel() != m_nRegionIndex)
	{
		m_nRegionIndex = m_List.GetCurSel();
		if (m_nRegionIndex >= 0)
		{
			KIniFile	File;
			if (File.Load(SERVER_LIST_FILE))
			{
				char	szKey[32], szBuffer[32];
				sprintf(szKey, "Region_%d", m_nRegionIndex);
				File.GetString("List", szKey, "", szBuffer, sizeof(szBuffer));
				if (szBuffer)
					m_RegionName.SetText(szBuffer);
			}
		}
		g_LoginLogic.LoadLoginChoice();
		m_pServList = g_LoginLogic.GetServerList(m_nRegionIndex, nCount, nSel);
		if (m_pServList)
		{
			m_IpList.SetContent((BYTE*)m_pServList, nCount, sizeof(KLoginServer), 0);
			m_IpList.SetCurSel(nSel);
		}
		else
			m_IpList.SetContent(NULL, 0, 0, 0);
	}
}

int KUiSelServer::OnKeyDown(unsigned int uKey)
{
    int nRet = 1;

    if (m_List.GetFocus()) // N?u tiêu di?m dang ? m_List
    {
        switch (uKey)
        {
        case VK_UP:
            nRet = m_List.GetCurSel();
            if (nRet > 0)
                m_List.SetCurSel(nRet - 1);
            else if (nRet < 0)
                m_List.SetCurSel(0);
            m_ScrollBar.SetScrollPos(m_List.GetTopItemIndex());
            break;
        case VK_DOWN:
            nRet = m_List.GetCurSel();
            if (nRet < m_List.GetCount() - 1)
                m_List.SetCurSel(nRet + 1);
            else if (nRet < 0)
                m_List.SetCurSel(0);
            m_ScrollBar.SetScrollPos(m_List.GetTopItemIndex());
            break;
        case VK_RIGHT: 
            m_List.SetFocus(false);
            m_IpList.SetFocus(true);
            break;
        default:
            nRet = 0;
            break;
        }
    }
    else if (m_IpList.GetFocus()) // N?u tiêu di?m dang ? m_IpList
    {
        switch (uKey)
        {
        case VK_UP:
            nRet = m_IpList.GetCurSel();
            if (nRet > 0)
                m_IpList.SetCurSel(nRet - 1);
            else if (nRet < 0)
                m_IpList.SetCurSel(0);
            break;
        case VK_DOWN:
            nRet = m_IpList.GetCurSel();
            if (nRet < m_IpList.GetCount() - 1)
                m_IpList.SetCurSel(nRet + 1);
            else if (nRet < 0)
                m_IpList.SetCurSel(0);
            break;
        case VK_LEFT: // Di chuy?n tiêu di?m tr? l?i m_List
            m_IpList.SetFocus(false);
            m_List.SetFocus(true);
            break;
        case VK_RETURN: // X? lý phím Enter khi tiêu di?m dang ? m_IpList
            OnLogin(); // G?i hàm dang nh?p
            break;
        default:
            nRet = 0;
            break;
        }
    }

    return nRet;
}

void KUiSelServer::OnClickButton(KWndButton* pBtn)
{
	if (pBtn == &m_Login)
		OnLogin();
	else if(pBtn == &m_Cancel)
		OnCancel();
}

//--------------------------------------------------------------------------
//	¹¦ÄÜ£ºµÇÂ½ÓÎÏ·ÊÀ½ç·þÎñÆ÷
//--------------------------------------------------------------------------
void KUiSelServer::OnLogin()
{
	int nSelServer = m_IpList.GetCurSel();
	if (m_pServList && nSelServer >= 0)
	{
		g_LoginLogic.SetAccountServer(m_pServList[nSelServer]);
		g_LoginLogic.CreateConnection(m_pServList[nSelServer].Address);
		KUiConnectInfo::OpenWindow(CI_MI_CONNECTING, LL_S_WAIT_INPUT_ACCOUNT);
		CloseWindow(false);
	}
}

//--------------------------------------------------------------------------
//	¹¦ÄÜ£ºÈ¡Ïû
//--------------------------------------------------------------------------
/*
void KUiSelServer::OnCancel()
{
	CloseWindow(true);
	KUiInit::OpenWindow(false, false);
}
*/
void KUiSelServer::OnCancel() {
    if (m_bSelRegion) {
        CloseWindow(true);
        KUiInit::OpenWindow(false, false);
    } else {
        m_bSelRegion = true;
        GetList();
    }
}