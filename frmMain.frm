VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Begin VB.Form frmMain 
   BorderStyle     =   1  '���� ����
   Caption         =   "����ǥ"
   ClientHeight    =   5205
   ClientLeft      =   150
   ClientTop       =   825
   ClientWidth     =   7350
   Icon            =   "frmMain.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   5205
   ScaleWidth      =   7350
   StartUpPosition =   3  'Windows �⺻��
   Begin TabDlg.SSTab SSTab1 
      Height          =   4815
      Left            =   120
      TabIndex        =   1
      Top             =   120
      Width           =   7095
      _ExtentX        =   12515
      _ExtentY        =   8493
      _Version        =   393216
      TabOrientation  =   1
      TabHeight       =   520
      TabCaption(0)   =   "����"
      TabPicture(0)   =   "frmMain.frx":0442
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "MonthView1"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      TabCaption(1)   =   "�ּҷ�"
      TabPicture(1)   =   "frmMain.frx":045E
      Tab(1).ControlEnabled=   0   'False
      Tab(1).ControlCount=   0
      TabCaption(2)   =   "�� ��"
      TabPicture(2)   =   "frmMain.frx":047A
      Tab(2).ControlEnabled=   0   'False
      Tab(2).ControlCount=   0
      Begin MSComCtl2.MonthView MonthView1 
         Height          =   4170
         Left            =   120
         TabIndex        =   2
         Top             =   120
         Width           =   6840
         _ExtentX        =   12065
         _ExtentY        =   7355
         _Version        =   393216
         ForeColor       =   -2147483630
         BackColor       =   -2147483633
         Appearance      =   0
         MonthColumns    =   3
         MonthRows       =   2
         ShowToday       =   0   'False
         StartOfWeek     =   20185089
         CurrentDate     =   43858
      End
   End
   Begin MSComctlLib.StatusBar sbStatusBar 
      Align           =   2  '�Ʒ� ����
      Height          =   270
      Left            =   0
      TabIndex        =   0
      Top             =   4935
      Width           =   7350
      _ExtentX        =   12965
      _ExtentY        =   476
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   3
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            AutoSize        =   1
            Object.Width           =   7779
            Text            =   "��¥�� �����ʽÿ�."
            TextSave        =   "��¥�� �����ʽÿ�."
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   6
            AutoSize        =   2
            TextSave        =   "2020-01-28"
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            AutoSize        =   2
            TextSave        =   "���� 4:33"
         EndProperty
      EndProperty
   End
   Begin VB.Menu mnuFile 
      Caption         =   "����(&F)"
      Begin VB.Menu mnuFileNew 
         Caption         =   "�� ����(&N)"
         Shortcut        =   ^N
      End
      Begin VB.Menu mnuFileOpen 
         Caption         =   "����(&O)..."
      End
      Begin VB.Menu mnuFileClose 
         Caption         =   "�ݱ�(&C)"
      End
      Begin VB.Menu mnuFileBar0 
         Caption         =   "-"
      End
      Begin VB.Menu mnuFileSave 
         Caption         =   "����(&S)"
      End
      Begin VB.Menu mnuFileSaveAs 
         Caption         =   "�ٸ� �̸����� ����(&A)..."
      End
      Begin VB.Menu mnuFileSaveAll 
         Caption         =   "��� ����(&L)"
      End
      Begin VB.Menu mnuFileBar1 
         Caption         =   "-"
      End
      Begin VB.Menu mnuFileProperties 
         Caption         =   "�Ӽ�(&I)"
      End
      Begin VB.Menu mnuFileBar2 
         Caption         =   "-"
      End
      Begin VB.Menu mnuFilePageSetup 
         Caption         =   "������ ����(&U)"
      End
      Begin VB.Menu mnuFilePrintPreview 
         Caption         =   "�μ� �̸�����(&V)"
      End
      Begin VB.Menu mnuFilePrint 
         Caption         =   "�μ�(&P)..."
      End
      Begin VB.Menu mnuFileBar3 
         Caption         =   "-"
      End
      Begin VB.Menu mnuFileSend 
         Caption         =   "������(&D)..."
      End
      Begin VB.Menu mnuFileBar4 
         Caption         =   "-"
      End
      Begin VB.Menu mnuFileMRU 
         Caption         =   ""
         Index           =   1
         Visible         =   0   'False
      End
      Begin VB.Menu mnuFileMRU 
         Caption         =   ""
         Index           =   2
         Visible         =   0   'False
      End
      Begin VB.Menu mnuFileMRU 
         Caption         =   ""
         Index           =   3
         Visible         =   0   'False
      End
      Begin VB.Menu mnuFileBar5 
         Caption         =   "-"
         Visible         =   0   'False
      End
      Begin VB.Menu mnuFileExit 
         Caption         =   "������(&X)"
      End
   End
   Begin VB.Menu mnuEdit 
      Caption         =   "����(&E)"
      Begin VB.Menu mnuEditUndo 
         Caption         =   "���� ���(&U)"
      End
      Begin VB.Menu mnuEditBar0 
         Caption         =   "-"
      End
      Begin VB.Menu mnuEditCut 
         Caption         =   "�߶󳻱�(&T)"
         Shortcut        =   ^X
      End
      Begin VB.Menu mnuEditCopy 
         Caption         =   "����(&C)"
         Shortcut        =   ^C
      End
      Begin VB.Menu mnuEditPaste 
         Caption         =   "�ٿ��ֱ�(&P)"
         Shortcut        =   ^V
      End
      Begin VB.Menu mnuEditPasteSpecial 
         Caption         =   "�����Ͽ� �ٿ��ֱ�(&S)..."
      End
   End
   Begin VB.Menu mnuView 
      Caption         =   "����(&V)"
      Begin VB.Menu mnuViewToolbar 
         Caption         =   "���� ����(&T)"
         Checked         =   -1  'True
         Visible         =   0   'False
      End
      Begin VB.Menu mnuViewStatusBar 
         Caption         =   "���� ǥ����(&B)"
         Checked         =   -1  'True
      End
      Begin VB.Menu mnuViewBar0 
         Caption         =   "-"
      End
      Begin VB.Menu mnuViewRefresh 
         Caption         =   "���� ��ħ(&R)"
      End
      Begin VB.Menu mnuViewOptions 
         Caption         =   "�ɼ�(&O)..."
      End
      Begin VB.Menu mnuViewWebBrowser 
         Caption         =   "�� ������(&W)"
         Visible         =   0   'False
      End
   End
   Begin VB.Menu mnuTools 
      Caption         =   "����(&T)"
      Begin VB.Menu mnuToolsOptions 
         Caption         =   "�ɼ�(&O)..."
      End
   End
   Begin VB.Menu mnuHelp 
      Caption         =   "����(&H)"
      Begin VB.Menu mnuHelpContents 
         Caption         =   "����(&C)"
      End
      Begin VB.Menu mnuHelpSearchForHelpOn 
         Caption         =   "ã��(&S)..."
      End
      Begin VB.Menu mnuHelpBar0 
         Caption         =   "-"
      End
      Begin VB.Menu mnuHelpAbout 
         Caption         =   "����(&A)"
      End
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Declare Function OSWinHelp% Lib "user32" Alias "WinHelpA" (ByVal hwnd&, ByVal HelpFile$, ByVal wCommand%, dwData As Any)

