VERSION 5.00
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Begin VB.Form frmOptions 
   BackColor       =   &H80000003&
   BorderStyle     =   3  '크기 고정 대화 상자
   Caption         =   "환경 설정"
   ClientHeight    =   4635
   ClientLeft      =   -75
   ClientTop       =   1665
   ClientWidth     =   8250
   Icon            =   "frmOptions.frx":0000
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4635
   ScaleWidth      =   8250
   ShowInTaskbar   =   0   'False
   StartUpPosition =   1  '소유자 가운데
   WhatsThisButton =   -1  'True
   WhatsThisHelp   =   -1  'True
   Begin VB.CommandButton cmdOptionHelp 
      Caption         =   "도움말(&H)..."
      Height          =   375
      Left            =   6360
      TabIndex        =   16
      Top             =   2040
      Width           =   1335
   End
   Begin VB.CommandButton Command2 
      Cancel          =   -1  'True
      Caption         =   "취소"
      Height          =   375
      Left            =   6360
      TabIndex        =   0
      Top             =   1320
      Width           =   1335
   End
   Begin VB.CommandButton Command1 
      Caption         =   "확인"
      Default         =   -1  'True
      Height          =   375
      Left            =   6360
      TabIndex        =   1
      Top             =   840
      Width           =   1335
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   4095
      Left            =   120
      TabIndex        =   2
      Top             =   120
      Width           =   7935
      _ExtentX        =   13996
      _ExtentY        =   7223
      _Version        =   393216
      Tabs            =   8
      TabsPerRow      =   4
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      BackColor       =   -2147483645
      TabCaption(0)   =   "화면 표시"
      TabPicture(0)   =   "frmOptions.frx":0442
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame8"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "Frame1"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).Control(2)=   "Frame10"
      Tab(0).Control(2).Enabled=   0   'False
      Tab(0).Control(3)=   "Frame14"
      Tab(0).Control(3).Enabled=   0   'False
      Tab(0).ControlCount=   4
      TabCaption(1)   =   "사용자 데이터"
      TabPicture(1)   =   "frmOptions.frx":045E
      Tab(1).ControlEnabled=   0   'False
      Tab(1).Control(0)=   "Frame2"
      Tab(1).Control(1)=   "Frame3"
      Tab(1).ControlCount=   2
      TabCaption(2)   =   "표준"
      TabPicture(2)   =   "frmOptions.frx":047A
      Tab(2).ControlEnabled=   0   'False
      Tab(2).Control(0)=   "Frame4"
      Tab(2).Control(1)=   "Frame11"
      Tab(2).ControlCount=   2
      TabCaption(3)   =   "검사"
      TabPicture(3)   =   "frmOptions.frx":0496
      Tab(3).ControlEnabled=   0   'False
      Tab(3).Control(0)=   "Label9"
      Tab(3).Control(1)=   "Frame6"
      Tab(3).ControlCount=   2
      TabCaption(4)   =   "사용자 분류"
      TabPicture(4)   =   "frmOptions.frx":04B2
      Tab(4).ControlEnabled=   0   'False
      Tab(4).Control(0)=   "Label8"
      Tab(4).Control(1)=   "Label11"
      Tab(4).Control(2)=   "Label14"
      Tab(4).Control(3)=   "txtCategory"
      Tab(4).Control(4)=   "cmdAddNewCate"
      Tab(4).Control(5)=   "cmdDelSelCate"
      Tab(4).Control(6)=   "cmdClearCates"
      Tab(4).Control(7)=   "lvCustomCates"
      Tab(4).Control(8)=   "lvGroups"
      Tab(4).Control(9)=   "txtNewGroup"
      Tab(4).Control(10)=   "cmdClearGroups"
      Tab(4).Control(11)=   "cmdAddNewGroup"
      Tab(4).Control(12)=   "cmdDelGroup"
      Tab(4).ControlCount=   13
      TabCaption(5)   =   "테마"
      TabPicture(5)   =   "frmOptions.frx":04CE
      Tab(5).ControlEnabled=   0   'False
      Tab(5).Control(0)=   "Frame7"
      Tab(5).ControlCount=   1
      TabCaption(6)   =   "비밀번호"
      TabPicture(6)   =   "frmOptions.frx":04EA
      Tab(6).ControlEnabled=   0   'False
      Tab(6).Control(0)=   "chkPasswordRequired"
      Tab(6).Control(1)=   "Frame5"
      Tab(6).ControlCount=   2
      TabCaption(7)   =   "소리"
      TabPicture(7)   =   "frmOptions.frx":0506
      Tab(7).ControlEnabled=   0   'False
      Tab(7).Control(0)=   "cmdPlayRT"
      Tab(7).Control(1)=   "cmdPlayNS"
      Tab(7).Control(2)=   "Frame34"
      Tab(7).Control(3)=   "Frame12"
      Tab(7).Control(4)=   "Label12"
      Tab(7).ControlCount=   5
      Begin VB.Frame Frame14 
         Caption         =   "언어"
         Height          =   615
         Left            =   6120
         TabIndex        =   80
         Top             =   2520
         Width           =   1455
         Begin VB.ComboBox cmbLanguage 
            Height          =   300
            Left            =   120
            Style           =   2  '드롭다운 목록
            TabIndex        =   81
            Top             =   240
            Width           =   1215
         End
      End
      Begin VB.Frame Frame10 
         Caption         =   "테마"
         Height          =   735
         Left            =   120
         TabIndex        =   77
         Top             =   3240
         Width           =   7455
         Begin VB.CommandButton cmdTheSet 
            Caption         =   "테마(&T)..."
            Height          =   375
            Left            =   6120
            TabIndex        =   78
            Top             =   240
            Width           =   1215
         End
         Begin VB.Label Label13 
            Caption         =   "테마를 적용하려면 다음 단추를 누르십시오."
            Height          =   255
            Left            =   120
            TabIndex        =   79
            Top             =   300
            Width           =   4215
         End
      End
      Begin VB.CommandButton cmdPlayRT 
         Caption         =   "듣기(&R)"
         Height          =   320
         Left            =   -70680
         TabIndex        =   76
         Top             =   3080
         Width           =   1335
      End
      Begin VB.CommandButton cmdPlayNS 
         Caption         =   "듣기(&N)"
         Height          =   320
         Left            =   -70680
         TabIndex        =   75
         Top             =   1640
         Width           =   1335
      End
      Begin VB.CheckBox chkPasswordRequired 
         Caption         =   "프로그램을 시작할 때 암호 입력 필요"
         Height          =   255
         Left            =   -74760
         TabIndex        =   74
         Top             =   720
         Width           =   3255
      End
      Begin VB.Frame Frame34 
         Caption         =   "일정 알림음"
         Height          =   1335
         Left            =   -74880
         TabIndex        =   61
         Top             =   720
         Width           =   5895
         Begin VB.Frame Frame9 
            BorderStyle     =   0  '없음
            Height          =   975
            Left            =   120
            TabIndex        =   64
            Top             =   240
            Width           =   5655
            Begin VB.PictureBox grpNotificationContainer 
               Appearance      =   0  '평면
               BorderStyle     =   0  '없음
               ForeColor       =   &H80000008&
               Height          =   975
               Left            =   0
               ScaleHeight     =   975
               ScaleWidth      =   5415
               TabIndex        =   66
               Top             =   0
               Width           =   5415
               Begin VB.OptionButton optNotificationSound 
                  Caption         =   "삐이이-"
                  Height          =   255
                  Index           =   1
                  Left            =   1680
                  TabIndex        =   73
                  Top             =   0
                  Width           =   1575
               End
               Begin VB.OptionButton optNotificationSound 
                  Caption         =   "삐- 삐-"
                  Height          =   255
                  Index           =   0
                  Left            =   0
                  TabIndex        =   67
                  Top             =   0
                  Width           =   1575
               End
            End
            Begin VB.VScrollBar VScroll1 
               Enabled         =   0   'False
               Height          =   975
               Left            =   5400
               Max             =   1
               TabIndex        =   65
               Top             =   0
               Width           =   255
            End
         End
      End
      Begin VB.Frame Frame12 
         Caption         =   "알람음"
         Height          =   1335
         Left            =   -74880
         TabIndex        =   62
         Top             =   2160
         Width           =   5895
         Begin VB.VScrollBar VScroll2 
            Enabled         =   0   'False
            Height          =   975
            Left            =   5520
            Max             =   1
            TabIndex        =   69
            Top             =   240
            Width           =   255
         End
         Begin VB.Frame Frame13 
            BorderStyle     =   0  '없음
            Caption         =   "Frame13"
            Height          =   975
            Left            =   120
            TabIndex        =   68
            Top             =   240
            Width           =   5655
            Begin VB.PictureBox grpRingtoneContainer 
               Appearance      =   0  '평면
               BorderStyle     =   0  '없음
               ForeColor       =   &H80000008&
               Height          =   975
               Left            =   0
               ScaleHeight     =   975
               ScaleWidth      =   5415
               TabIndex        =   70
               Top             =   0
               Width           =   5415
               Begin VB.OptionButton optRingtone 
                  Caption         =   "계단음"
                  Height          =   255
                  Index           =   1
                  Left            =   1680
                  TabIndex        =   72
                  Top             =   0
                  Width           =   1575
               End
               Begin VB.OptionButton optRingtone 
                  Caption         =   "기본음"
                  Height          =   255
                  Index           =   0
                  Left            =   0
                  TabIndex        =   71
                  Top             =   0
                  Width           =   1575
               End
            End
         End
      End
      Begin VB.Frame Frame1 
         Caption         =   "달력"
         Height          =   615
         Left            =   120
         TabIndex        =   58
         Top             =   2520
         Width           =   5895
         Begin VB.ComboBox cmbWSD 
            Height          =   300
            Left            =   1080
            Style           =   2  '드롭다운 목록
            TabIndex        =   59
            Top             =   240
            Width           =   4695
         End
         Begin VB.Label Label5 
            Caption         =   "시작 요일:"
            Height          =   255
            Left            =   120
            TabIndex        =   60
            Top             =   240
            Width           =   1455
         End
      End
      Begin VB.Frame Frame5 
         Caption         =   " "
         Height          =   2535
         Left            =   -74880
         TabIndex        =   50
         Top             =   720
         Width           =   6015
         Begin VB.CommandButton Command3 
            Caption         =   "변경(&C)"
            Height          =   375
            Left            =   4680
            TabIndex        =   57
            Top             =   2040
            Width           =   1215
         End
         Begin VB.TextBox Text3 
            Height          =   270
            IMEMode         =   3  '사용 못함
            Left            =   120
            PasswordChar    =   "*"
            TabIndex        =   56
            Top             =   2040
            Width           =   2535
         End
         Begin VB.TextBox Text2 
            Height          =   270
            IMEMode         =   3  '사용 못함
            Left            =   120
            PasswordChar    =   "*"
            TabIndex        =   54
            Top             =   1320
            Width           =   2535
         End
         Begin VB.TextBox Text1 
            Height          =   270
            IMEMode         =   3  '사용 못함
            Left            =   120
            PasswordChar    =   "*"
            TabIndex        =   52
            Top             =   600
            Width           =   2535
         End
         Begin VB.Label Label17 
            Caption         =   "비밀번호 확인:"
            Height          =   255
            Left            =   120
            TabIndex        =   55
            Top             =   1800
            Width           =   2055
         End
         Begin VB.Label Label16 
            Caption         =   "새 비밀번호:"
            Height          =   255
            Left            =   120
            TabIndex        =   53
            Top             =   1080
            Width           =   2055
         End
         Begin VB.Label Label15 
            Caption         =   "현재 비밀번호:"
            Height          =   255
            Left            =   120
            TabIndex        =   51
            Top             =   360
            Width           =   2055
         End
      End
      Begin VB.CommandButton cmdDelGroup 
         Caption         =   "선택 그룹 삭제"
         Height          =   375
         Left            =   -72600
         TabIndex        =   49
         Top             =   2400
         Width           =   1335
      End
      Begin VB.CommandButton cmdAddNewGroup 
         Caption         =   "입력 추가(&D)"
         Height          =   375
         Left            =   -68760
         TabIndex        =   48
         Top             =   3600
         Width           =   1335
      End
      Begin VB.CommandButton cmdClearGroups 
         Caption         =   "그룹 전체삭제"
         Height          =   375
         Left            =   -70320
         TabIndex        =   47
         Top             =   1440
         Width           =   1335
      End
      Begin VB.TextBox txtNewGroup 
         Height          =   270
         Left            =   -74880
         TabIndex        =   44
         Top             =   3720
         Width           =   6015
      End
      Begin VB.FileListBox lvGroups 
         Height          =   1350
         Left            =   -72600
         TabIndex        =   43
         Top             =   960
         Width           =   2175
      End
      Begin VB.FileListBox lvCustomCates 
         Height          =   1350
         Left            =   -74880
         TabIndex        =   42
         Top             =   960
         Width           =   2175
      End
      Begin VB.Frame Frame3 
         Caption         =   "초기화"
         Height          =   1335
         Left            =   -74880
         TabIndex        =   36
         Top             =   2520
         Width           =   6015
         Begin VB.CommandButton cmdPrgReset 
            Caption         =   "초기화(&R)"
            Height          =   375
            Left            =   4560
            TabIndex        =   37
            Top             =   240
            Width           =   1335
         End
         Begin VB.Label lblResetN1 
            Caption         =   "데이터 초기화"
            Height          =   255
            Left            =   120
            TabIndex        =   41
            Top             =   960
            Visible         =   0   'False
            Width           =   1215
         End
         Begin VB.Label lblResetCount 
            Caption         =   "7"
            Height          =   255
            Left            =   1320
            TabIndex        =   40
            Top             =   960
            Visible         =   0   'False
            Width           =   135
         End
         Begin VB.Label Label4 
            Caption         =   "프로그램 전체 데이터를 초기화합니다."
            Height          =   255
            Left            =   120
            TabIndex        =   39
            Top             =   360
            Width           =   4215
         End
         Begin VB.Label lblResetN2 
            Caption         =   "단계 전입니다."
            Height          =   255
            Left            =   1440
            TabIndex        =   38
            Top             =   960
            Visible         =   0   'False
            Width           =   2055
         End
      End
      Begin VB.Frame Frame11 
         Caption         =   "팁 상자"
         Height          =   615
         Left            =   -74880
         TabIndex        =   34
         Top             =   2400
         Width           =   3135
         Begin VB.CheckBox Check1 
            Caption         =   "시작 시 '알고 계십니까' 표시(&P)"
            Height          =   255
            Left            =   120
            TabIndex        =   35
            Top             =   240
            Width           =   2895
         End
      End
      Begin VB.Frame Frame8 
         Caption         =   "레이아웃"
         Height          =   1695
         Left            =   120
         TabIndex        =   28
         Top             =   720
         Width           =   5895
         Begin VB.CheckBox chkNoRibbon 
            Caption         =   "리본 메뉴 비활성(&N)"
            Height          =   255
            Left            =   3360
            TabIndex        =   31
            Top             =   240
            Width           =   2415
         End
         Begin VB.CheckBox chkTP 
            Caption         =   "오늘의일정 숨기기(&O)"
            Height          =   255
            Left            =   120
            TabIndex        =   29
            Top             =   240
            Width           =   2535
         End
      End
      Begin VB.Frame Frame7 
         Caption         =   "색 테마"
         Height          =   975
         Left            =   -74880
         TabIndex        =   25
         Top             =   720
         Width           =   5775
         Begin VB.ComboBox cmbBGColor 
            Height          =   300
            Left            =   120
            Style           =   2  '드롭다운 목록
            TabIndex        =   27
            Top             =   480
            Width           =   5535
         End
         Begin VB.Label Label10 
            Caption         =   "프로그램 배경 테마:"
            Height          =   255
            Left            =   120
            TabIndex        =   26
            Top             =   240
            Width           =   3855
         End
      End
      Begin VB.CommandButton cmdClearCates 
         Caption         =   "분류 전체삭제"
         Height          =   375
         Left            =   -70320
         TabIndex        =   24
         Top             =   960
         Width           =   1335
      End
      Begin VB.Frame Frame6 
         Caption         =   "값 검사 설정"
         Height          =   615
         Left            =   -74880
         TabIndex        =   21
         Top             =   720
         Width           =   6015
         Begin VB.CheckBox chkNoTimeCHeck 
            Caption         =   "일정 추가 시 시간이 올바르지 검사 안함(&T)"
            Height          =   255
            Left            =   120
            TabIndex        =   22
            Top             =   240
            Width           =   4335
         End
      End
      Begin VB.CommandButton cmdDelSelCate 
         Caption         =   "선택 분류 삭제"
         Height          =   375
         Left            =   -74880
         TabIndex        =   20
         Top             =   2400
         Width           =   1335
      End
      Begin VB.CommandButton cmdAddNewCate 
         Caption         =   "입력 추가(&A)"
         Height          =   375
         Left            =   -68760
         TabIndex        =   19
         Top             =   3120
         Width           =   1335
      End
      Begin VB.TextBox txtCategory 
         Height          =   270
         Left            =   -74880
         TabIndex        =   18
         Top             =   3120
         Width           =   6015
      End
      Begin VB.Frame Frame4 
         Caption         =   "시작"
         Height          =   1575
         Left            =   -74880
         TabIndex        =   13
         Top             =   720
         Width           =   6015
         Begin VB.OptionButton radCFQ 
            Caption         =   "이전에 끝낸 지점에서 시작(&Q)"
            Height          =   255
            Left            =   360
            TabIndex        =   33
            Top             =   1200
            Width           =   5295
         End
         Begin VB.OptionButton radSelST 
            Caption         =   "화면 선택(&T)"
            Height          =   255
            Left            =   360
            TabIndex        =   32
            Top             =   480
            Width           =   5175
         End
         Begin VB.ComboBox cmbStartPage 
            Height          =   300
            Left            =   600
            Style           =   2  '드롭다운 목록
            TabIndex        =   15
            Top             =   840
            Width           =   5295
         End
         Begin VB.Label Label7 
            Caption         =   "시작 화면:"
            Height          =   255
            Left            =   120
            TabIndex        =   14
            Top             =   240
            Width           =   3015
         End
      End
      Begin VB.Frame Frame2 
         Caption         =   "내 데이터"
         Height          =   1695
         Left            =   -74880
         TabIndex        =   3
         Top             =   720
         Width           =   6015
         Begin VB.FileListBox lvTaskFiles 
            Height          =   270
            Left            =   3240
            TabIndex        =   9
            Top             =   1200
            Visible         =   0   'False
            Width           =   1095
         End
         Begin VB.FileListBox lvContactFiles 
            Height          =   270
            Left            =   3240
            TabIndex        =   8
            Top             =   720
            Visible         =   0   'False
            Width           =   1095
         End
         Begin VB.FileListBox lvPlanFiles 
            Height          =   270
            Left            =   3240
            TabIndex        =   7
            Top             =   240
            Visible         =   0   'False
            Width           =   1095
         End
         Begin VB.CommandButton cmdDelTasks 
            Caption         =   "모두 삭제(&L)"
            Height          =   375
            Left            =   4560
            TabIndex        =   6
            Top             =   1200
            Width           =   1335
         End
         Begin VB.CommandButton cmdDelContacts 
            Caption         =   "모두 삭제(&E)"
            Height          =   375
            Left            =   4560
            TabIndex        =   5
            Top             =   720
            Width           =   1335
         End
         Begin VB.CommandButton cmdDelPlans 
            Caption         =   "모두 삭제(&D)"
            Height          =   375
            Left            =   4560
            TabIndex        =   4
            Top             =   240
            Width           =   1335
         End
         Begin VB.Label Label3 
            Caption         =   "내 작업목록:"
            Height          =   255
            Left            =   240
            TabIndex        =   12
            Top             =   1320
            Width           =   2655
         End
         Begin VB.Label Label2 
            Caption         =   "내 주소록:"
            Height          =   255
            Left            =   240
            TabIndex        =   11
            Top             =   840
            Width           =   2655
         End
         Begin VB.Label Label1 
            Caption         =   "내 일정:"
            Height          =   255
            Left            =   240
            TabIndex        =   10
            Top             =   360
            Width           =   2655
         End
      End
      Begin VB.Label Label12 
         Caption         =   "시스템 경고음 외의 알림음은 PC 스피커가 있어야 작동합니다."
         Height          =   255
         Left            =   -74880
         TabIndex        =   63
         Top             =   3720
         Width           =   5295
      End
      Begin VB.Label Label14 
         Caption         =   "일정 분류 목록:                 그룹 목록:"
         Height          =   255
         Left            =   -74880
         TabIndex        =   46
         Top             =   720
         Width           =   4695
      End
      Begin VB.Label Label11 
         Caption         =   "새 그룹 추가:"
         Height          =   255
         Left            =   -74880
         TabIndex        =   45
         Top             =   3480
         Width           =   1575
      End
      Begin VB.Label Label9 
         Caption         =   "[*] 이 설정을 변경하면 프로그램이 올바로 작동하지 않을 수 있습니다."
         Height          =   255
         Left            =   -74880
         TabIndex        =   23
         Top             =   3720
         Width           =   7335
      End
      Begin VB.Label Label8 
         Caption         =   "새 일정 분류 추가:"
         Height          =   255
         Left            =   -74880
         TabIndex        =   17
         Top             =   2880
         Width           =   2055
      End
   End
   Begin VB.Label Label6 
      BackStyle       =   0  '투명
      Caption         =   "이 설정을 완전히 적용하려면 프로그램을 다시 시작해야 합니다."
      ForeColor       =   &H80000013&
      Height          =   255
      Left            =   120
      TabIndex        =   30
      Top             =   4320
      Width           =   5295
   End
