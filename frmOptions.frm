VERSION 5.00
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Begin VB.Form frmOptions 
   BackColor       =   &H80000003&
   BorderStyle     =   3  'ũ�� ���� ��ȭ ����
   Caption         =   "ȯ�漳��"
   ClientHeight    =   4635
   ClientLeft      =   -75
   ClientTop       =   1515
   ClientWidth     =   8250
   Icon            =   "frmOptions.frx":0000
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4635
   ScaleWidth      =   8250
   ShowInTaskbar   =   0   'False
   StartUpPosition =   1  '������ ���
   WhatsThisButton =   -1  'True
   WhatsThisHelp   =   -1  'True
   Begin VB.CommandButton cmdOptionHelp 
      Caption         =   "����(&H)..."
      Height          =   375
      Left            =   6360
      TabIndex        =   16
      Top             =   2040
      Width           =   1335
   End
   Begin VB.CommandButton Command2 
      Cancel          =   -1  'True
      Caption         =   "���"
      Height          =   375
      Left            =   6360
      TabIndex        =   0
      Top             =   1320
      Width           =   1335
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Ȯ��"
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
      TabCaption(0)   =   "ȭ�� ǥ��"
      TabPicture(0)   =   "frmOptions.frx":0442
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame8"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "Frame10"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).Control(2)=   "Frame1"
      Tab(0).Control(2).Enabled=   0   'False
      Tab(0).ControlCount=   3
      TabCaption(1)   =   "����� ������"
      TabPicture(1)   =   "frmOptions.frx":045E
      Tab(1).ControlEnabled=   0   'False
      Tab(1).Control(0)=   "Frame2"
      Tab(1).Control(0).Enabled=   0   'False
      Tab(1).Control(1)=   "Frame3"
      Tab(1).Control(1).Enabled=   0   'False
      Tab(1).ControlCount=   2
      TabCaption(2)   =   "ǥ��"
      TabPicture(2)   =   "frmOptions.frx":047A
      Tab(2).ControlEnabled=   0   'False
      Tab(2).Control(0)=   "Frame4"
      Tab(2).Control(1)=   "Frame11"
      Tab(2).ControlCount=   2
      TabCaption(3)   =   "�˻�"
      TabPicture(3)   =   "frmOptions.frx":0496
      Tab(3).ControlEnabled=   0   'False
      Tab(3).Control(0)=   "Label9"
      Tab(3).Control(1)=   "Frame6"
      Tab(3).ControlCount=   2
      TabCaption(4)   =   "����� �з�"
      TabPicture(4)   =   "frmOptions.frx":04B2
      Tab(4).ControlEnabled=   0   'False
      Tab(4).Control(0)=   "cmdDelGroup"
      Tab(4).Control(1)=   "cmdAddNewGroup"
      Tab(4).Control(2)=   "cmdClearGroups"
      Tab(4).Control(3)=   "txtNewGroup"
      Tab(4).Control(4)=   "lvGroups"
      Tab(4).Control(5)=   "lvCustomCates"
      Tab(4).Control(6)=   "cmdClearCates"
      Tab(4).Control(7)=   "cmdDelSelCate"
      Tab(4).Control(8)=   "cmdAddNewCate"
      Tab(4).Control(9)=   "txtCategory"
      Tab(4).Control(10)=   "Label14"
      Tab(4).Control(11)=   "Label11"
      Tab(4).Control(12)=   "Label8"
      Tab(4).ControlCount=   13
      TabCaption(5)   =   "�׸�"
      TabPicture(5)   =   "frmOptions.frx":04CE
      Tab(5).ControlEnabled=   0   'False
      Tab(5).Control(0)=   "Frame7"
      Tab(5).ControlCount=   1
      TabCaption(6)   =   "��й�ȣ"
      TabPicture(6)   =   "frmOptions.frx":04EA
      Tab(6).ControlEnabled=   0   'False
      Tab(6).Control(0)=   "Frame5"
      Tab(6).Control(1)=   "chkPasswordRequired"
      Tab(6).ControlCount=   2
      TabCaption(7)   =   "�Ҹ�"
      TabPicture(7)   =   "frmOptions.frx":0506
      Tab(7).ControlEnabled=   0   'False
      Tab(7).Control(0)=   "Label12"
      Tab(7).Control(0).Enabled=   0   'False
      Tab(7).Control(1)=   "Frame12"
      Tab(7).Control(1).Enabled=   0   'False
      Tab(7).Control(2)=   "Frame34"
      Tab(7).Control(2).Enabled=   0   'False
      Tab(7).Control(3)=   "cmdPlayNS"
      Tab(7).Control(3).Enabled=   0   'False
      Tab(7).Control(4)=   "cmdPlayRT"
      Tab(7).Control(4).Enabled=   0   'False
      Tab(7).ControlCount=   5
      Begin VB.CommandButton cmdPlayRT 
         Caption         =   "���(&R)"
         Height          =   320
         Left            =   -70680
         TabIndex        =   79
         Top             =   3080
         Width           =   1335
      End
      Begin VB.CommandButton cmdPlayNS 
         Caption         =   "���(&N)"
         Height          =   320
         Left            =   -70680
         TabIndex        =   78
         Top             =   1640
         Width           =   1335
      End
      Begin VB.CheckBox chkPasswordRequired 
         Caption         =   "���α׷��� ������ �� ��ȣ �Է� �ʿ�"
         Height          =   255
         Left            =   -74760
         TabIndex        =   77
         Top             =   720
         Width           =   3255
      End
      Begin VB.Frame Frame34 
         Caption         =   "���� �˸���"
         Height          =   1335
         Left            =   -74880
         TabIndex        =   64
         Top             =   720
         Width           =   5895
         Begin VB.Frame Frame9 
            BorderStyle     =   0  '����
            Height          =   975
            Left            =   120
            TabIndex        =   67
            Top             =   240
            Width           =   5655
            Begin VB.PictureBox grpNotificationContainer 
               Appearance      =   0  '���
               BorderStyle     =   0  '����
               ForeColor       =   &H80000008&
               Height          =   975
               Left            =   0
               ScaleHeight     =   975
               ScaleWidth      =   5415
               TabIndex        =   69
               Top             =   0
               Width           =   5415
               Begin VB.OptionButton optNotificationSound 
                  Caption         =   "������-"
                  Height          =   255
                  Index           =   1
                  Left            =   1680
                  TabIndex        =   76
                  Top             =   0
                  Width           =   1575
               End
               Begin VB.OptionButton optNotificationSound 
                  Caption         =   "��- ��-"
                  Height          =   255
                  Index           =   0
                  Left            =   0
                  TabIndex        =   70
                  Top             =   0
                  Width           =   1575
               End
            End
            Begin VB.VScrollBar VScroll1 
               Enabled         =   0   'False
               Height          =   975
               Left            =   5400
               Max             =   1
               TabIndex        =   68
               Top             =   0
               Width           =   255
            End
         End
      End
      Begin VB.Frame Frame12 
         Caption         =   "�˶���"
         Height          =   1335
         Left            =   -74880
         TabIndex        =   65
         Top             =   2160
         Width           =   5895
         Begin VB.VScrollBar VScroll2 
            Enabled         =   0   'False
            Height          =   975
            Left            =   5520
            Max             =   1
            TabIndex        =   72
            Top             =   240
            Width           =   255
         End
         Begin VB.Frame Frame13 
            BorderStyle     =   0  '����
            Caption         =   "Frame13"
            Height          =   975
            Left            =   120
            TabIndex        =   71
            Top             =   240
            Width           =   5655
            Begin VB.PictureBox grpRingtoneContainer 
               Appearance      =   0  '���
               BorderStyle     =   0  '����
               ForeColor       =   &H80000008&
               Height          =   975
               Left            =   0
               ScaleHeight     =   975
               ScaleWidth      =   5415
               TabIndex        =   73
               Top             =   0
               Width           =   5415
               Begin VB.OptionButton optRingtone 
                  Caption         =   "�����"
                  Height          =   255
                  Index           =   1
                  Left            =   1680
                  TabIndex        =   75
                  Top             =   0
                  Width           =   1575
               End
               Begin VB.OptionButton optRingtone 
                  Caption         =   "�⺻��"
                  Height          =   255
                  Index           =   0
                  Left            =   0
                  TabIndex        =   74
                  Top             =   0
                  Width           =   1575
               End
            End
         End
      End
      Begin VB.Frame Frame1 
         Caption         =   "�޷�"
         Height          =   615
         Left            =   120
         TabIndex        =   61
         Top             =   2520
         Width           =   5895
         Begin VB.ComboBox cmbWSD 
            Height          =   300
            Left            =   1560
            Style           =   2  '��Ӵٿ� ���
            TabIndex        =   62
            Top             =   240
            Width           =   4215
         End
         Begin VB.Label Label5 
            Caption         =   "���� ���� ����:"
            Height          =   255
            Left            =   120
            TabIndex        =   63
            Top             =   240
            Width           =   1455
         End
      End
      Begin VB.Frame Frame5 
         Caption         =   " "
         Height          =   2535
         Left            =   -74880
         TabIndex        =   53
         Top             =   720
         Width           =   6015
         Begin VB.CommandButton Command3 
            Caption         =   "����(&C)"
            Height          =   375
            Left            =   4680
            TabIndex        =   60
            Top             =   2040
            Width           =   1215
         End
         Begin VB.TextBox Text3 
            Height          =   270
            IMEMode         =   3  '��� ����
            Left            =   120
            PasswordChar    =   "*"
            TabIndex        =   59
            Top             =   2040
            Width           =   2535
         End
         Begin VB.TextBox Text2 
            Height          =   270
            IMEMode         =   3  '��� ����
            Left            =   120
            PasswordChar    =   "*"
            TabIndex        =   57
            Top             =   1320
            Width           =   2535
         End
         Begin VB.TextBox Text1 
            Height          =   270
            IMEMode         =   3  '��� ����
            Left            =   120
            PasswordChar    =   "*"
            TabIndex        =   55
            Top             =   600
            Width           =   2535
         End
         Begin VB.Label Label17 
            Caption         =   "��й�ȣ Ȯ��:"
            Height          =   255
            Left            =   120
            TabIndex        =   58
            Top             =   1800
            Width           =   2055
         End
         Begin VB.Label Label16 
            Caption         =   "�� ��й�ȣ:"
            Height          =   255
            Left            =   120
            TabIndex        =   56
            Top             =   1080
            Width           =   2055
         End
         Begin VB.Label Label15 
            Caption         =   "���� ��й�ȣ:"
            Height          =   255
            Left            =   120
            TabIndex        =   54
            Top             =   360
            Width           =   2055
         End
      End
      Begin VB.CommandButton cmdDelGroup 
         Caption         =   "���� �׷� ����"
         Height          =   375
         Left            =   -72600
         TabIndex        =   52
         Top             =   2400
         Width           =   1335
      End
      Begin VB.CommandButton cmdAddNewGroup 
         Caption         =   "�Է� �߰�(&D)"
         Height          =   375
         Left            =   -68760
         TabIndex        =   51
         Top             =   3600
         Width           =   1335
      End
      Begin VB.CommandButton cmdClearGroups 
         Caption         =   "�׷� ��ü����"
         Height          =   375
         Left            =   -70320
         TabIndex        =   50
         Top             =   1440
         Width           =   1335
      End
      Begin VB.TextBox txtNewGroup 
         Height          =   270
         Left            =   -74880
         TabIndex        =   47
         Top             =   3720
         Width           =   6015
      End
      Begin VB.FileListBox lvGroups 
         Height          =   1350
         Left            =   -72600
         TabIndex        =   46
         Top             =   960
         Width           =   2175
      End
      Begin VB.FileListBox lvCustomCates 
         Height          =   1350
         Left            =   -74880
         TabIndex        =   45
         Top             =   960
         Width           =   2175
      End
      Begin VB.Frame Frame3 
         Caption         =   "�ʱ�ȭ"
         Height          =   1335
         Left            =   -74880
         TabIndex        =   39
         Top             =   2520
         Width           =   6015
         Begin VB.CommandButton cmdPrgReset 
            Caption         =   "�ʱ�ȭ(&R)"
            Height          =   375
            Left            =   4560
            TabIndex        =   40
            Top             =   240
            Width           =   1335
         End
         Begin VB.Label lblResetN1 
            Caption         =   "������ �ʱ�ȭ"
            Height          =   255
            Left            =   120
            TabIndex        =   44
            Top             =   960
            Visible         =   0   'False
            Width           =   1215
         End
         Begin VB.Label lblResetCount 
            Caption         =   "7"
            Height          =   255
            Left            =   1320
            TabIndex        =   43
            Top             =   960
            Visible         =   0   'False
            Width           =   135
         End
         Begin VB.Label Label4 
            Caption         =   "���α׷� ��ü �����͸� �ʱ�ȭ�մϴ�."
            Height          =   255
            Left            =   120
            TabIndex        =   42
            Top             =   360
            Width           =   4215
         End
         Begin VB.Label lblResetN2 
            Caption         =   "�ܰ� ���Դϴ�."
            Height          =   255
            Left            =   1440
            TabIndex        =   41
            Top             =   960
            Visible         =   0   'False
            Width           =   2055
         End
      End
      Begin VB.Frame Frame11 
         Caption         =   "�� ����"
         Height          =   615
         Left            =   -74880
         TabIndex        =   37
         Top             =   2400
         Width           =   3135
         Begin VB.CheckBox Check1 
            Caption         =   "���� �� '�˰� ��ʴϱ�' ǥ��(&P)"
            Height          =   255
            Left            =   120
            TabIndex        =   38
            Top             =   240
            Width           =   2895
         End
      End
      Begin VB.Frame Frame10 
         Caption         =   "�׸�"
         Height          =   735
         Left            =   120
         TabIndex        =   30
         Top             =   3240
         Width           =   7455
         Begin VB.CommandButton cmdTheSet 
            Caption         =   "�׸�(&T)..."
            Height          =   375
            Left            =   6120
            TabIndex        =   31
            Top             =   240
            Width           =   1215
         End
         Begin VB.Label Label13 
            Caption         =   "�׸��� �����Ϸ��� ���� ���߸� �����ʽÿ�."
            Height          =   255
            Left            =   120
            TabIndex        =   32
            Top             =   300
            Width           =   4215
         End
      End
      Begin VB.Frame Frame8 
         Caption         =   "���̾ƿ�"
         Height          =   1695
         Left            =   120
         TabIndex        =   28
         Top             =   720
         Width           =   5895
         Begin VB.CheckBox chkNoRibbon 
            Caption         =   "���� �޴� ��Ȱ��(&N)"
            Height          =   255
            Left            =   3360
            TabIndex        =   34
            Top             =   240
            Width           =   2415
         End
         Begin VB.CheckBox chkTP 
            Caption         =   "���������� �����(&O)"
            Height          =   255
            Left            =   120
            TabIndex        =   29
            Top             =   240
            Width           =   2535
         End
      End
      Begin VB.Frame Frame7 
         Caption         =   "�� �׸�"
         Height          =   975
         Left            =   -74880
         TabIndex        =   25
         Top             =   720
         Width           =   5775
         Begin VB.ComboBox cmbBGColor 
            Height          =   300
            Left            =   120
            Style           =   2  '��Ӵٿ� ���
            TabIndex        =   27
            Top             =   480
            Width           =   5535
         End
         Begin VB.Label Label10 
            Caption         =   "���α׷� ��� �׸�:"
            Height          =   255
            Left            =   120
            TabIndex        =   26
            Top             =   240
            Width           =   3855
         End
      End
      Begin VB.CommandButton cmdClearCates 
         Caption         =   "�з� ��ü����"
         Height          =   375
         Left            =   -70320
         TabIndex        =   24
         Top             =   960
         Width           =   1335
      End
      Begin VB.Frame Frame6 
         Caption         =   "�� �˻� ����"
         Height          =   615
         Left            =   -74880
         TabIndex        =   21
         Top             =   720
         Width           =   6015
         Begin VB.CheckBox chkNoTimeCHeck 
            Caption         =   "���� �߰� �� �ð��� �ùٸ��� �˻� ����(&T)"
            Height          =   255
            Left            =   120
            TabIndex        =   22
            Top             =   240
            Width           =   4335
         End
      End
      Begin VB.CommandButton cmdDelSelCate 
         Caption         =   "���� �з� ����"
         Height          =   375
         Left            =   -74880
         TabIndex        =   20
         Top             =   2400
         Width           =   1335
      End
      Begin VB.CommandButton cmdAddNewCate 
         Caption         =   "�Է� �߰�(&A)"
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
         Caption         =   "����"
         Height          =   1575
         Left            =   -74880
         TabIndex        =   13
         Top             =   720
         Width           =   6015
         Begin VB.OptionButton radCFQ 
            Caption         =   "������ ���� �������� ����(&Q)"
            Height          =   255
            Left            =   360
            TabIndex        =   36
            Top             =   1200
            Width           =   5295
         End
         Begin VB.OptionButton radSelST 
            Caption         =   "ȭ�� ����(&T)"
            Height          =   255
            Left            =   360
            TabIndex        =   35
            Top             =   480
            Width           =   5175
         End
         Begin VB.ComboBox cmbStartPage 
            Height          =   300
            Left            =   600
            Style           =   2  '��Ӵٿ� ���
            TabIndex        =   15
            Top             =   840
            Width           =   5295
         End
         Begin VB.Label Label7 
            Caption         =   "���� ȭ��:"
            Height          =   255
            Left            =   120
            TabIndex        =   14
            Top             =   240
            Width           =   3015
         End
      End
      Begin VB.Frame Frame2 
         Caption         =   "�� ������"
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
            Caption         =   "��� ����(&L)"
            Height          =   375
            Left            =   4560
            TabIndex        =   6
            Top             =   1200
            Width           =   1335
         End
         Begin VB.CommandButton cmdDelContacts 
            Caption         =   "��� ����(&E)"
            Height          =   375
            Left            =   4560
            TabIndex        =   5
            Top             =   720
            Width           =   1335
         End
         Begin VB.CommandButton cmdDelPlans 
            Caption         =   "��� ����(&D)"
            Height          =   375
            Left            =   4560
            TabIndex        =   4
            Top             =   240
            Width           =   1335
         End
         Begin VB.Label Label3 
            Caption         =   "�� �۾����:"
            Height          =   255
            Left            =   240
            TabIndex        =   12
            Top             =   1320
            Width           =   2655
         End
         Begin VB.Label Label2 
            Caption         =   "�� �ּҷ�:"
            Height          =   255
            Left            =   240
            TabIndex        =   11
            Top             =   840
            Width           =   2655
         End
         Begin VB.Label Label1 
            Caption         =   "�� ����:"
            Height          =   255
            Left            =   240
            TabIndex        =   10
            Top             =   360
            Width           =   2655
         End
      End
      Begin VB.Label Label12 
         Caption         =   "�ý��� ����� ���� �˸����� PC ����Ŀ�� �־�� �۵��մϴ�."
         Height          =   255
         Left            =   -74880
         TabIndex        =   66
         Top             =   3720
         Width           =   5295
      End
      Begin VB.Label Label14 
         Caption         =   "���� �з� ���:                 �׷� ���:"
         Height          =   255
         Left            =   -74880
         TabIndex        =   49
         Top             =   720
         Width           =   4695
      End
      Begin VB.Label Label11 
         Caption         =   "�� �׷� �߰�:"
         Height          =   255
         Left            =   -74880
         TabIndex        =   48
         Top             =   3480
         Width           =   1575
      End
      Begin VB.Label Label9 
         Caption         =   "[*] �� ������ �����ϸ� ���α׷��� �ùٷ� �۵����� ���� �� �ֽ��ϴ�."
         Height          =   255
         Left            =   -74880
         TabIndex        =   23
         Top             =   3720
         Width           =   7335
      End
      Begin VB.Label Label8 
         Caption         =   "�� ���� �з� �߰�:"
         Height          =   255
         Left            =   -74880
         TabIndex        =   17
         Top             =   2880
         Width           =   2055
      End
   End
   Begin VB.Label Label6 
      BackStyle       =   0  '����
      Caption         =   "�� ������ ������ �����Ϸ��� ���α׷��� �ٽ� �����ؾ� �մϴ�."
      ForeColor       =   &H80000013&
      Height          =   255
      Left            =   120
      TabIndex        =   33
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

