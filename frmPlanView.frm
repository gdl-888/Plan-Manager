VERSION 5.00
Begin VB.Form frmPlanView 
   BorderStyle     =   3  '크기 고정 대화 상자
   Caption         =   "내 일정"
   ClientHeight    =   2895
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   6285
   Icon            =   "frmPlanView.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2895
   ScaleWidth      =   6285
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows 기본값
   Begin VB.CommandButton cmdEditPlan 
      Caption         =   "수정(&E)..."
      Height          =   375
      Left            =   4920
      TabIndex        =   8
      Top             =   600
      Width           =   1215
   End
   Begin VB.CommandButton cmdClose 
      Caption         =   "확인"
      Height          =   375
      Left            =   4920
      TabIndex        =   7
      Top             =   120
      Width           =   1215
   End
   Begin VB.TextBox txtContent 
      BackColor       =   &H8000000F&
      Height          =   1575
      Left            =   120
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      ScrollBars      =   2  '수직
      TabIndex        =   6
      Top             =   1080
      Width           =   4695
   End
   Begin VB.Label lblLocation 
      BorderStyle     =   1  '단일 고정
      Height          =   255
      Left            =   600
      TabIndex        =   5
      Top             =   600
      Width           =   4215
   End
   Begin VB.Label Label2 
      Caption         =   "위치:"
      Height          =   255
      Left            =   120
      TabIndex        =   4
      Top             =   600
      Width           =   495
   End
   Begin VB.Label Label3 
      Caption         =   "에 시작합니다."
      Height          =   255
      Left            =   1800
      TabIndex        =   3
      Top             =   120
      Width           =   1815
   End
   Begin VB.Label lblTimeMin 
      Caption         =   "00분"
      Height          =   255
      Left            =   1440
      TabIndex        =   2
      Top             =   120
      Width           =   375
   End
   Begin VB.Label lblTimeHrs 
      Caption         =   "00시"
      Height          =   255
      Left            =   960
      TabIndex        =   1
      Top             =   120
      Width           =   495
   End
   Begin VB.Label Label1 
      Caption         =   "이 일정은"
      Height          =   255
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   855
   End
End
Attribute VB_Name = "frmPlanView"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public Title As String
Public CurrentDate As Date
Dim Year As Integer
Dim Month As Integer
Dim Day As Integer
Public Category As String

Private Sub cmdClose_Click()
    Unload Me
End Sub

Private Sub cmdEditPlan_Click()
    frmEditPlan.Title = Title
    frmEditPlan.txtTitle.Text = Title
    frmEditPlan.CurrentDate = CurrentDate
    frmEditPlan.txtTimeHrs.Text = Left$(lblTimeHrs.Caption, 2)
    frmEditPlan.txtTimeMin.Text = Left$(lblTimeMin.Caption, 2)
    frmEditPlan.txtTimeMin.Text = Left$(lblTimeMin.Caption, 2)
    frmEditPlan.txtCategory.Text = Category
    frmEditPlan.txtLocation.Text = Me.lblLocation.Caption
    frmEditPlan.txtContent.Text = Me.txtContent.Text
    
    frmEditPlan.Year = Year
    frmEditPlan.Day = Day
    frmEditPlan.Month = Month
    
    frmEditPlan.Show vbModal, Me
    Unload Me
End Sub

Private Sub Form_Load()
    Year = Split(CurrentDate, "-")(0)
    Month = Split(CurrentDate, "-")(1)
    Day = Split(CurrentDate, "-")(2)
End Sub