End
Attribute VB_Name = "frmOptions"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim ResetCount As Integer

'사용한 외부소스
'http://www.vbforums.com/showthread.php?617573-RESOLVED-Scroll-bars-for-frame-inside-a-tab

Option Explicit
Dim lngOriginalTop         As Long
Dim lngIncrement           As Long
Dim lngOriginalTop2        As Long
Dim lngIncrement2          As Long

Dim RTI As Integer
Dim NSI As Integer

Dim Loaded As Boolean

Private Sub Check2_Click()

End Sub

Private Sub chkPasswordRequired_Click()
    If chkPasswordRequired.Value = 0 Then
        frmCheckDeactivatePassword.Show vbModal, Me
    End If
    
    Dim ctrl As Control
    If chkPasswordRequired.Value = 0 Then
        For Each ctrl In Me.Controls
            If ctrl.Container.Name = Frame5.Name Then
                ctrl.Enabled = False
            End If
        Next ctrl
    Else
        For Each ctrl In Me.Controls
            If ctrl.Container.Name = Frame5.Name Then
                ctrl.Enabled = True
            End If
        Next ctrl
    End If
End Sub

Private Sub cmdAddNewCate_Click()
    If txtCategory.Text <> "(지정되지 않음)" Then
        On Error Resume Next
        
        MkDir "C:\CALPLANS"
        MkDir "C:\CALPLANS\CTGORIES"
        
        If Len(txtCategory.Text) < 1 Then
            MessageBox "분류의 제목을 입력해주십시오.", "오류", Me, 16
            Exit Sub
        End If
        'https://stackoverflow.com/questions/21108664/how-to-create-txt-file
        Dim iFileNo As Integer
        iFileNo = FreeFile
        '파일을 연다.
        
        Open "C:\CALPLANS\CTGORIES\" & txtCategory.Text For Output As #iFileNo
        
        '파일의 내용은 보지 않으므로 빈 칸으로...
        Print #iFileNo, ""
        
        '파일을 닫는다.
        Close #iFileNo
        
        lvCustomCates.Refresh
    Else
        MessageBox "이미 존재하거나 올바르지 않습니다.", "오류", Me, 16
    End If
