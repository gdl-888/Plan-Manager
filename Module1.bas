Attribute VB_Name = "default"
'시스템 트레이 소스코드 퍼온곳 - http://www.vbforums.com/showthread.php?595990-VB6-System-tray-icon-systray

Public MSGRS As Boolean

Public fMainForm As frmMain


'http://www.vbforums.com/showthread.php?447184-Check-For-Running-Process
Option Explicit
Private Declare Function OpenProcess Lib "kernel32" ( _
    ByVal dwDesiredAccess As Long, ByVal bInheritHandle As Long, ByVal dwProcessId As Long) As Long
    
Private Declare Function CloseHandle Lib "kernel32" ( _
    ByVal hObject As Long) As Long
 
Private Declare Function EnumProcesses Lib "PSAPI.DLL" ( _
   lpidProcess As Long, ByVal cb As Long, cbNeeded As Long) As Long
 
Private Declare Function EnumProcessModules Lib "PSAPI.DLL" ( _
    ByVal hProcess As Long, lphModule As Long, ByVal cb As Long, lpcbNeeded As Long) As Long
 
Private Declare Function GetModuleBaseName Lib "PSAPI.DLL" Alias "GetModuleBaseNameA" ( _
    ByVal hProcess As Long, ByVal hModule As Long, ByVal lpFileName As String, ByVal nSize As Long) As Long
 
Private Const PROCESS_VM_READ = &H10
Private Const PROCESS_QUERY_INFORMATION = &H400

Declare Sub Sleep Lib "kernel32" (ByVal dwMilliseconds As Long)
'파일 존재 확인 함수
'http://www.vbforums.com/showthread.php?349990-Classic-VB-How-can-I-check-if-a-file-exists
'In a standard Module: Module1.bas
Private Const OF_EXIST         As Long = &H4000
Private Const OFS_MAXPATHNAME  As Long = 128
Private Const HFILE_ERROR      As Long = -1
 
Private Type OFSTRUCT
    cBytes As Byte
    fFixedDisk As Byte
    nErrCode As Integer
    Reserved1 As Integer
    Reserved2 As Integer
    szPathName(OFS_MAXPATHNAME) As Byte
End Type
 
Public Declare Function OpenFile Lib "kernel32" (ByVal lpFileName As String, _
                        lpReOpenBuff As OFSTRUCT, ByVal wStyle As Long) As Long
                        
Public Declare Function Beep Lib "kernel32" (ByVal dwFreq As Long, ByVal dwDuration As Long) As Long
                        
'https://stackoverflow.com/questions/15960295/playing-windows-system-sounds-from-vb6
Public Declare Function MessageBeep Lib "user32" (ByVal wType As Long) As Long
Public Const MB_BEEP As Long = -1   ' the default beep sound
Public Const MB_ERROR As Long = 16        ' for critical errors/problems
Public Const MB_WARNING As Long = 48      ' for conditions that might cause problems in the future
Public Const MB_INFORMATION As Long = 64  ' for informative messages only
Public Const MB_QUESTION As Long = 32     ' (no longer recommended to be used)

Function GetWinver(ByVal Typ As Integer) As Integer
    Dim arr(2) As Integer
    Dim WinVer As String
    
    Dim Registry As Object
    
    Set Registry = CreateObject("WScript.Shell")
    
    WinVer = CStr(Registry.RegRead("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows NT\CurrentVersion\CurrentVersion"))
    
    If Typ = 1 Then
        GetWinver = CInt(Split(WinVer, ".")(0))
    Else
        GetWinver = CInt(Split(WinVer, ".")(1))
    End If
End Function

Private Function IsProcessRunning(ByVal sProcess As String) As Boolean
    Const MAX_PATH As Long = 260
    Dim lProcesses() As Long, lModules() As Long, N As Long, lRet As Long, hProcess As Long
    Dim sName As String
    
    sProcess = UCase$(sProcess)
    
    ReDim lProcesses(1023) As Long
    If EnumProcesses(lProcesses(0), 1024 * 4, lRet) Then
        For N = 0 To (lRet \ 4) - 1
            hProcess = OpenProcess(PROCESS_QUERY_INFORMATION Or PROCESS_VM_READ, 0, lProcesses(N))
            If hProcess Then
                ReDim lModules(1023)
                If EnumProcessModules(hProcess, lModules(0), 1024 * 4, lRet) Then
                    sName = String$(MAX_PATH, vbNullChar)
                    GetModuleBaseName hProcess, lModules(0), sName, MAX_PATH
                    sName = Left$(sName, InStr(sName, vbNullChar) - 1)
                    If Len(sName) = Len(sProcess) Then
                        If sProcess = UCase$(sName) Then IsProcessRunning = True: Exit Function
                    End If
                End If
            End If
            CloseHandle hProcess
        Next N
    End If
