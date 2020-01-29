VERSION 5.00
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Begin VB.Form frmOptions 
   BorderStyle     =   3  'ũ�� ���� ��ȭ ����
   Caption         =   "�ɼ�"
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
   StartUpPosition =   2  'ȭ�� ���
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
      Caption         =   "Ȯ��"
      Default         =   -1  'True
      Height          =   375
      Left            =   3840
      TabIndex        =   1
      Top             =   4920
      Width           =   1335
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   4695
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   6495
      _ExtentX        =   11456
      _ExtentY        =   8281
      _Version        =   393216
      Tabs            =   1
      TabHeight       =   520
      TabMaxWidth     =   1764
      TabCaption(0)   =   "�Ϲ�"
      TabPicture(0)   =   "frmOptions.frx":0442
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame1"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "Frame2"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).ControlCount=   2
      Begin VB.Frame Frame2 
         Caption         =   "�� ����Ÿ"
         Height          =   1695
         Left            =   240
         TabIndex        =   5
         Top             =   1560
         Width           =   6015
         Begin VB.FileListBox lvTaskFiles 
            Height          =   270
            Left            =   3240
            TabIndex        =   14
            Top             =   1200
            Visible         =   0   'False
            Width           =   1095
         End
         Begin VB.FileListBox lvContactFiles 
            Height          =   270
            Left            =   3240
            TabIndex        =   13
            Top             =   720
            Visible         =   0   'False
            Width           =   1095
         End
         Begin VB.FileListBox lvPlanFiles 
            Height          =   270
            Left            =   3240
            TabIndex        =   12
            Top             =   240
            Visible         =   0   'False
            Width           =   1095
         End
         Begin VB.CommandButton cmdDelTasks 
            Caption         =   "��� ����(&L)"
            Height          =   375
            Left            =   4560
            TabIndex        =   11
            Top             =   1200
            Width           =   1335
         End
         Begin VB.CommandButton cmdDelContacts 
            Caption         =   "��� ����(&E)"
            Height          =   375
            Left            =   4560
            TabIndex        =   9
            Top             =   720
            Width           =   1335
         End
         Begin VB.CommandButton cmdDelPlans 
            Caption         =   "��� ����(&D)"
            Height          =   375
            Left            =   4560
            TabIndex        =   7
            Top             =   240
            Width           =   1335
         End
         Begin VB.Label Label3 
            Caption         =   "�� �۾����:"
            Height          =   255
            Left            =   240
            TabIndex        =   10
            Top             =   1320
            Width           =   2655
         End
         Begin VB.Label Label2 
            Caption         =   "�� �ּҷ�:"
            Height          =   255
            Left            =   240
            TabIndex        =   8
            Top             =   840
            Width           =   2655
         End
         Begin VB.Label Label1 
            Caption         =   "�� ����:"
            Height          =   255
            Left            =   240
            TabIndex        =   6
            Top             =   360
            Width           =   2655
         End
      End
      Begin VB.Frame Frame1 
         Caption         =   "����"
         Height          =   855
         Left            =   240
         TabIndex        =   3
         Top             =   480
         Width           =   6015
         Begin VB.CheckBox chkNoResize 
            Caption         =   "[����] �ǿ��� â ũ�� �������� �ʱ�"
            Height          =   255
            Left            =   240
            TabIndex        =   4
            Top             =   360
            Width           =   3375
         End
      End
   End
End
Attribute VB_Name = "frmOptions"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False


Private Sub cmdDelContacts_Click()
    If MsgBox("������ �����Ͻðڽ��ϱ�?", vbQuestion + vbOKCancel, "����") = vbOK Then
        If MsgBox("���� *�Ұ���*�մϴ�. ������ ��� �۾��� �����Ͻðڽ��ϱ�?", vbOKCancel + vbExclamation, "����") = vbOK Then
            On Error Resume Next
            lvTaskFiles.Path = "C:\CALPLANS\CONTACTS"
            
            Dim Contact As Integer
            Dim ContactName As String
            For Contact = 0 To lvTaskFiles.ListCount - 1
                ContactName = lvContactFiles.List(Contact)
                Kill "C:\CALPLANS\CONTACTS\" & TaskName
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
        End If
    End If
End Sub

Private Sub cmdDelTasks_Click()
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
        End If
    End If
End Sub

Private Sub Command1_Click()
    SaveSetting "Calendar", "Options", "NoResize", chkNoResize.Value
    Unload Me
End Sub

Private Sub Command2_Click()
    Unload Me
End Sub

Private Sub Form_Load()
    chkNoResize.Value = GetSetting("Calendar", "Options", "NoResize", "0")
End Sub