End Sub

Private Sub cmdCalSet_Click()
    SSTab1.Tab = 7
End Sub

Private Sub cmdClearCates_Click()
    If Confirm("정말로 " & lvCustomCates.ListCount & "개의 분류를 *모두* 삭제하시겠습니까?", "삭제", Me) Then
        On Error Resume Next
        Dim i As Integer
        For i = 0 To lvCustomCates.ListCount - 1
            Kill "C:\CALPLANS\CTGORIES\" & lvCustomCates.List(i)
        Next i
        
        lvCustomCates.Refresh
        MessageBox "모두 삭제되었습니다.", "성공", Me, 48
    End If
End Sub

Private Sub cmdClearGroups_Click()
    If Confirm("정말로 " & lvGroups.ListCount & "개의 그룹을 *모두* 삭제하시겠습니까?", "삭제", Me) Then
        On Error Resume Next
        Dim i As Integer
        For i = 0 To lvGroups.ListCount - 1
            Kill "C:\CALPLANS\CTGROUPS\" & lvGroups.List(i)
        Next i
        
        lvGroups.Refresh
        MessageBox "모두 삭제되었습니다.", "성공", Me, 48
    End If
End Sub

Sub cmdDelContacts_Click()
    If Confirm("정말로 삭제하시겠습니까?", "삭제", Me) Then
        If Confirm("복구 *불가능*합니다. 정말로 모든 주소록을 삭제하시겠습니까?", "삭제", Me, , True) Then
            On Error Resume Next
            lvContactFiles.Path = "C:\CALPLANS\CONTACTS"
            
            Dim Contact As Integer
            Dim ContactName As String
            For Contact = 0 To lvContactFiles.ListCount - 1
                ContactName = lvContactFiles.List(Contact)
                Kill "C:\CALPLANS\CONTACTS\" & ContactName
                DeleteSetting "Calendar", "Contacts", ContactName & "OtherNum"
                DeleteSetting "Calendar", "Contacts", ContactName & "Postal"
                DeleteSetting "Calendar", "Contacts", ContactName & "Home"
                DeleteSetting "Calendar", "Contacts", ContactName & "Fax"
                DeleteSetting "Calendar", "Contacts", ContactName & "Email"
                DeleteSetting "Calendar", "Contacts", ContactName & "Content"
                DeleteSetting "Calendar", "Contacts", ContactName & "Company"
                DeleteSetting "Calendar", "Contacts", ContactName & "CellPhone"
                DeleteSetting "Calendar", "Contacts", ContactName & "Addr"
            Next Contact
            
            frmMain.LoadContacts
            
            MessageBox "주소록 데이타가 모두 삭제됐습니다.", "성공", Me, 64
        End If
    End If
