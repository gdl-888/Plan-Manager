VERSION 5.00
Begin VB.Form frmWizard 
   BorderStyle     =   3  'ũ�� ���� ��ȭ ����
   Caption         =   "frmMagic"
   ClientHeight    =   4800
   ClientLeft      =   45
   ClientTop       =   705
   ClientWidth     =   8580
   ControlBox      =   0   'False
   Icon            =   "frmMagic.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4800
   ScaleWidth      =   8580
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows �⺻��
   Begin VB.Frame pgWizardPages 
      BorderStyle     =   0  '����
      Height          =   2055
      Index           =   2
      Left            =   2760
      TabIndex        =   8
      Top             =   1200
      Visible         =   0   'False
      Width           =   5655
      Begin VB.TextBox txtNewGroupName 
         Height          =   270
         Left            =   3960
         TabIndex        =   21
         Top             =   480
         Width           =   1215
      End
      Begin VB.TextBox txtNewCateName 
         Height          =   270
         Left            =   1080
         TabIndex        =   20
         Top             =   480
         Width           =   1215
      End
      Begin VB.CommandButton cmdAddGroup 
         Caption         =   "+"
         Height          =   255
         Left            =   5160
         TabIndex        =   19
         Top             =   480
         Width           =   255
      End
      Begin VB.CommandButton cmdRemoveGroup 
         Caption         =   "-"
         Height          =   255
         Left            =   5400
         TabIndex        =   18
         Top             =   480
         Width           =   255
      End
      Begin VB.CommandButton cmdAddCategory 
         Caption         =   "+"
         Height          =   255
         Left            =   2280
         TabIndex        =   17
         Top             =   480
         Width           =   255
      End
      Begin VB.CommandButton cmdRemoveCategory 
         Caption         =   "-"
         Height          =   255
         Left            =   2520
         TabIndex        =   16
         Top             =   480
         Width           =   255
      End
      Begin VB.ListBox lvGroups 
         Height          =   1320
         Left            =   2880
         TabIndex        =   15
         Top             =   720
         Width           =   2775
      End
      Begin VB.ListBox lvCategories 
         Height          =   1320
         Left            =   0
         TabIndex        =   13
         Top             =   720
         Width           =   2775
      End
      Begin VB.Label Label6 
         Caption         =   "customizecates"
         BeginProperty Font 
            Name            =   "����"
            Size            =   18
            Charset         =   129
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   0
         TabIndex        =   24
         Top             =   0
         Width           =   3855
      End
      Begin VB.Label Label4 
         Caption         =   "Label4"
         Height          =   255
         Left            =   2880
         TabIndex        =   14
         Top             =   480
         Width           =   1095
      End
      Begin VB.Label Label3 
         Caption         =   "Label3"
         Height          =   255
         Left            =   0
         TabIndex        =   12
         Top             =   480
         Width           =   855
      End
   End
   Begin VB.Frame pgWizardPages 
      BorderStyle     =   0  '����
      Height          =   1695
      Index           =   1
      Left            =   2760
      TabIndex        =   7
      Top             =   1200
      Visible         =   0   'False
      Width           =   5655
      Begin VB.CheckBox chkTodaysPlan 
         Caption         =   "chkTodaysPlan"
         Height          =   375
         Left            =   0
         TabIndex        =   11
         Top             =   840
         Value           =   1  'Ȯ��
         Width           =   5655
      End
      Begin VB.CheckBox chkSimpleMode 
         Caption         =   "chkSimpleMode"
         Height          =   255
         Left            =   0
         TabIndex        =   10
         Top             =   480
         Width           =   5655
      End
      Begin VB.Label Label2 
         Caption         =   "selectlayout"
         BeginProperty Font 
            Name            =   "����"
            Size            =   18
            Charset         =   129
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   0
         TabIndex        =   23
         Top             =   0
         Width           =   2535
      End
   End
   Begin VB.Frame pgWizardPages 
      BorderStyle     =   0  '����
      Height          =   3015
      Index           =   0
      Left            =   2760
      TabIndex        =   6
      Top             =   1200
      Width           =   3375
      Begin VB.ComboBox cmbLanguageSelect 
         Height          =   300
         Left            =   0
         Style           =   2  '��Ӵٿ� ���
         TabIndex        =   9
         Top             =   600
         Width           =   3255
      End
      Begin VB.Label Label5 
         Caption         =   "Select a language..."
         BeginProperty Font 
            Name            =   "����"
            Size            =   18
            Charset         =   129
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   0
         TabIndex        =   22
         Top             =   0
         Width           =   3375
      End
   End
   Begin VB.CommandButton cmdNext 
      Caption         =   "next"
      Height          =   375
      Left            =   5880
      TabIndex        =   5
      Top             =   4320
      Width           =   1215
   End
   Begin VB.CommandButton cmdBack 
      Caption         =   "back"
      Enabled         =   0   'False
      Height          =   375
      Left            =   4560
      TabIndex        =   4
      Top             =   4320
      Width           =   1215
   End
   Begin VB.CommandButton cmdStart 
      Caption         =   "start"
      Enabled         =   0   'False
      Height          =   375
      Left            =   7200
      TabIndex        =   2
      Top             =   4320
      Width           =   1215
   End
   Begin VB.CommandButton cmdExit 
      Caption         =   "exit"
      Height          =   375
      Left            =   2760
      TabIndex        =   1
      Top             =   4320
      Width           =   1215
   End
   Begin VB.PictureBox Picture1 
      Height          =   4575
      Left            =   120
      Picture         =   "frmMagic.frx":0442
      ScaleHeight     =   4515
      ScaleWidth      =   2475
      TabIndex        =   0
      Top             =   120
      Width           =   2535
   End
   Begin VB.Label Label1 
      Caption         =   $"frmMagic.frx":24BB4
      Height          =   975
      Left            =   2760
      TabIndex        =   3
      Top             =   120
      Width           =   5655
   End