End Function

'http://www.devpia.com/MAEUL/Contents/Detail.aspx?BoardID=48&MAEULNo=19&no=2034&ref=1001
Public Function LenH(ByVal strValue As String) As Integer
    LenH = LenB(StrConv(strValue, vbFromUnicode))
End Function
                        
Sub MessageBox(Content As String, Title As String, Optional OwnerForm As Form = 1, Optional Icon As Long = 64, Optional timeout As Integer = -1, Optional modal As Boolean = True) 'Windows Vista 이상 윈도우에서 Windws 2000 스타일 메시지 상자 표시
    'http://www.vbforums.com/showthread.php?353910-Read-registry-key-SOLVED
    '사용중인 윈도우가 XP 이하이면 이 메시지 상자 표시이유가 없으므로 실제 메시지상자 표시
    On Error Resume Next
    
    Dim Registry As Object
    
    Set Registry = CreateObject("WScript.Shell")
    
    If CDec(Registry.RegRead("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows NT\CurrentVersion\CurrentVersion")) < 6 And timeout = -1 Then
        MsgBox Content, Icon, Title
        Exit Sub
    End If
    
    '=====================================================
    
    Select Case Icon
        Case 48
            msgXPMB.imgMBIconWarning.Visible = True
        Case 16
            msgXPMB.imgMBIconError.Visible = True
        Case 64
            msgXPMB.imgMBIconInfo.Visible = True
    End Select
    
    Dim i As Integer
    Dim LineCount As Integer
    Dim LContent As Integer
    LContent = 0
    LineCount = 1
    For i = 1 To Len(Content)
        If Mid$(Content, i, Len(vbCrLf)) = vbCrLf Then LineCount = LineCount + 1
    Next i
    
    Dim S As Integer
    For S = 1 To UBound(Split(Content, vbCrLf))
        If LenH(Split(Content, vbCrLf)(S)) > LContent Then LContent = LenH(Split(Content, vbCrLf)(S))
    Next S
    
    If LContent = 0 Then LContent = LenH(Content)
    
    LineCount = LineCount + 1
    msgXPMB.lblContent.Height = 240 * LineCount
    msgXPMB.Height = 1575 + LineCount * 240 - 300 + 50
    msgXPMB.Caption = Title
    msgXPMB.lblContent.Caption = Content
    msgXPMB.Width = 2040 + (LContent * 85)
    msgXPMB.cmdOK.Left = msgXPMB.Width / 2 - 810
    msgXPMB.cmdOK.Top = 840 + ((LineCount - 1) * 240) - 200
    msgXPMB.BeepSnd = Icon
    If modal Then
        msgXPMB.Show vbModal, OwnerForm
    Else
        msgXPMB.Show
    End If
    If timeout >= 0 Then
        msgXPMB.timeout.Interval = timeout
        msgXPMB.timeout.Enabled = -1
    End If
End Sub

Function Confirm(Content As String, Title As String, Optional OwnerForm As Form = 1, Optional Icon As Long = 32, Optional BtnReversed As Boolean = False) As Boolean 'Windows Vista 이상 윈도우에서 Windws 2000 스타일 메시지 상자 표시
    '=====================================================
    
    Select Case Icon
        Case 48
            msgXPOC.imgMBIconWarning.Visible = True
        Case 16
            msgXPOC.imgMBIconError.Visible = True
        Case 64
            msgXPOC.imgMBIconInfo.Visible = True
        Case 32
            msgXPOC.imgMBIconQuestion.Visible = True
    End Select
    
    Dim i As Integer
    Dim LineCount As Integer
    Dim LContent As Integer
    LContent = 0
    LineCount = 1
    For i = 1 To Len(Content)
        If Mid$(Content, i, Len(vbCrLf)) = vbCrLf Then LineCount = LineCount + 1
    Next i
    
    Dim S As Integer
    For S = 1 To UBound(Split(Content, vbCrLf))
        If LenH(Split(Content, vbCrLf)(S)) > LContent Then LContent = LenH(Split(Content, vbCrLf)(S))
    Next S
    
    If LContent = 0 Then LContent = LenH(Content)
    
    LineCount = LineCount + 1
    msgXPOC.lblContent.Height = 240 * LineCount
    msgXPOC.Height = 1575 + LineCount * 240 - 300 + 50
    msgXPOC.Caption = Title
    msgXPOC.lblContent.Caption = Content
    msgXPOC.Width = 2040 + (LContent * 85)
    msgXPOC.cmdOK.Left = msgXPOC.Width / 2 - 810 - msgXPOC.cmdOK.Width / 2
    msgXPOC.cmdOK.Top = 840 + ((LineCount - 1) * 240) - 200
    msgXPOC.cmdCancel.Left = msgXPOC.Width / 2 - 810 - msgXPOC.cmdOK.Width / 2 - 120 + msgXPOC.cmdOK.Width + 240
    msgXPOC.cmdCancel.Top = 840 + ((LineCount - 1) * 240) - 200
    msgXPOC.BeepSnd = Icon
    
    If BtnReversed = True And 0 Then
        Dim LB As Integer
        LB = msgXPOC.cmdOK.Left
        Dim RB As Integer
        RB = msgXPOC.cmdCancel.Left
        
        msgXPOC.cmdCancel.Left = LB
        msgXPOC.cmdOK.Left = RB
    End If
    
    msgXPOC.Show vbModal, OwnerForm
    
    Confirm = MSGRS