'����� �ܺμҽ�
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
    If txtCategory.Text <> "����" And txtCategory.Text <> "������Ȱ" And txtCategory.Text <> "���" And txtCategory.Text <> "���" And txtCategory.Text <> "(�������� ����)" Then
        On Error Resume Next
        
        MkDir "C:\CALPLANS"
        MkDir "C:\CALPLANS\CTGORIES"
        
        If Len(txtCategory.Text) < 1 Then
            MessageBox "�з��� ������ �Է����ֽʽÿ�.", "����", Me, 16
            Exit Sub
        End If
        'https://stackoverflow.com/questions/21108664/how-to-create-txt-file
        Dim iFileNo As Integer
        iFileNo = FreeFile
        '������ ����.
        
        Open "C:\CALPLANS\CTGORIES\" & txtCategory.Text For Output As #iFileNo
        
        '������ ������ ���� �����Ƿ� �� ĭ����...
        Print #iFileNo, ""
        
        '������ �ݴ´�.
        Close #iFileNo
        
        lvCustomCates.Refresh
        
        MessageBox "�߰��Ǿ����ϴ�.", "����", Me
    Else
        MessageBox "�̹� �����ϰų� �ùٸ��� �ʽ��ϴ�.", "����", Me, 16
    End If
End Sub

