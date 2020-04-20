Attribute VB_Name = "ringtones"
Sub PlayNotification(Optional ByVal Number As Integer = -1)
    Dim playn As Integer
    playn = Number
    
    If Number = -1 Then playn = CInt(GetSetting("Calendar", "Options", "Notification", 0))

    Select Case playn
        Case 0
            Beep 750, 300
            Beep 750, 300
        Case 1
            Beep 950, 700
    End Select
End Sub

Sub PlayRingtone(Optional ByVal Number As Integer = -1)
    Dim playn As Integer
    playn = Number
    
    If Number = -1 Then playn = CInt(GetSetting("Calendar", "Options", "Ringtone", 0))
    
    Select Case playn
        Case 0
            Beep 750, 300
            Beep 850, 300
            Beep 750, 300
            Beep 650, 300
            
            Beep 750, 300
            Beep 750, 300
            Beep 750, 300
            
            Beep 850, 300
            Beep 850, 300
            Beep 850, 300
            
            Beep 750, 300
            Beep 750, 300
            Beep 750, 300
            
            Beep 650, 300
            Beep 550, 300
            Beep 450, 300
            
        Case 1
            Beep 350, 300
            Beep 450, 300
            Beep 550, 300
            Beep 650, 300
            Beep 750, 300
            Beep 850, 300
            Beep 950, 300
            Beep 1050, 300
            
            Beep 950, 300
            Beep 850, 300
            Beep 750, 300
            Beep 650, 300
            Beep 550, 300
            Beep 450, 300
            Beep 350, 300
            
            Beep 450, 300
            Beep 550, 300
            Beep 650, 300
            Beep 750, 300
            Beep 850, 300
            Beep 950, 300
            Beep 1050, 300
            
        Case 2
            '������ ��� Play �Լ� �־�����...
            
'            Beep 560, 300 '��
'            Beep 620, 300 '��
'            Beep 690, 300 '��
'            Beep 770, 300 '��
'            Beep 850, 300 '��
'            Beep 950, 300 '��
'            Beep 1020, 300 '��
'            Beep 1090, 300 '��+1
            
            Beep 560, 200 '��
            Beep 690, 200 '��
            Beep 560, 200 '��
            Beep 460, 600 '��
            
            Beep 440, 200
            Beep 690, 200 '��
            Beep 440, 200
            Beep 390, 600
            
            Beep 770, 300 '��
            Beep 690, 300 '��
            
            Beep 560, 200 '��
            Beep 690, 200 '��
            Beep 560, 200 '��
            Beep 460, 600 '��
            
            Beep 770, 300 '��
            Beep 690, 500 '��
            
            Beep 600, 300 '��
            Beep 690, 600 '��
            
            Beep 560, 200 '��
            Beep 690, 200 '��
            Beep 560, 200 '��
            Beep 460, 600 '��
            
            Beep 690, 200 '��
            Beep 850, 200 '��
            Beep 690, 200 '��
            Beep 560, 600 '��
            
            Beep 540, 300
            Beep 500, 500
            
            Beep 390, 300 '��
            Beep 460, 200 '��
            Beep 460, 500 '��
            
            Beep 460, 300 '��
            Beep 390, 300 '��
            Beep 460, 300 '��
            Beep 620, 300 '��
            Beep 560, 600 '��
    End Select
End Sub