End Function
 
Public Function FileExists(ByVal Fname As String) As Boolean
    Dim lRetVal As Long
    Dim OfSt As OFSTRUCT
    
    lRetVal = OpenFile(Fname, OfSt, OF_EXIST)
    If lRetVal <> HFILE_ERROR Then
        FileExists = True
    Else
        FileExists = False
    End If
    
End Function

Public Function StringAt(ByVal Text As String, pos) As String
    StringAt = Mid$(Text, pos, 1)
End Function

Public Function PlayFair(ByVal Text As String, Key As String, Optional Mode As Integer = 1) As String
    Text = UCase(Text)
    Key = UCase(Key)
    
    Dim i As Integer
    Dim p As Integer
    p = 1
    
    Dim RetVal As String
    RetVal = ""
    
    For i = 1 To Len(Text)
        If p > Len(Key) Then p = 1
        
        If StringAt(Text, i) = " " Then
            RetVal = RetVal & " "
            GoTo endfor
        End If
        
        If Mode = 2 Then
            RetVal = RetVal & ChrW$(Asc(StringAt(Text, i)) - (Asc(StringAt(Key, p))) - 64)
        Else
            RetVal = RetVal & ChrW$(Asc(StringAt(Text, i)) + Asc(StringAt(Key, p)) - 64)
        End If
        
endfor:
        p = p + 1
    Next i
    
    PlayFair = RetVal
End Function

Function DayOfWeek() As Integer
    Dim DOW As String
    Select Case DatePart("w", Now)
        Case vbSunday
            DOW = 0
        Case vbMonday
            DOW = 1
        Case vbTuesday
            DOW = 2
        Case vbWednesday
            DOW = 3
        Case vbThursday
            DOW = 4
        Case vbFriday
            DOW = 5
        Case vbSaturday
            DOW = 6
    End Select
    
    DayOfWeek = DOW
End Function

Function LoadLang(ByVal Korean, Optional English = "", Optional Spanish = "", Optional Chinese = "")
    Select Case GetSetting("Calendar", "Options", "Language", 0)
        Case 0
            LoadLang = Korean
        Case 1
            If English = "" Then
                LoadLang = Korean
            Else
                LoadLang = English
            End If
        Case 2
            If Spanish = "" Then
                LoadLang = English
            Else
                LoadLang = Spanish
            End If
        Case 3
            If Chinese = "" Then
                LoadLang = English
            Else
                LoadLang = Chinese
            End If
    End Select
End Function

Sub CreateFile(ByVal FilePath As String, Optional Content As String = "")
    'https://stackoverflow.com/questions/21108664/how-to-create-txt-file
    Dim iFileNo As Integer
    iFileNo = FreeFile
    '파일을 연다.
    
    Open FilePath For Output As #iFileNo
    
    Print #iFileNo, Content
    
    '파일을 닫는다.
    Close #iFileNo
End Sub

'출처: http://www.vbforums.com/showthread.php?546633-VB6-Sleep-Function

' Credits: (Milk (Sleep+Pause Sub)). (Wayne Spangler (Pause Sub))
Sub Pause(ByVal Delay As Single)
   Delay = Timer + Delay
   If Delay > 86400 Then 'more than number of seconds in a day
      Delay = Delay - 86400
      Do
          DoEvents ' to process events.
          Sleep 1 ' to not eat cpu
      Loop Until Timer < 1
   End If
   Do
       DoEvents ' to process events.
       Sleep 1 ' to not eat cpu
   Loop While Delay > Timer
End Sub

Sub Main()
    frmMain.Show
End Sub