End Sub

Private Sub cmdDelPlans_Click()
    Dim DelYear As String
    DelYear = InputBox("삭제할 연도를 입력하십시오.", "일정 모두 지우기")
    If DelYear <> "" Then
        If IsNumeric(DelYear) = False Then
            MessageBox "연도의 값이 올바르지 않습니다.", "연도", Me, 16
            Exit Sub
        End If
    
        On Error Resume Next
        If Confirm("정말로 삭제하시겠습니까?", "삭제", Me) Then
            If Confirm("복구 *불가능*합니다. 정말로 " & DelYear & "년의 모든 일정을 삭제하시겠습니까?", "삭제", Me, , True) Then
                On Error Resume Next
                Shell "CMD /C RD /S /Q " & ChrW$(34) & "C:\CALPLANS\" & DelYear & ChrW$(34)
                Shell "COMMAND /C DELTREE /Y " & ChrW$(34) & "C:\CALPLANS\" & DelYear & ChrW$(34)
            End If
        End If
    End If
End Sub

Private Sub cmdDelSelCate_Click()
    If Confirm("한번만 경고합니다. 정말로 삭제하시겠습니까?", "삭제", Me) Then
        On Error Resume Next
        Kill "C:\CALPLANS\CTGORIES\" & lvCustomCates.List(lvCustomCates.ListIndex)
        
        lvCustomCates.Refresh
    End If