Private Sub cmdCalSet_Click()
    SSTab1.Tab = 7
End Sub

Private Sub cmdClearCates_Click()
    If Confirm("������ " & lvCustomCates.ListCount & "���� �з��� *���* �����Ͻðڽ��ϱ�?", "����", Me) Then
        On Error Resume Next
        Dim i As Integer
        For i = 0 To lvCustomCates.ListCount - 1
            Kill "C:\CALPLANS\CTGORIES\" & lvCustomCates.List(i)
        Next i
        
        lvCustomCates.Refresh
        MessageBox "��� �����Ǿ����ϴ�.", "����", Me, 48
    End If
End Sub

Private Sub cmdClearGroups_Click()
    If Confirm("������ " & lvGroups.ListCount & "���� �׷��� *���* �����Ͻðڽ��ϱ�?", "����", Me) Then
        On Error Resume Next
        Dim i As Integer
        For i = 0 To lvGroups.ListCount - 1
            Kill "C:\CALPLANS\CTGROUPS\" & lvGroups.List(i)
        Next i
        
        lvGroups.Refresh
        MessageBox "��� �����Ǿ����ϴ�.", "����", Me, 48
    End If
End Sub

Sub cmdDelContacts_Click()
    If Confirm("������ �����Ͻðڽ��ϱ�?", "����", Me) Then
        If Confirm("���� *�Ұ���*�մϴ�. ������ ��� �ּҷ��� �����Ͻðڽ��ϱ�?", "����", Me, , True) Then
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
            
            MessageBox "�ּҷ� ����Ÿ�� ��� �����ƽ��ϴ�.", "����", Me, 64
        End If
    End If