End
Attribute VB_Name = "frmWizard"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim CurrentPage As Integer

Private Sub cmdCancel_Click()
    Unload Me
End Sub

Private Sub cmbLanguageSelect_Click()
    Select Case cmbLanguageSelect.ListIndex
        Case 0
            cmdExit.Caption = "����(&X)"
            cmdBack.Caption = "< ����(&B)"
            cmdNext.Caption = "����(&N) >"
            cmdStart.Caption = "����(&S)"
            
            Label2.Caption = "���̾ƿ� ����..."
            
            chkSimpleMode.Caption = "���� ��� - ū ���� �޴��� ����� ������ �޴��ٸ� ǥ���մϴ�."
            chkTodaysPlan.Caption = "������ ���� ��� - â ������ ������ ���� ����� �����ݴϴ�."
            
            Label6.Caption = "�з� �� �׷� ����"
            
            Label3.Caption = "���� �з�:"
            Label4.Caption = "�ּҷ� �׷�:"
            
            Me.Caption = "�ʱ� ���� ������"
            
            lvCategories.Clear
            lvGroups.Clear
            
            lvCategories.AddItem "����"
            lvCategories.AddItem "������Ȱ"
            lvCategories.AddItem "���"
            lvCategories.AddItem "���"
            
            lvGroups.AddItem "����"
            lvGroups.AddItem "����"
            lvGroups.AddItem "ģ��"
            lvGroups.AddItem "ģô"
            
        Case 1
            cmdExit.Caption = "E&xit"
            cmdBack.Caption = "< &Back"
            cmdNext.Caption = "&Next >"
            cmdStart.Caption = "&Start"
            
            Label2.Caption = "Tweak layout..."
            
            chkSimpleMode.Caption = "Simple mode - Shows only the menubar and hides the ribbon."
            chkTodaysPlan.Caption = "Today's Plan - Shows a list about today's plan on the window."
            
            Label6.Caption = "Customize categories"
            
            Label3.Caption = "Category:"
            Label4.Caption = "Group:"
            
            Me.Caption = "Initialization Wizard"
            
            lvCategories.Clear
            lvGroups.Clear
            
            lvCategories.AddItem "Working"
            lvCategories.AddItem "Leisure life"
            lvCategories.AddItem "Meeting"
            lvCategories.AddItem "Hobby"
            
            lvGroups.AddItem "Family"
            lvGroups.AddItem "Co-workers"
            lvGroups.AddItem "Friends"
            lvGroups.AddItem "Relatives"
    End Select
End Sub

Private Sub cmdAddCategory_Click()
    lvCategories.AddItem txtNewCateName.Text
    
    txtNewCateName.Text = ""
End Sub

Private Sub cmdAddGroup_Click()
    lvGroups.AddItem txtNewGroupName.Text
    
    txtNewGroupName.Text = ""
End Sub

Private Sub cmdBack_Click()
    pgWizardPages(CurrentPage).Visible = False
    CurrentPage = CurrentPage - 1
    
    cmdBack.Enabled = True
    cmdNext.Enabled = True
    cmdStart.Enabled = False
    
    If CurrentPage = 2 Then
        cmdNext.Enabled = False
        cmdStart.Enabled = True
    End If
    
    If CurrentPage <= 1 Then
        cmdBack.Enabled = False
    End If
    
    pgWizardPages(CurrentPage).Visible = True
End Sub

Private Sub cmdExit_Click()
    End
End Sub

Private Sub cmdNext_Click()
    pgWizardPages(CurrentPage).Visible = False
    CurrentPage = CurrentPage + 1
    
    cmdBack.Enabled = True
    cmdNext.Enabled = True
    cmdStart.Enabled = False
    
    If CurrentPage = 2 Then
        cmdNext.Enabled = False
        cmdStart.Enabled = True
    End If
    
    If CurrentPage <= 1 Then
        cmdBack.Enabled = False
    End If
    
    pgWizardPages(CurrentPage).Visible = True
End Sub

Private Sub ComboBox1_Change()

End Sub

Private Sub cmdRemoveCategory_Click()
    On Error Resume Next
    lvCategories.RemoveItem lvCategories.ListIndex
End Sub

Private Sub cmdRemoveGroup_Click()
    On Error Resume Next
    lvGroups.RemoveItem lvGroups.ListIndex
End Sub

Private Sub cmdStart_Click()
    On Error Resume Next
    
    SaveSetting "Calendar", "Options", "NoRibbon", chkSimpleMode.Value
    
    SaveSetting "Calendar", "Options", "Language", cmbLanguageSelect.ListIndex
    
    If chkTodaysPlan.Value = 1 Then
        SaveSetting "Calendar", "Options", "TP", 0
    Else
        SaveSetting "Calendar", "Options", "TP", 1
    End If
    
    Dim i As Integer
    
    MkDir "C:\CALPLANS"
    MkDir "C:\CALPLANS\CTGORIES"
    MkDir "C:\CALPLANS\CTGROUPS"
    
    For i = 0 To lvCategories.ListCount - 1
        CreateFile "C:\CALPLANS\CTGORIES\" & lvCategories.List(i)
    Next i
    
    For i = 0 To lvGroups.ListCount - 1
        CreateFile "C:\CALPLANS\CTGROUPS\" & lvGroups.List(i)
    Next i
    
    Unload Me
End Sub

Private Sub Form_Load()
    CurrentPage = 0
    
    cmbLanguageSelect.AddItem "�ѱ���"
    cmbLanguageSelect.AddItem "English"
    
    cmbLanguageSelect.ListIndex = 0
    
    cmbLanguageSelect_Click
End Sub