End Sub

Sub cmdDelTasks_Click()
    If Confirm("정말로 삭제하시겠습니까?", "삭제", Me) Then
        If Confirm("복구 *불가능*합니다. 정말로 모든 작업을 삭제하시겠습니까?", "삭제", Me, , True) Then
            On Error Resume Next
            lvTaskFiles.Path = "C:\CALPLANS\TASKS"
            
            Dim Plan As Integer
            Dim TaskName As String
            For Plan = 0 To lvTaskFiles.ListCount - 1
                TaskName = lvTaskFiles.List(Plan)
                Kill "C:\CALPLANS\TASKS\" & TaskName
                DeleteSetting "Calendar", "Tasks", TaskName & "Perc"
                DeleteSetting "Calendar", "Tasks", TaskName & "Memo"
            Next Plan
            
            frmMain.LoadContacts
            
            MessageBox "작업목록 데이타가 모두 삭제됐습니다.", "성공", Me
        End If
    End If
    
    frmMain.LoadTasks
End Sub

Private Sub cmdOptionHelp_Click()
    MessageBox "설정과 관련된 도움말이 없습니다.", "오류", Me, 16
End Sub

Private Sub cmdPlayNS_Click()
    PlayNotification NSI
End Sub

Private Sub cmdPlayRT_Click()
    PlayRingtone RTI