Private Sub Form_Load()
    Me.Left = GetSetting("Calendar", "Settings", "MainLeft", 1000)
    Me.Top = GetSetting("Calendar", "Settings", "MainTop", 1000)
    Me.Width = 7440
    Me.Height = 5970
End Sub


Private Sub Form_Unload(Cancel As Integer)
    Dim i As Integer


    'close all sub forms
    For i = Forms.Count - 1 To 1 Step -1
        Unload Forms(i)
    Next
    If Me.WindowState <> vbMinimized Then
        SaveSetting "Calendar", "Settings", "MainLeft", Me.Left
        SaveSetting "Calendar", "Settings", "MainTop", Me.Top
    End If
End Sub

Private Sub MonthView1_DateClick(ByVal DateClicked As Date)
    frmPlans.CurrentDate = DateClicked
    frmPlans.Show vbModal, Me
End Sub

Private Sub mnuHelpAbout_Click()
    frmAbout.Show vbModal, Me
End Sub

Private Sub mnuHelpSearchForHelpOn_Click()
    Dim nRet As Integer


    '�� ������Ʈ�� ���� ���� ������ ������ ����ڿ��� �޽����� ǥ���մϴ�.
    '����ڴ� [������Ʈ �Ӽ�] ��ȭ ���ڿ��� ���� ���α׷��� ����
    '���� ������ ������ �� �ֽ��ϴ�.
    If Len(App.HelpFile) = 0 Then
        MsgBox "���� ������ ǥ���� �� �����ϴ�. �� ������Ʈ�� ������ ������ �����ϴ�.", vbInformation, Me.Caption
    Else
        On Error Resume Next
        nRet = OSWinHelp(Me.hwnd, App.HelpFile, 261, 0)
        If Err Then
            MsgBox Err.Description
        End If
    End If