End Sub

Private Sub cmdDelPlans_Click()
    Dim DelYear As String
    DelYear = InputBox("������ ������ �Է��Ͻʽÿ�.", "���� ��� �����")
    If DelYear <> "" Then
        If IsNumeric(DelYear) = False Then
            MessageBox "������ ���� �ùٸ��� �ʽ��ϴ�.", "����", Me, 16
            Exit Sub
        End If
    
        On Error Resume Next
        If Confirm("������ �����Ͻðڽ��ϱ�?", "����", Me) Then
            If Confirm("���� *�Ұ���*�մϴ�. ������ " & DelYear & "���� ��� ������ �����Ͻðڽ��ϱ�?", "����", Me, , True) Then
                On Error Resume Next
                Shell "CMD /C RD /S /Q " & ChrW$(34) & "C:\CALPLANS\" & DelYear & ChrW$(34)
                Shell "COMMAND /C DELTREE /Y " & ChrW$(34) & "C:\CALPLANS\" & DelYear & ChrW$(34)
            End If
        End If
    End If
End Sub

Private Sub cmdDelSelCate_Click()
    If Confirm("�ѹ��� ����մϴ�. ������ �����Ͻðڽ��ϱ�?", "����", Me) Then
        On Error Resume Next
        Kill "C:\CALPLANS\CTGORIES\" & lvCustomCates.List(lvCustomCates.ListIndex)
        
        lvCustomCates.Refresh
    End If