End Sub

Private Sub cmdTheSet_Click()
    SSTab1.Tab = 5
End Sub

Private Sub Command1_Click()
    'SaveSetting "Calendar", "Options", "NoResize", chkNoResize.Value
    SaveSetting "Calendar", "Options", "WSD", cmbWSD.ListIndex
    
    SaveSetting "Calendar", "Options", "StartPage", cmbStartPage.ListIndex
    
    SaveSetting "Calendar", "Options", "NoTimeCheck", chkNoTimeCHeck.Value
    
    SaveSetting "Calendar", "Options", "BGColor", cmbBGColor.ListIndex
    
    SaveSetting "Calendar", "Options", "TP", chkTP.Value
    
    SaveSetting "Calendar", "Options", "NoRibbon", chkNoRibbon.Value
    
    SaveSetting "Calendar", "Options", "Language", cmbLanguage.ListIndex
    
    If radSelST.Value = False Then
        SaveSetting "Calendar", "Options", "SST", False
    Else
        SaveSetting "Calendar", "Options", "SST", True
    End If
    
    If GetSetting("Calendar", "Options", "TP", 0) = 1 Then
        frmMain.Width = 8715
    Else
        frmMain.Width = 11040
    End If
    frmMain.SetColor
    
    frmMain.MonthView1.StartOfWeek = cmbWSD.ListIndex + 1
    
    Dim i As Integer
    
    SaveSetting "Calendar", "Options", "Notification", NSI
    
    SaveSetting "Calendar", "Options", "Ringtone", RTI
    
    Unload Me
