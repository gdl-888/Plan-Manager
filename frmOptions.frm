VERSION 5.00
Object = "{6B7E6392-850A-101B-AFC0-4210102A8DA7}#1.3#0"; "COMCTL32.OCX"
Begin VB.Form frmOptions 
   BorderStyle     =   3  'ũ�� ���� ��ȭ ����
   Caption         =   "ȯ�漳��"
   ClientHeight    =   5400
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   6780
   Icon            =   "frmOptions.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5400
   ScaleWidth      =   6780
   ShowInTaskbar   =   0   'False
   StartUpPosition =   1  '������ ���
   WhatsThisButton =   -1  'True
   WhatsThisHelp   =   -1  'True
   Begin VB.Frame TabPane 
      BackColor       =   &H80000005&
      BorderStyle     =   0  '����
      Height          =   1575
      Index           =   2
      Left            =   240
      TabIndex        =   14
      Top             =   480
      Visible         =   0   'False
      Width           =   6255
      Begin VB.Frame Frame3 
         BackColor       =   &H80000005&
         Caption         =   "�ʱ�ȭ    "
         Height          =   1335
         Left            =   120
         TabIndex        =   15
         Top             =   120
         Width           =   6015
         Begin VB.CommandButton cmdPrgReset 
            Caption         =   "�ʱ�ȭ(&R)"
            Height          =   375
            Left            =   4560
            TabIndex        =   16
            Top             =   240
            Width           =   1335
         End
         Begin VB.Label lblResetN2 
            BackColor       =   &H80000005&
            Caption         =   "�ܰ� ���Դϴ�."
            Height          =   255
            Left            =   1440
            TabIndex        =   20
            Top             =   960
            Visible         =   0   'False
            Width           =   2055
         End
         Begin VB.Label lblResetN1 
            BackColor       =   &H80000005&
            Caption         =   "������ �ʱ�ȭ"
            Height          =   255
            Left            =   120
            TabIndex        =   19
            Top             =   960
            Visible         =   0   'False
            Width           =   1215
         End
         Begin VB.Label lblResetCount 
            BackColor       =   &H80000005&
            Caption         =   "7"
            Height          =   255
            Left            =   1320
            TabIndex        =   18
            Top             =   960
            Visible         =   0   'False
            Width           =   255
         End
         Begin VB.Label Label4 
            BackColor       =   &H80000005&
            Caption         =   "���α׷� ��ü �����͸� �ʱ�ȭ�մϴ�."
            Height          =   255
            Left            =   120
            TabIndex        =   17
            Top             =   360
            Width           =   4215
         End
      End
   End
   Begin VB.Frame TabPane 
      BackColor       =   &H80000005&
      BorderStyle     =   0  '����
      Height          =   4215
      Index           =   1
      Left            =   240
      TabIndex        =   3
      Top             =   480
      Visible         =   0   'False
      Width           =   6255
      Begin VB.Frame Frame1 
         BackColor       =   &H80000005&
         Caption         =   "�޷� ����    "
         Height          =   1455
         Left            =   120
         TabIndex        =   21
         Top             =   1920
         Width           =   6015
         Begin VB.ComboBox cmbWSD 
            Height          =   300
            Left            =   120
            Style           =   2  '��Ӵٿ� ���
            TabIndex        =   23
            Top             =   600
            Width           =   5655
         End
         Begin VB.Label Label6 
            BackStyle       =   0  '����
            Caption         =   "�� ������ ������ �����Ϸ��� ���α׷��� �ٽ� �����ؾ� �մϴ�."
            Height          =   255
            Left            =   120
            TabIndex        =   24
            Top             =   1080
            Width           =   5295
         End
         Begin VB.Label Label5 
            BackColor       =   &H80000005&
            Caption         =   "���� ���� ����:"
            Height          =   255
            Left            =   120
            TabIndex        =   22
            Top             =   360
            Width           =   1455
         End
      End
      Begin VB.Frame Frame2 
         BackColor       =   &H80000005&
         Caption         =   "�� ������    "
         Height          =   1695
         Left            =   120
         TabIndex        =   4
         Top             =   120
         Width           =   6015
         Begin VB.FileListBox lvTaskFiles 
            Height          =   270
            Left            =   3240
            TabIndex        =   10
            Top             =   1200
            Visible         =   0   'False
            Width           =   1095
         End
         Begin VB.FileListBox lvContactFiles 
            Height          =   270
            Left            =   3240
            TabIndex        =   9
            Top             =   720
            Visible         =   0   'False
            Width           =   1095
         End
         Begin VB.FileListBox lvPlanFiles 
            Height          =   270
            Left            =   3240
            TabIndex        =   8
            Top             =   240
            Visible         =   0   'False
            Width           =   1095
         End
         Begin VB.CommandButton cmdDelTasks 
            BackColor       =   &H80000005&
            Caption         =   "��� ����(&L)"
            Height          =   375
            Left            =   4560
            TabIndex        =   7
            Top             =   1200
            Width           =   1335
         End
         Begin VB.CommandButton cmdDelContacts 
            BackColor       =   &H80000005&
            Caption         =   "��� ����(&E)"
            Height          =   375
            Left            =   4560
            TabIndex        =   6
            Top             =   720
            Width           =   1335
         End
         Begin VB.CommandButton cmdDelPlans 
            BackColor       =   &H80000005&
            Caption         =   "��� ����(&D)"
            Height          =   375
            Left            =   4560
            TabIndex        =   5
            Top             =   240
            Width           =   1335
         End
         Begin VB.Label Label3 
            BackColor       =   &H80000005&
            Caption         =   "�� �۾����:"
            Height          =   255
            Left            =   240
            TabIndex        =   13
            Top             =   1320
            Width           =   2655
         End
         Begin VB.Label Label2 
            BackColor       =   &H80000005&
            Caption         =   "�� �ּҷ�:"
            Height          =   255
            Left            =   240
            TabIndex        =   12
            Top             =   840
            Width           =   2655
         End
         Begin VB.Label Label1 
            BackColor       =   &H80000005&
            Caption         =   "�� ����:"
            Height          =   255
            Left            =   240
            TabIndex        =   11
            Top             =   360
            Width           =   2655
         End
      End
   End
   Begin ComctlLib.TabStrip OptionTabs 
      Height          =   4695
      Left            =   120
      TabIndex        =   1
      Top             =   120
      Width           =   6495
      _ExtentX        =   11456
      _ExtentY        =   8281
      _Version        =   327682
      BeginProperty Tabs {0713E432-850A-101B-AFC0-4210102A8DA7} 
         NumTabs         =   2
         BeginProperty Tab1 {0713F341-850A-101B-AFC0-4210102A8DA7} 
            Caption         =   "�Ϲ�"
            Key             =   ""
            Object.Tag             =   ""
            ImageVarType    =   2
         EndProperty
         BeginProperty Tab2 {0713F341-850A-101B-AFC0-4210102A8DA7} 
            Caption         =   "�ʱ�ȭ"
            Key             =   ""
            Object.Tag             =   ""
            ImageVarType    =   2
         EndProperty
      EndProperty
   End
   Begin VB.CommandButton Command2 
      Cancel          =   -1  'True
      Caption         =   "���"
      Height          =   375
      Left            =   5280
      TabIndex        =   2
      Top             =   4920
      Width           =   1335
   End
   Begin VB.CommandButton Command1 
      Caption         =   "����(&S)"
      Default         =   -1  'True
      Height          =   375
      Left            =   3840
      TabIndex        =   0
      Top             =   4920
      Width           =   1335
   End
