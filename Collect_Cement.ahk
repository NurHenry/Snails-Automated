#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%



; ----------------------------- GUI ----------------------------- 


Gui +LastFound +AlwaysOnTop +ToolWindow 
Gui, Color, 808080 
Gui, Add, Text, x10 y10 w280 h60 vStatusText cBlack, Script is running! Press F5 to start! Press F9 to cancel

Gui, Add, Text, x10 y80 w280 h20 vDebugText cYellow, Debug Information:
Gui, Add, Text, x10 y100 w280 h20 vDebugInfo cYellow, Debug Information Display here!

Gui, Show, x0 y0 w300 h130, Cement Collection Script
WinSet, Transparent, 150, A 


; ----------------------------- Iteration Logic -----------------------------

current_iteration := 0

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

collection_loop(num_its) {

    UpdateDebug("Collecting the Cement...")

    Loop %num_its% {

        current_iteration := A_Index
        UpdateDebug("Collected Snails: " . current_iteration . "/" . num_its)

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


; ----------------------------- All Functions Together Clusterd (runrow) -----------------------------


run_row(row_number) {
    Sleep 2000
    kill_respawn(row_number)
    Sleep 2000
    first_snail()
    Sleep 2000
    collection_loop(48)
    Sleep 2000
    collect_and_store()
}

; ----------------------------- Worker -----------------------------


F5:: 
Loop {
    run_row(1)
    run_row(2)
    run_row(3)
    run_row(4)
    run_row(5)
}


F9::
ExitApp