End Sub

Private Sub Command2_Click()
    Unload Me
End Sub

Private Sub cmdPrgReset_Click()
    ResetCount = ResetCount - 1
    lblResetCount.Caption = ResetCount
    If ResetCount = 6 Then
        lblResetN1.Visible = True
        lblResetN2.Visible = True
        lblResetCount.Visible = True
    End If
    
    If ResetCount = 0 Then
        cmdPrgReset.Enabled = False
        If Confirm("마지막 경고. 정말로 프로그램 전체를 초기화하시겠습니까?", "초기화", Me) Then
            If Confirm("컴퓨터가 Windows 95, 98 혹은 Me를 실행중입니까?", "질문", Me) Then
                Shell "COMMAND /C RD /S /Q C:\CALPLANS"
            Else
                Shell "CMD /C RD /S /Q C:\CALPLANS"
            End If
            MessageBox "초기화 완료. 프로그램을 종료합니다...", "초기화", Me
            End
        Else
            cmdPrgReset.Enabled = True
            lblResetN1.Visible = False
            lblResetN2.Visible = False
            lblResetCount.Visible = False
            
            ResetCount = 7
        End If
    End If
End Sub

Private Sub cmdAddNewGroup_Click()
    If txtNewGroup.Text <> "지정 안 함" Then
        On Error Resume Next
        
        MkDir "C:\CALPLANS"
        MkDir "C:\CALPLANS\CTGROUPS"
        
        If Len(txtNewGroup.Text) < 1 Then
            MessageBox "그룹의 이름을 입력해주십시오.", "오류", Me, 16
            Exit Sub
        End If
        'https://stackoverflow.com/questions/21108664/how-to-create-txt-file
        Dim iFileNo As Integer
        iFileNo = FreeFile
        '파일을 연다.
        
        Open "C:\CALPLANS\CTGROUPS\" & txtNewGroup.Text For Output As #iFileNo
        
        '파일의 내용은 보지 않으므로 빈 칸으로...
        Print #iFileNo, ""
        
        '파일을 닫는다.
        Close #iFileNo
        
        lvGroups.Refresh
    Else
        MessageBox "이미 존재하거나 올바르지 않습니다.", "오류", Me, 16
    End If
