#pragma once
#include "../Elem/WndList.h"
#include "../Elem/WndScrollBar.h"
#include "../Elem/WndShowAnimate.h"

class KUiSelServer : protected KWndShowAnimate
{
public:
    static KUiSelServer* OpenWindow();
    static void CloseWindow(bool bDestroy);

private:
    KUiSelServer();
    ~KUiSelServer();
    void Initialize();
    void LoadScheme(const char* pScheme);
    int WndProc(unsigned int uMsg, unsigned int uParam, int nParam);
    void OnLogin();
    void OnCancel();
    int OnKeyDown(unsigned int uKey);
    void OnClickButton(KWndButton* pBtn);
    void GetList();
    void UpdateIpList(int nRegionIndex);
    void PaintWindow(); // Khai b¸o hµm PaintWindow
	bool m_bSelectingIpList;
	void LoadServerData();
    static KUiSelServer* m_pSelf;

    struct KLoginServer* m_pServList;
    KWndText32 m_DanhSach;
    KWndButton Baotri1, Baotri2;
    KWndList m_List;
    KWndScrollBar m_ScrollBar;
    KWndText32 m_RegionName;
    KWndList m_IpList;
    KWndButton m_Login;
    KWndButton m_Cancel;
    char m_szLoginBg[32];

    bool m_bSelRegion;
    int m_nRegionIndex;
};