End Sub

Sub cmdDelTasks_Click()
    If Confirm("������ �����Ͻðڽ��ϱ�?", "����", Me) Then
        If Confirm("���� *�Ұ���*�մϴ�. ������ ��� �۾��� �����Ͻðڽ��ϱ�?", "����", Me, , True) Then
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
            
            MessageBox "�۾���� ����Ÿ�� ��� �����ƽ��ϴ�.", "����", Me
        End If
    End If
    
    frmMain.LoadTasks
End Sub

Private Sub cmdOptionHelp_Click()
    MessageBox "������ ���õ� ������ �����ϴ�.", "����", Me, 16
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
        If Confirm("������ ���. ������ ���α׷� ��ü�� �ʱ�ȭ�Ͻðڽ��ϱ�?", "�ʱ�ȭ", Me) Then
            If Confirm("��ǻ�Ͱ� Windows 95, 98 Ȥ�� Me�� �������Դϱ�?", "����", Me) Then
                Shell "COMMAND /C RD /S /Q C:\CALPLANS"
            Else
                Shell "CMD /C RD /S /Q C:\CALPLANS"
            End If
            MessageBox "�ʱ�ȭ �Ϸ�. ���α׷��� �����մϴ�...", "�ʱ�ȭ", Me
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
    If txtNewGroup.Text <> "���� �� ��" And txtNewGroup.Text <> "����" And txtNewGroup.Text <> "ģô" And txtNewGroup.Text <> "����" Then
        On Error Resume Next
        
        MkDir "C:\CALPLANS"
        MkDir "C:\CALPLANS\CTGROUPS"
        
        If Len(txtNewGroup.Text) < 1 Then
            MessageBox "�׷��� �̸��� �Է����ֽʽÿ�.", "����", Me, 16
            Exit Sub
        End If
        'https://stackoverflow.com/questions/21108664/how-to-create-txt-file
        Dim iFileNo As Integer
        iFileNo = FreeFile
        '������ ����.
        
        Open "C:\CALPLANS\CTGROUPS\" & txtNewGroup.Text For Output As #iFileNo
        
        '������ ������ ���� �����Ƿ� �� ĭ����...
        Print #iFileNo, ""
        
        '������ �ݴ´�.
        Close #iFileNo
        
        lvGroups.Refresh
        
        MessageBox "�߰��Ǿ����ϴ�.", "����", Me
    Else
        MessageBox "�̹� �����ϰų� �ùٸ��� �ʽ��ϴ�.", "����", Me, 16
    End If