End Sub

Private Sub Command4_Click()

End Sub

Private Sub cmdDelGroup_Click()
    If Confirm("한번만 경고합니다. 정말로 삭제하시겠습니까?", "삭제", Me) Then
        On Error Resume Next
        Kill "C:\CALPLANS\CTGROUPS\" & lvGroups.List(lvGroups.ListIndex)
        
        lvGroups.Refresh
    End If
End Sub

Private Sub Form_Load()
    Loaded = False
    lngOriginalTop = grpNotificationContainer.Top
    lngIncrement = (grpNotificationContainer.Height - Frame9.Height) / VScroll1.Max
    
    lngOriginalTop2 = grpRingtoneContainer.Top
    lngIncrement2 = (grpRingtoneContainer.Height - Frame12.Height) / VScroll2.Max
   
    ResetCount = 7
    'chkNoResize.Value = GetSetting("Calendar", "Options", "NoResize", "0")
    
    chkNoTimeCHeck.Value = GetSetting("Calendar", "Options", "NoTimeCheck", 0)
    
    chkTP.Value = GetSetting("Calendar", "Options", "TP", 0)
    
    If GetSetting("Calendar", "Options", "SST", True) = True Then
        radSelST.Value = True
    Else
        radCFQ.Value = True
    End If
    
    chkNoRibbon.Value = GetSetting("Calendar", "Options", "NoRibbon", 0)
    
    
    On Error Resume Next
    cmbWSD.AddItem "일요일"
    cmbWSD.AddItem "월요일"
    cmbWSD.AddItem "화요일"
    cmbWSD.AddItem "수요일"
    cmbWSD.AddItem "목요일"
    cmbWSD.AddItem "금요일"
    cmbWSD.AddItem "토요일"
    
    cmbStartPage.AddItem "일정"
    cmbStartPage.AddItem "주소록"
    cmbStartPage.AddItem "할 일"
    cmbStartPage.AddItem "일과표"
    
    cmbBGColor.AddItem "시스템: 응용프로그램 작업영역"
    cmbBGColor.AddItem "시스템: 단추 표면색"
    cmbBGColor.AddItem "빨강"
    cmbBGColor.AddItem "노랑"
    cmbBGColor.AddItem "초록"
    cmbBGColor.AddItem "옥색"
    cmbBGColor.AddItem "청록"
    cmbBGColor.AddItem "파랑"
    cmbBGColor.AddItem "검정"
    
    cmbBGColor.ListIndex = GetSetting("Calendar", "Options", "BGColor", 0)
    
    cmbLanguage.AddItem "한국어"
    cmbLanguage.AddItem "English"
    cmbLanguage.ListIndex = GetSetting("Calendar", "Options", "Language", 0)
    
    MkDir "C:\CALPLANS"
    MkDir "C:\CALPLANS\CTGORIES"
    MkDir "C:\CALPLANS\CTGROUPS"
    
    lvCustomCates.Path = "C:\CALPLANS\CTGORIES"
    lvGroups.Path = "C:\CALPLANS\CTGROUPS"
    
    cmbStartPage.ListIndex = GetSetting("Calendar", "Options", "StartPage", 0)
    
    cmbWSD.ListIndex = GetSetting("Calendar", "Options", "WSD", 0)
    
    NSI = GetSetting("Calendar", "Options", "Notification", 0)
    RTI = GetSetting("Calendar", "Options", "Ringtone", 0)
    
    optNotificationSound.Item(NSI).Value = True
    optRingtone.Item(RTI).Value = True
    
    Loaded = True
End Sub

Private Sub optNotificationSound_Click(Index As Integer)
    NSI = Index
End Sub

Private Sub optRingtone_Click(Index As Integer)
    RTI = Index
End Sub

Private Sub radCFQ_Click()
    cmbStartPage.Enabled = False
End Sub

Private Sub radSelST_Click()
    cmbStartPage.Enabled = True
End Sub

Private Sub VScroll1_Change()
    grpNotificationContainer.Top = lngOriginalTop - (VScroll1.Value * lngIncrement)
End Sub
