Attribute VB_Name = "ringtones"
Private Declare Function �Ҹ� Lib "kernel32" Alias "Beep" (ByVal dwFreq As Long, Optional ByVal dwDuration As Long = 250) As Long

Sub PlayNotification(Optional ByVal Number As Integer = -1)
    Dim playn As Integer
    playn = Number
    
    If Number = -1 Then playn = CInt(GetSetting("Calendar", "Options", "Notification", 0))

    Select Case playn
        Case 0
            Beep 750, 300
            
            Pause 0.1
            
            Beep 750, 300
        Case 1
            Beep 950, 700
        Case 2
            Beep 850, 250
            Beep 850, 250
            
            Pause 0.1
            
            Beep 850, 250
            Beep 850, 250
        Case 3
            Beep 850, 250
            
            Pause 0.1
            
            Beep 850, 250
            
            Pause 0.1
            
            Beep 850, 250
        Case 4
            Beep 850, 250
            Beep 850, 250
            
            Pause 0.1
            
            Beep 850, 250
            
            Pause 0.1
            
            Beep 850, 250
            Beep 850, 250
        Case 5
            Beep 523, 250
            Beep 659, 250
            Beep 782, 250
        Case 6
            Beep 850, 250
            
            Pause 0.1
            
            Beep 850, 250
            Beep 850, 250
        Case 7
            Beep 850, 250
            
            Pause 0.1
            
            Beep 850, 250
            Beep 850, 250
            
            Pause 0.1
            
            Beep 850, 250
            Beep 850, 250
            Beep 850, 250
        Case 8
            Beep 850, 250
            Beep 850, 250
            
            Pause 0.1
            
            Beep 850, 250
            Beep 850, 250
            
            Pause 0.1
            
            Beep 850, 250
            Beep 850, 250
    End Select
End Sub

Sub PlayRingtone(Optional ByVal Number As Integer = -1)
    Dim �� As Long
    
    Dim �� As Long
    Dim �� As Long
    Dim �� As Long
    
    �� = 2
    
    �� = 500
    �� = 100
    �� = 250
    
    Const �� As Long = 522
    Const �� As Long = 586
    Const �� As Long = 658
    Const �� As Long = 698
    Const �� As Long = 782
    Const �� As Long = 880
    Const �� As Long = 986
    
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

            �Ҹ� ��, �� + 40
            �Ҹ� ��
            �Ҹ� ��
            �Ҹ� �� / ��, �� + �� + �� + ��
            
            �Ҹ� �� / ��, �� + 40
            �Ҹ� ��
            �Ҹ� �� / ��
            �Ҹ� �� / ��, �� + �� + �� + ��

            �Ҹ� ��, �� + 40
            �Ҹ� ��
            �Ҹ� ��
            �Ҹ� �� / ��, �� + �� + �� + ��
            
            �Ҹ� ��, �� + ��
            �Ҹ� ��, �� + �� + �� + �� + �� + ��
            
            �Ҹ� ��, �� + ��
            �Ҹ� ��, �� + �� + �� + �� + �� + ��

            �Ҹ� ��, �� + 40
            �Ҹ� ��
            �Ҹ� ��
            �Ҹ� �� / ��, �� + �� + �� + ��
            
            �Ҹ� ��, �� + 40
            �Ҹ� ��
            �Ҹ� ��, �� + �� + �� + �� + ��
            
            �Ҹ� �� / ��, �� + 40
            �Ҹ� �� / ��
            �Ҹ� �� / ��, �� + �� + �� + ��
            
            �Ҹ� �� / ��, �� + 40
            �Ҹ� �� / ��
            �Ҹ� �� / ��
            �Ҹ� ��, �� + �� + �� + ��
    End Select
End Sub