End
Attribute VB_Name = "frmOptions"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim ResetCount As Integer

Sub cmdDelContacts_Click()
    If MsgBox("������ �����Ͻðڽ��ϱ�?", vbQuestion + vbOKCancel, "����") = vbOK Then
        If MsgBox("���� *�Ұ���*�մϴ�. ������ ��� �ּҷ��� �����Ͻðڽ��ϱ�?", vbOKCancel + vbExclamation, "����") = vbOK Then
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
            MsgBox "������ ���� �ùٸ��� �ʽ��ϴ�.", 16, "����"
            Exit Sub
        End If
    
        On Error Resume Next
        If MsgBox("������ �����Ͻðڽ��ϱ�?", vbQuestion + vbOKCancel, "����") = vbOK Then
            If MsgBox("���� *�Ұ���*�մϴ�. ������ " & DelYear & "���� ��� ������ �����Ͻðڽ��ϱ�?", vbOKCancel + vbExclamation, "����") = vbOK Then
                On Error Resume Next
                Shell "CMD /C RD /S /Q " & ChrW$(34) & "C:\CALPLANS\" & DelYear & ChrW$(34)
                Shell "COMMAND /C DELTREE /Y " & ChrW$(34) & "C:\CALPLANS\" & DelYear & ChrW$(34)
            End If
        End If
    End If
End Sub

Sub cmdDelTasks_Click()
    If MsgBox("������ �����Ͻðڽ��ϱ�?", vbQuestion + vbOKCancel, "����") = vbOK Then
        If MsgBox("���� *�Ұ���*�մϴ�. ������ ��� �۾��� �����Ͻðڽ��ϱ�?", vbOKCancel + vbExclamation, "����") = vbOK Then
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

Private Sub Command1_Click()
    'SaveSetting "Calendar", "Options", "NoResize", chkNoResize.Value
    SaveSetting "Calendar", "Options", "WSD", cmbWSD.ListIndex
    
    frmMain.MonthView1.StartOfWeek = cmbWSD.ListIndex + 1
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
        If MsgBox("������ ���. ������ ���α׷� ��ü�� �ʱ�ȭ�Ͻðڽ��ϱ�?", vbQuestion + vbOKCancel, "�ʱ�ȭ") = vbOK Then
            Shell "CMD /C RD /S /Q C:\CALPLANS"
            Shell "CMD /C RD /S /Q C:\CALPLANS"
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

Private Sub Form_Load()
    ResetCount = 7
    'chkNoResize.Value = GetSetting("Calendar", "Options", "NoResize", "0")
    TabPane(OptionTabs.SelectedItem.Index).Visible = True
    
    cmbWSD.AddItem "�Ͽ���"
    cmbWSD.AddItem "������"
    cmbWSD.AddItem "ȭ����"
    cmbWSD.AddItem "������"
    cmbWSD.AddItem "�����"
    cmbWSD.AddItem "�ݿ���"
    cmbWSD.AddItem "�����"
    
    cmbWSD.ListIndex = GetSetting("Calendar", "Options", "WSD", 0)
End Sub

Private Sub OptionTabs_Click()
    Dim i As Integer
    For i = 1 To TabPane.Count
        TabPane(i).Visible = False
    Next i
    TabPane(OptionTabs.SelectedItem.Index).Visible = True
End Sub
