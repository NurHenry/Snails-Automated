#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%

; Made by Henry

Gui +LastFound +AlwaysOnTop +ToolWindow 
Gui, Color, 808080 
Gui, Add, Text, x+10 y+10 w200 h60 vStatusText cWhite, Script is running! Press F5 to start! Press F9 to cancel
Gui, Show, x0 y0
WinSet, Transparent, 150, A 

; ------------------------------------------------ Row One ----------------------------------------------

F5:: 
Loop {  
    SendInput, i ; open inv
    Sleep 1000

    Click, 219, 278 ; click inplant
    Sleep 6000 ; cooldown for eat

    SendInput, e ; kill lol
    Sleep 10000 ; wait for blackscreen to go

    Click, 175, 963 ;click on search bar
    Sleep 1000

    SendInput, 1 ; BED ONE ------------------------
    Sleep 1000

    Click, 280, 219 ; select bed where to spawn
    Sleep 900

    Click, 1626, 960 ; click on the respawn button
    Sleep 10000 ; wait for spawn animation


    ; after the thing 


    Send, {Down down} ; look down
    Sleep, 270
    Send, {Down up}

    Sleep 1000 ; small break

    Send, {A down} ; go left to first snail
    Sleep, 420
    Send, {A up}

    ; -- loop
    Loop 48 { 

        Sleep 1500 ; small break

        SendInput, f ; open inv from snail
        Sleep 1000

        Click, 1263, 197 ;go in search bar
        Sleep 1000
        SendInput, paste
        Sleep 500

        Click, 1382, 199 ; transfer all 

        Sleep 500

        Send {ESC}

        Sleep 500

        MouseMove, -500, 0, 50, R

        Sleep 500

        SendInput, e

        Sleep 700

        Send {W down} 
        Sleep 580
        Send {W up} 

        Sleep 500

        MouseMove, 500, 0, 50, R

    }
    ; one last time because loop is ripped lol
    Sleep 2000 ; small break after loop

    SoundBeep, 400, 300 ; indicator loop is over

    SendInput, f ; open inv last time

    Sleep 2000

    Click, 1263, 197 ;go in search bar
    Sleep 1000
    SendInput, paste

    Sleep 2000

    Click, 1382, 199 ; transfer all 

    Sleep 2000

    Send {ESC}

    Sleep 2000

    MouseMove, -500, 0, 50, R

    Sleep 2000

    Send {W down} 
    Sleep 200
    Send {W up} 

    Sleep 2000

    SendInput, e

    SoundBeep, 400, 300 



    ; --------------------------------------------ROW 2 BEGINN HERE ------------------------------------------------



    SendInput, i ; open inv
    Sleep 1000

    Click, 219, 278 ; click inplant
    Sleep 6000 ; cooldown for eat

    SendInput, e ; kill lol
    Sleep 10000 ; wait for blackscreen to go

    Click, 175, 963 ;click on search bar
    Sleep 1000

    SendInput, 2 ; BED TWO ------------------------
    Sleep 1000

    Click, 280, 219 ; select bed where to spawn
    Sleep 900

    Click, 1626, 960 ; click on the respawn button
    Sleep 10000 ; wait for spawn animation


    ; after the thing 


    Send, {Down down} ; look down
    Sleep, 270
    Send, {Down up}

    Sleep 1000 ; small break

    Send, {A down} ; go left to first snail
    Sleep, 420
    Send, {A up}


    Loop 48 { 

        Sleep 1500 ; small break

        SendInput, f ; open inv
        Sleep 1000

        Click, 1263, 197 ;go in search bar
        Sleep 1000
        SendInput, paste
        Sleep 500

        Click, 1382, 199 ; transfer all 

        Sleep 500

        Send {ESC}

        Sleep 500

        MouseMove, -500, 0, 50, R

        Sleep 500

        SendInput, e

        Sleep 700

        Send {W down} 
        Sleep 580
        Send {W up} 

        Sleep 500

        MouseMove, 500, 0, 50, R

    }
    ; one last time because loop is ripped lol
    Sleep 2000 ; small break after loop

    SoundBeep, 400, 300 ; indicator loop is over

    SendInput, f ; open inv last time

    Sleep 2000

    Click, 1263, 197 ;go in search bar
    Sleep 1000
    SendInput, paste

    Sleep 2000

    Click, 1382, 199 ; transfer all 

    Sleep 2000

    Send {ESC}

    Sleep 2000

    MouseMove, -500, 0, 50, R

    Sleep 2000

    Send {W down} 
    Sleep 200
    Send {W up} 

    Sleep 2000

    SendInput, e

    SoundBeep, 400, 300 ; dead end row 2



    ; --------------------------------------------ROW 3 BEGINN HERE ------------------------------------------------



    SendInput, i ; open inv
    Sleep 1000

    Click, 219, 278 ; click inplant
    Sleep 6000 ; cooldown for eat

    SendInput, e ; kill lol
    Sleep 10000 ; wait for blackscreen to go

    Click, 175, 963 ;click on search bar
    Sleep 1000

    SendInput, 3 ; BED three ------------------------
    Sleep 1000

    Click, 280, 219 ; select bed where to spawn
    Sleep 900

    Click, 1626, 960 ; click on the respawn button
    Sleep 10000 ; wait for spawn animation


    ; after the thing 


    Send, {Down down} ; look down
    Sleep, 270
    Send, {Down up}

    Sleep 1000 ; small break

    Send, {A down} ; go left to first snail
    Sleep, 420
    Send, {A up}


    Loop 48 { 

        Sleep 1500 ; small break

        SendInput, f ; open inv
        Sleep 1000

        Click, 1263, 197 ;go in search bar
        Sleep 1000
        SendInput, paste
        Sleep 500

        Click, 1382, 199 ; transfer all 

        Sleep 500

        Send {ESC}

        Sleep 500

        MouseMove, -500, 0, 50, R

        Sleep 500

        SendInput, e

        Sleep 700

        Send {W down} 
        Sleep 580
        Send {W up} 

        Sleep 500

        MouseMove, 500, 0, 50, R

    }
    ; one last time because loop is ripped lol
    Sleep 2000 ; small break after loop

    SoundBeep, 400, 300 ; indicator loop is over

    SendInput, f ; open inv last time

    Sleep 2000

    Click, 1263, 197 ;go in search bar
    Sleep 1000
    SendInput, paste

    Sleep 2000

    Click, 1382, 199 ; transfer all 

    Sleep 2000

    Send {ESC}

    Sleep 2000

    MouseMove, -500, 0, 50, R

    Sleep 2000

    Send {W down} 
    Sleep 200
    Send {W up} 

    Sleep 2000

    SendInput, e

    SoundBeep, 400, 300 




    ; --------------------------------------------ROW 4 BEGINN HERE ------------------------------------------------




    SendInput, i ; open inv
    Sleep 1000

    Click, 219, 278 ; click inplant
    Sleep 6000 ; cooldown for eat

    SendInput, e ; kill lol
    Sleep 10000 ; wait for blackscreen to go

    Click, 175, 963 ;click on search bar
    Sleep 1000

    SendInput, 4 ; BED four ------------------------
    Sleep 1000

    Click, 280, 219 ; select bed where to spawn
    Sleep 900

    Click, 1626, 960 ; click on the respawn button
    Sleep 10000 ; wait for spawn animation


    ; after the thing 


    Send, {Down down} ; look down
    Sleep, 270
    Send, {Down up}

    Sleep 1000 ; small break

    Send, {A down} ; go left to first snail
    Sleep, 420
    Send, {A up}


    Loop 48 { 

        Sleep 1500 ; small break

        SendInput, f ; open inv
        Sleep 1000

        Click, 1263, 197 ;go in search bar
        Sleep 1000
        SendInput, paste
        Sleep 500

        Click, 1382, 199 ; transfer all 

        Sleep 500

        Send {ESC}

        Sleep 500

        MouseMove, -500, 0, 50, R

        Sleep 500

        SendInput, e

        Sleep 700

        Send {W down} 
        Sleep 580
        Send {W up} 

        Sleep 500

        MouseMove, 500, 0, 50, R

    }
    ; one last time because loop is ripped lol
    Sleep 2000 ; small break after loop

    SoundBeep, 400, 300 ; indicator loop is over

    SendInput, f ; open inv last time

    Sleep 2000

    Click, 1263, 197 ;go in search bar
    Sleep 1000
    SendInput, paste

    Sleep 2000

    Click, 1382, 199 ; transfer all 

    Sleep 2000

    Send {ESC}

    Sleep 2000

    MouseMove, -500, 0, 50, R

    Sleep 2000

    Send {W down} 
    Sleep 200
    Send {W up} 

    Sleep 2000

    SendInput, e

    SoundBeep, 400, 300 



    ; --------------------------------------------ROW 5 BEGINN HERE ------------------------------------------------




    SendInput, i ; open inv
    Sleep 1000

    Click, 219, 278 ; click inplant
    Sleep 6000 ; cooldown for eat

    SendInput, e ; kill lol
    Sleep 10000 ; wait for blackscreen to go

    Click, 175, 963 ;click on search bar
    Sleep 1000

    SendInput, 4 ; BED four ------------------------
    Sleep 1000

    Click, 280, 219 ; select bed where to spawn
    Sleep 900

    Click, 1626, 960 ; click on the respawn button
    Sleep 10000 ; wait for spawn animation


    ; after the thing 


    Send, {Down down} ; look down
    Sleep, 270
    Send, {Down up}

    Sleep 1000 ; small break

    Send, {A down} ; go left to first snail
    Sleep, 420
    Send, {A up}


    Loop 48 { 

        Sleep 1500 ; small break

        SendInput, f ; open inv
        Sleep 1000

        Click, 1263, 197 ;go in search bar
        Sleep 1000
        SendInput, paste
        Sleep 500

        Click, 1382, 199 ; transfer all 

        Sleep 500

        Send {ESC}

        Sleep 500

        MouseMove, -500, 0, 50, R

        Sleep 500

        SendInput, e

        Sleep 700

        Send {W down} 
        Sleep 580
        Send {W up} 

        Sleep 500

        MouseMove, 500, 0, 50, R

    }
    ; one last time because loop is ripped lol
    Sleep 2000 ; small break after loop

    SoundBeep, 400, 300 ; indicator loop is over

    SendInput, f ; open inv last time

    Sleep 2000

    Click, 1263, 197 ;go in search bar
    Sleep 1000
    SendInput, paste

    Sleep 2000

    Click, 1382, 199 ; transfer all 

    Sleep 2000

    Send {ESC}

    Sleep 2000

    MouseMove, -500, 0, 50, R

    Sleep 2000

    Send {W down} 
    Sleep 200
    Send {W up} 

    Sleep 2000

    SendInput, e

    SoundBeep, 400, 300 
    Sleep 1000
    SoundBeep, 400, 300 
    Sleep 1000
    SoundBeep, 400, 300 ; end alert
}

; end 

F9::ExitApp 