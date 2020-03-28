VERSION 5.00
Begin VB.Form frmTip 
   BorderStyle     =   3  'ũ�� ���� ��ȭ ����
   Caption         =   "�˰� ��ʴϱ�"
   ClientHeight    =   3390
   ClientLeft      =   2295
   ClientTop       =   2325
   ClientWidth     =   5415
   Icon            =   "frmTip.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3390
   ScaleWidth      =   5415
   ShowInTaskbar   =   0   'False
   StartUpPosition =   1  '������ ���
   WhatsThisButton =   -1  'True
   WhatsThisHelp   =   -1  'True
   Begin VB.CheckBox chkLoadTipsAtStartup 
      Caption         =   "���� �� ǥ��(&S)"
      Height          =   315
      Left            =   120
      TabIndex        =   3
      Top             =   2940
      Width           =   2055
   End
   Begin VB.CommandButton cmdNextTip 
      Caption         =   "���� ��(&N)"
      Height          =   375
      Left            =   4080
      TabIndex        =   2
      Top             =   600
      Width           =   1215
   End
   Begin VB.PictureBox Picture1 
      BackColor       =   &H00FFFFFF&
      Height          =   2715
      Left            =   120
      Picture         =   "frmTip.frx":000C
      ScaleHeight     =   2655
      ScaleWidth      =   3675
      TabIndex        =   1
      Top             =   120
      Width           =   3735
      Begin VB.Label Label1 
         BackColor       =   &H00FFFFFF&
         Caption         =   "�˰� ��ʴϱ�.."
         Height          =   255
         Left            =   540
         TabIndex        =   5
         Top             =   180
         Width           =   2655
      End
      Begin VB.Label lblTipText 
         BackColor       =   &H00FFFFFF&
         Height          =   1635
         Left            =   180
         TabIndex        =   4
         Top             =   840
         Width           =   3255
      End
   End
   Begin VB.CommandButton cmdOK 
      Cancel          =   -1  'True
      Caption         =   "Ȯ��"
      Default         =   -1  'True
      Height          =   375
      Left            =   4080
      TabIndex        =   0
      Top             =   120
      Width           =   1215
   End
End
Attribute VB_Name = "frmTip"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

' �޸𸮿� �ִ� �� �����ͺ��̽�
Dim Tips As New Collection

' �� ������ �̸�
Const TIP_FILE = "TIPOFDAY.TXT"

' ���� ǥ�õǾ� �ִ� �� �÷����� �ε���
Dim CurrentTip As Long


Private Sub DoNextTip()

    ' ���� ���Ƿ� �����մϴ�.
    CurrentTip = Int((Tips.Count * Rnd) + 1)
    
    ' �Ǵ�, ���� ������� ǥ���� �� �ֽ��ϴ�.

'    CurrentTip = CurrentTip + 1
'    If Tips.Count < CurrentTip Then
'        CurrentTip = 1
'    End If
    
    ' ���� ǥ���մϴ�.
    frmTip.DisplayCurrentTip
    
End Sub

Function LoadTips(sFile As String) As Boolean
    Dim NextTip As String   ' �� ���� ���Ͽ��� �о� �ɴϴ�.
    Dim InFile As Integer   ' ���Ͽ� ���� ������
    
    ' ����� �� �ִ� ���� ���� �����ڸ� �����ɴϴ�.
    InFile = FreeFile
    
    ' ������ �����Ͽ����� Ȯ���մϴ�.
    If sFile = "" Then
        LoadTips = False
        Exit Function
    End If
    
    ' ������ ���� ���� ������ �ִ��� Ȯ���մϴ�.
    If Dir(sFile) = "" Then
        LoadTips = False
        Exit Function
    End If
    
    ' �ؽ�Ʈ ���Ͽ��� �÷����� �н��ϴ�.
    Open sFile For Input As InFile
    While Not EOF(InFile)
        Line Input #InFile, NextTip
        Tips.Add NextTip
    Wend
    Close InFile

    ' ���� ������ ������� ǥ���մϴ�.
    DoNextTip
    
    LoadTips = True
    
End Function

Private Sub chkLoadTipsAtStartup_Click()
    ' ���� �� �� ���� ǥ�� ���θ� �����մϴ�.
    SaveSetting App.EXEName, "Options", "���� �� �� ȭ�� ǥ��", chkLoadTipsAtStartup.Value
End Sub

Private Sub cmdNextTip_Click()
    DoNextTip
End Sub

Private Sub cmdOK_Click()
    Unload Me
End Sub

Private Sub Form_Load()
    Dim ShowAtStartup As Long
    
    ' ���� �� ǥ���� �������� Ȯ���մϴ�.
    ShowAtStartup = GetSetting(App.EXEName, "Options", "���� �� �� ȭ�� ǥ��", 1)
    If ShowAtStartup = 0 Then
        Unload Me
        Exit Sub
    End If
        
    ' Ȯ�ζ��� �����մϴ�. �����ϸ� ���� ������Ʈ���� �ٽ� ����ϰ� �˴ϴ�.
    Me.chkLoadTipsAtStartup.Value = vbChecked
    
    ' Rnd�� �����մϴ�.
    Randomize
    
    ' �� ������ �о ������ ���� ǥ���մϴ�.
    If LoadTips(App.Path & "\" & TIP_FILE) = False Then
        lblTipText.Caption = TIP_FILE & " ������ ã�� ���߽��ϱ�? " & vbCrLf & vbCrLf & _
           TIP_FILE & " ������ [�޸���]�� ����Ͽ� �� �ٿ� �� ���� �ۼ��� �� " & _
           "�ش� ���� ���α׷��� �ִ� ���͸��� �����Ͻʽÿ�."
    End If

    
End Sub

Public Sub DisplayCurrentTip()
    If Tips.Count > 0 Then
        lblTipText.Caption = Tips.Item(CurrentTip)
    End If
End Sub
