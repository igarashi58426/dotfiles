;***********************Tabショートカット*****************************************************
Tab & 1::send_as_direct_input_IME("{Blind}{!}") ;[Tab] + [1] -> [!]
Tab & 2::send_as_direct_input_IME('{Blind}{"}') ;[Tab] + [2] -> ["]
Tab & 3::send_as_direct_input_IME("{Blind}{#}") ;[Tab] + [3] -> [#]
Tab & 4::send_as_direct_input_IME("{Blind}{$}") ;[Tab] + [4] -> [$]
Tab & 5::send_as_direct_input_IME("{Blind}{%}") ;[Tab] + [5] -> [%]
Tab & 6::send_as_direct_input_IME("{Blind}{&}") ;[Tab] + [6] -> [&]
Tab & 7::send_as_direct_input_IME("{Blind}{'}") ;[Tab] + [7] -> [']
Tab & 8::send_as_direct_input_IME("{Blind}{(}") ;[Tab] + [8] -> [(]
Tab & 9::send_as_direct_input_IME("{Blind}{)}") ;[Tab] + [9] -> [)]

Tab & q::send_as_direct_input_IME("{Blind}{-}") ;[Tab] + [q] -> [-]
Tab & w::send_as_direct_input_IME("{Blind}{^}") ;[Tab] + [w] -> [^]
Tab & e::send_as_direct_input_IME("{Blind}{\}") ;[Tab] + [e] -> [\]
Tab & r::send_as_direct_input_IME("{Blind}{:}")
Tab & t::{
    key := "t"
    long_press_timeout := KeyWait(key, "T0.2")
    if(long_press_timeout) {
        send_as_direct_input_IME("{[}") ;[Tab] + [[t](1回押し)] -> ["["]
    }else{
        send_as_direct_input_IME("{]}") ;[Tab] + [t--(長押し)] -> ["]"]
    }
    KeyWait(key)
    Return
}

Tab & a::send_as_direct_input_IME("{=}") ;[Tab] + [a] -> [=]
Tab & s::send_as_direct_input_IME("{~}") ;[Tab] + [s] -> [~]
Tab & d::send_as_direct_input_IME("{|}") ;[Tab] + [d] -> [|]
Tab & f::send_as_direct_input_IME("{;}")
Tab & g::{
    key := "g"
    long_press_timeout := KeyWait(key, "T0.2")
    if(long_press_timeout) {
        Send("{{}") ;[Tab] + [g(1回押し)] -> ["{"]
    }else{
        Send("{}}") ;[Tab] + [g--(長押し)] -> ["}"]
    }
    KeyWait(key)
    Return
}

Tab & z::send_as_direct_input_IME("{@}") ;[Tab] + [z] -> [@]
Tab & x::send_as_direct_input_IME("{+}") ;[Tab] + [x] -> [+]
Tab & c::send_as_direct_input_IME("{*}") ;[Tab] + [c] -> [*]
Tab & v::{
    key := "v"
    long_press_timeout := KeyWait(key, "T0.2")
    if(long_press_timeout) {
        Send("{<}") ;[Tab] + [v(1回押し)] -> ["<"]
    }else{
        Send("{}>}") ;[Tab] + [v--(長押し)] -> [">"]
    }
    KeyWait(key)
    Return
}

Tab & Space::Send("{Blind}{_}") ;[Tab] + [Space] -> ["_"]

Tab & n::Send("^+{Ta    b}")
Tab & m::Send("^{Tab}")

;==================== マウス系 ====================
tab & MButton::send("{Blind}#{d}") ;[Tab] + [中央ボタン] -> [win + d (デスクトップ画面)]

tab & WheelUp:: {
    WinMaximize("A") ;[Tab] + [ホイール↑] -> [win + ↑ (ウィンドウ最大化)]
}

tab & WheelDown::{
    send("{Blind}#{down}") ;[Tab] + [ホイール↓] -> [win + ↓ (ウィンドウ縮小)]
    Sleep(1000)
}

tab & RButton::EWD_MoveWindow() ;[Tab] + [左クリック長押し] -> [ウィンドウの移動]

tab & LButton::{ ;[Tab] + [左クリック長押し] -> [ウィンドウのサイズ変更]
    win_size := WinGetMinMax("A")
    if ( win_size = 0) {
        WinGetPos(&X, &Y, &W, &H, "A") ;対象ウィンドウの領域の座標取得
        SM_CYFULLSCREEN := SysGet(17) ;フルスクリーン領域の下限座標取得
        CoordMode("Mouse", "Screen") ;マウス動作を絶対座標系へ
        if Y+H-1 < SM_CYFULLSCREEN ;ウィンドウの下が画面からはみ出していない
        {
            MouseMove(X+W-1, Y+H-1) ;ウィンドウの右下を選択
        }
        else
        {
            MouseMove(X+W-1, Y+1)   ;ウィンドウの右下を選択
        }
        Send("{Blind}{LButton down}") ;クリック押し下げ
    }
}

;***********************Tabキーデフォルト動作定義*****************************************************

Tab::Send("{Blind}{Tab}") ;[Tab] -> [Tab]
^Tab::Send("{Blind}^{Tab}") ;[Ctrl] + [Tab] -> [Ctrl + Tab]
+Tab::Send("{Blind}+{Tab}") ;[shift] + [Tab] -> [shift + Tab]
!Tab::Send("{Blind}!{tab}") ;[alt] + [Tab] -> [alt + Tab]
#Tab::Send("{Blind}#{Tab}") ;[win] + [Tab] -> [win + tab (デスクトップ一覧)]

;***********************************************************************************************

; Easy Window Dragging
; https://www.autohotkey.com
; Normally, a window can only be dragged by clicking on its title bar.
; This script extends that so that any point inside a window can be dragged.
; To activate this mode, hold down CapsLock or the middle mouse button while
; clicking, then drag the window to a new position.

; Note: You can optionally release CapsLock or the middle mouse button after
; pressing down the mouse button rather than holding it down the whole time.
EWD_MoveWindow(*){
    key := "RButton"
    CoordMode "Mouse"  ; Switch to screen/absolute coordinates.
    MouseGetPos &EWD_MouseStartX, &EWD_MouseStartY, &EWD_MouseWin
    WinGetPos &EWD_OriginalPosX, &EWD_OriginalPosY,,, EWD_MouseWin
    WinRestore "A"
    if !WinGetMinMax(EWD_MouseWin)  ; Only if the window isn't maximized
        SetTimer EWD_WatchMouse, 10 ; Track the mouse as the user drags it.

    EWD_WatchMouse()
    {
        if !GetKeyState(key, "P") ; Button has been released, so drag is complete.
        {
            SetTimer , 0
            return
        }
        if GetKeyState("Escape", "P") ; Escape has been pressed, so drag is cancelled.
        {
            SetTimer , 0
            WinMaximize("A")
            return
        }
        ; Otherwise, reposition the window to match the change in mouse coordinates
        ; caused by the user having dragged the mouse:
        CoordMode "Mouse"
        MouseGetPos &EWD_MouseX, &EWD_MouseY
        WinGetPos &EWD_WinX, &EWD_WinY,,, EWD_MouseWin
        SetWinDelay -1   ; Makes the below move faster/smoother.
        WinMove EWD_WinX + EWD_MouseX - EWD_MouseStartX, EWD_WinY + EWD_MouseY - EWD_MouseStartY,,, EWD_MouseWin
        EWD_MouseStartX := EWD_MouseX  ; Update for the next timer-call to this subroutine.
        EWD_MouseStartY := EWD_MouseY
    }
}

;***********装飾キーメモ************/
;キー名 説明                        /
; +    shift                       /
; ^    control                     /
; !     alt                        /
; #    windows                     /
;**********************************/