End Sub

Private Sub Command4_Click()

End Sub

Private Sub cmdDelGroup_Click()
    If Confirm("�ѹ��� ����մϴ�. ������ �����Ͻðڽ��ϱ�?", "����", Me) Then
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
    cmbWSD.AddItem "�Ͽ���"
    cmbWSD.AddItem "������"
    cmbWSD.AddItem "ȭ����"
    cmbWSD.AddItem "������"
    cmbWSD.AddItem "�����"
    cmbWSD.AddItem "�ݿ���"
    cmbWSD.AddItem "�����"
    
    cmbStartPage.AddItem "����"
    cmbStartPage.AddItem "�ּҷ�"
    cmbStartPage.AddItem "�� ��"
    cmbStartPage.AddItem "�ϰ�ǥ"
    
    cmbBGColor.AddItem "�ý���: �������α׷� �۾�����"
    cmbBGColor.AddItem "�ý���: ���� ǥ���"
    cmbBGColor.AddItem "����"
    cmbBGColor.AddItem "���"
    cmbBGColor.AddItem "�ʷ�"
    cmbBGColor.AddItem "����"
    cmbBGColor.AddItem "û��"
    cmbBGColor.AddItem "�Ķ�"
    cmbBGColor.AddItem "����"
    
    cmbBGColor.ListIndex = GetSetting("Calendar", "Options", "BGColor", 0)
    
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
