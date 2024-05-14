#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%


; ----------------------------- GUI ----------------------------- 


Gui +LastFound +AlwaysOnTop +ToolWindow 
Gui, Color, 808080 
Gui, Add, Text, x10 y10 w280 h60 vStatusText cWhite, Script is running! Press F5 to start! Press F9 to cancel

Gui, Add, Text, x10 y80 w280 h20 vDebugText cYellow, Debug Information:
Gui, Add, Text, x10 y100 w280 h20 vDebugInfo cYellow, this is it

Gui, Show, x0 y0 w300 h130, Snail Collection Script
WinSet, Transparent, 150, A 


; ----------------------------- Functions -----------------------------


UpdateDebug(debugText) {
    GuiControl,, DebugInfo, %debugText%
}

kill_respawn(bednumber) {

    UpdateDebug("Killing the Player. Spawn at Row:" bednumber)

    SendInput, i ; open inv
    Sleep 1000
    
    Click, 219, 278 ; click inplant
    Sleep 6000 ; cooldown for eat
    
    SendInput, e ; kill lol
    Sleep 10000 ; wait for blackscreen to go
    
    Click, 175, 963 ;click on search bar
    Sleep 1000
    
    SendInput, %bednumber% ; bed number inside function call
    Sleep 1000
    
    Click, 280, 219 ; select bed where to spawn
    Sleep 900
    
    Click, 1626, 960 ; click on the respawn button
    Sleep 10000 ; wait for spawn animation

}

first_snail() {

    UpdateDebug("Collecting the First snail")

    Send, {Down down} ; look down
    Sleep, 270
    Send, {Down up}

    Sleep 1000 ; small break

    Send, {A down} ; go left to first snail
    Sleep, 420
    Send, {A up}
}

collection_loop() {

    UpdateDebug("Collecting the Cement...")

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
}

collect_and_store() {

    UpdateDebug("Collect last snail + store the Cement...")

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
}


; ----------------------------- Worker -----------------------------


F5:: 
Loop {
    
    Sleep 2000

; ------ Row 1 ------
    kill_respawn(1)
    Sleep 2000
    first_snail()
    Sleep 2000
    collection_loop()
    Sleep 2000
    collect_and_store()

    Sleep 2000

; ------ Row 2 ------
    kill_respawn(2)
    Sleep 2000
    first_snail()
    Sleep 2000
    collection_loop()
    Sleep 2000
    collect_and_store()

    Sleep 2000

; ------ Row 3 ------
    kill_respawn(3)
    Sleep 2000
    first_snail()
    Sleep 2000
    collection_loop()
    Sleep 2000
    collect_and_store()

    Sleep 2000

; ------ Row 4 ------
    kill_respawn(4)
    Sleep 2000
    first_snail()
    Sleep 2000
    collection_loop()
    Sleep 2000
    collect_and_store()

    Sleep 2000

; ------ Row 5 ------
    kill_respawn(5)
    Sleep 2000
    first_snail()
    Sleep 2000
    collection_loop()
    Sleep 2000
    collect_and_store()
}

F9:
ExitApp