End Sub

Private Sub mnuHelpContents_Click()
    Dim nRet As Integer


    '�� ������Ʈ�� ���� ���� ������ ������ ����ڿ��� �޽����� ǥ���մϴ�.
    '����ڴ� [������Ʈ �Ӽ�] ��ȭ ���ڿ��� ���� ���α׷��� ����
    '���� ������ ������ �� �ֽ��ϴ�.
    If Len(App.HelpFile) = 0 Then
        MsgBox "���� ������ ǥ���� �� �����ϴ�. �� ������Ʈ�� ������ ������ �����ϴ�.", vbInformation, Me.Caption
    Else
        On Error Resume Next
        nRet = OSWinHelp(Me.hwnd, App.HelpFile, 3, 0)
        If Err Then
            MsgBox Err.Description
        End If
    End If

End Sub


Private Sub mnuToolsOptions_Click()
    '�۾�: 'mnuToolsOptions_Click' �ڵ带 �߰��Ͻʽÿ�.
    MsgBox "'mnuToolsOptions_Click' �ڵ带 �߰��Ͻʽÿ�."
End Sub

Private Sub mnuViewWebBrowser_Click()
    '�۾�: 'mnuViewWebBrowser_Click' �ڵ带 �߰��Ͻʽÿ�.
    MsgBox "'mnuViewWebBrowser_Click' �ڵ带 �߰��Ͻʽÿ�."
End Sub

Private Sub mnuViewOptions_Click()
    '�۾�: 'mnuViewOptions_Click' �ڵ带 �߰��Ͻʽÿ�.
    MsgBox "'mnuViewOptions_Click' �ڵ带 �߰��Ͻʽÿ�."
End Sub

Private Sub mnuViewRefresh_Click()
    '�۾�: 'mnuViewRefresh_Click' �ڵ带 �߰��Ͻʽÿ�.
    MsgBox "'mnuViewRefresh_Click' �ڵ带 �߰��Ͻʽÿ�."
End Sub

Private Sub mnuViewStatusBar_Click()
    mnuViewStatusBar.Checked = Not mnuViewStatusBar.Checked
    sbStatusBar.Visible = mnuViewStatusBar.Checked
End Sub

Private Sub mnuViewToolbar_Click()
    mnuViewToolbar.Checked = Not mnuViewToolbar.Checked
    tbToolBar.Visible = mnuViewToolbar.Checked
End Sub

Private Sub mnuEditPasteSpecial_Click()
    '�۾�: 'mnuEditPasteSpecial_Click' �ڵ带 �߰��Ͻʽÿ�.
    MsgBox "'mnuEditPasteSpecial_Click' �ڵ带 �߰��Ͻʽÿ�."
End Sub

Private Sub mnuEditPaste_Click()
    '�۾�: 'mnuEditPaste_Click' �ڵ带 �߰��Ͻʽÿ�.
    MsgBox "'mnuEditPaste_Click' �ڵ带 �߰��Ͻʽÿ�."
End Sub

Private Sub mnuEditCopy_Click()
    '�۾�: 'mnuEditCopy_Click' �ڵ带 �߰��Ͻʽÿ�.
    MsgBox "'mnuEditCopy_Click' �ڵ带 �߰��Ͻʽÿ�."
End Sub

Private Sub mnuEditCut_Click()
    '�۾�: 'mnuEditCut_Click' �ڵ带 �߰��Ͻʽÿ�.
    MsgBox "'mnuEditCut_Click' �ڵ带 �߰��Ͻʽÿ�."
End Sub

Private Sub mnuEditUndo_Click()
    '�۾�: 'mnuEditUndo_Click' �ڵ带 �߰��Ͻʽÿ�.
    MsgBox "'mnuEditUndo_Click' �ڵ带 �߰��Ͻʽÿ�."
End Sub

Private Sub mnuFileExit_Click()
    '���� ��ε��մϴ�.
    Unload Me

End Sub

Private Sub mnuFileSend_Click()
    '�۾�: 'mnuFileSend_Click' �ڵ带 �߰��Ͻʽÿ�.
    MsgBox "'mnuFileSend_Click' �ڵ带 �߰��Ͻʽÿ�."
End Sub

Private Sub mnuFilePrint_Click()
    '�۾�: 'mnuFilePrint_Click' �ڵ带 �߰��Ͻʽÿ�.
    MsgBox "'mnuFilePrint_Click' �ڵ带 �߰��Ͻʽÿ�."
End Sub

Private Sub mnuFilePrintPreview_Click()
    '�۾�: 'mnuFilePrintPreview_Click' �ڵ带 �߰��Ͻʽÿ�.
    MsgBox "'mnuFilePrintPreview_Click' �ڵ带 �߰��Ͻʽÿ�."
End Sub

Private Sub mnuFilePageSetup_Click()
    On Error Resume Next
    With dlgCommonDialog
        .DialogTitle = "������ ����"
        .CancelError = True
        .ShowPrinter
    End With

End Sub

Private Sub mnuFileProperties_Click()
    '�۾�: 'mnuFileProperties_Click' �ڵ带 �߰��Ͻʽÿ�.
    MsgBox "'mnuFileProperties_Click' �ڵ带 �߰��Ͻʽÿ�."
End Sub

Private Sub mnuFileSaveAll_Click()
    '�۾�: 'mnuFileSaveAll_Click' �ڵ带 �߰��Ͻʽÿ�.
    MsgBox "'mnuFileSaveAll_Click' �ڵ带 �߰��Ͻʽÿ�."
End Sub

Private Sub mnuFileSaveAs_Click()
    '�۾�: 'mnuFileSaveAs_Click' �ڵ带 �߰��Ͻʽÿ�.
    MsgBox "'mnuFileSaveAs_Click' �ڵ带 �߰��Ͻʽÿ�."
End Sub

Private Sub mnuFileSave_Click()
    '�۾�: 'mnuFileSave_Click' �ڵ带 �߰��Ͻʽÿ�.
    MsgBox "'mnuFileSave_Click' �ڵ带 �߰��Ͻʽÿ�."
End Sub

Private Sub mnuFileClose_Click()
    '�۾�: 'mnuFileClose_Click' �ڵ带 �߰��Ͻʽÿ�.
    MsgBox "'mnuFileClose_Click' �ڵ带 �߰��Ͻʽÿ�."
End Sub

Private Sub mnuFileOpen_Click()
    Dim sFile As String


    With dlgCommonDialog
        .DialogTitle = "����"
        .CancelError = False
        '�۾�: Common Dialog ��Ʈ���� �÷��׿� Ư���� �����մϴ�.
        .Filter = "��� ����(*.*)|*.*"
        .ShowOpen
        If Len(.FileName) = 0 Then
            Exit Sub
        End If
        sFile = .FileName
    End With
    '�۾�: �ڵ带 �߰��Ͽ� ���� �ִ� ������ ó���մϴ�.

End Sub

Private Sub mnuFileNew_Click()
    '�۾�: 'mnuFileNew_Click' �ڵ带 �߰��Ͻʽÿ�.
    MsgBox "'mnuFileNew_Click' �ڵ带 �߰��Ͻʽÿ�."
End Sub

