; ***********************マウスショートカット***********************************************************

; *********************** 右クリック ***********************************************************
RButton::Send("{RButton}") ;[右クリック] -> [右クリック]

RButton & MButton::{
    key := "MButton"
    not_long_press := KeyWait(key, "T0.35")
    if(not_long_press){
        is_double_press := KeyWait(key, "D T0.2")
        if(is_double_press){
            Send("!{F4}") ;[マウス右] + [マウス中中(2回押し)] -> [Alt + F4(ウィンドウ終了)]
        }else{
            send("^{w}") ;[マウス右] + [マウス中] -> [ctrl + w (タブを閉じる)]
        }
    }else{
        send("^+{t}") ;[マウス右] + [マウス中(長押し)] -> [ctrl + Shift + t (閉じたタブを復元)]
    }
    KeyWait(key)
    return
}

RButton & WheelDown::Send("^{End}") ;[マウス右] + [ホイール↓] -> [ファイルの末尾へ]
RButton & WheelUp::Send("^{Home}") ;[マウス右] + [ホイール↑] -> [ファイルの先頭へ]

RButton & XButton2::{
    key := "XButton2"
    not_long_press := KeyWait(key, "T0.3")
    if(not_long_press){
        is_double_press := KeyWait(key, "D T0.2")
        if(!is_double_press){
            Send("^{c}") ;[マウス右] + [マウス進む] -> [Ctrl+c(コピー)]
        }
    }else{
        Send("^{x}") ;[マウス右] + [マウス進む--(長押し)] -> [Ctrl+c(切り取り)]
    }
    KeyWait(key)
    return
}

RButton & XButton1::{
    key := "XButton1"
    not_long_press := KeyWait(key, "T0.3")
    if(not_long_press){
        is_double_press := KeyWait(key, "D T0.2")
        if(!is_double_press){
            Send("^{v}") ;[マウス右] + [マウス戻る] -> [Ctrl+v(貼り付け)]
        }
    }else{
        Send("#{v}") ;[マウス右] + [マウス戻る--(長押し)] -> [win+v(クリップボード履歴) ]
    }
    KeyWait(key)
    return
}

RButton & 0::{
    key := "0"
    not_long_press := KeyWait(key, "T0.3")
    if(not_long_press){
        is_double_press := KeyWait(key, "D T0.2")
        Send("{Blind}^{z}") ;[マウス右] + [0] -> [Ctrl+z (戻る)]
    }else{
        Send("{Blind}{Esc}") ;[マウス右] + [0--(長押し)] -> [Esc]
    }
    KeyWait(key)
    return
}

RButton & 1::Send("{Blind}^{x}") ;[マウス右] + [1] -> [Ctrl+x (切り取り)]
RButton & 2::Send("{Blind}^{c}") ;[マウス右] + [2] -> [Ctrl+c (コピー)]
RButton & 3::Send("{Blind}^{v}") ;[マウス右] + [3] -> [Ctrl+v (貼り付け)]

RButton & 4::Send("{Blind}{Backspace}") ;[マウス右] + [4] -> [Backspace]
RButton & 6::Send("{Blind}{Enter}") ;[マウス右] + [6] -> Enter

RButton & 5::Send("{Blind}{Up}") ;[マウス右] + [5] -> [↑]
RButton & 8::Send("{Blind}{Down}") ;[マウス右] + [8] -> [↓]
RButton & 7::Send("{Blind}{Left}") ;[マウス右] + [7] -> [←]
RButton & 9::Send("{Blind}{Right}") ;[マウス右] + [9] -> [→]

; *********************** ホイール中 ***********************************************************
#MButton::send("{Blind}#{d}") ;[win] + [中央ボタン] -> [win + d (デスクトップ画面)]

; *********************** ホイール↑↓ ***********************************************************

; WheelDown::Send("{LButton}") ;[ホイール↓] -> [クリック]
; WheelUp::Send("{LButton}") ;[ホイール↑] -> [クリック]

+WheelUp::Send("{WheelLeft 2}") ;[Shift] + [ホイール↑] -> [ホイール←左]
+WheelDown::Send("{WheelRight 2}") ;[Shift] + [ホイール↓] -> [ホイール→右]

#!WheelDown::Send("{Volume_Down}") ;[win] + [Alt] + [ホイール↑] -> [音量アップ]
#!WheelUp::Send("{Volume_Up}") ;[win] + [Alt] + [ホイール↓] -> [音量ダウン]

#WheelDown::{
    like_ctrl_key := "ESC"
    If (GetKeyState(like_ctrl_key,"P")) {
        down_monitor_luminance() ;[] + [ホイール↑] -> [モニター輝度3増加]
    }
    Else {
        send("{Blind}#{down}") ;[win] + [ホイール↓] -> [win + ↓ (ウィンドウ縮小)]
        Sleep(1000)
    }
    Return
}

#WheelUp::{
    like_ctrl_key := "ESC"
    If (GetKeyState(like_ctrl_key,"P")) {
        up_monitor_luminance() ;[] + [ホイール↑] -> [モニター輝度3増加]
    }
    Else {
        WinMaximize("A") ;[win] + [ホイール↑] -> [win + ↑ (ウィンドウ最大化)]
    }
    Return
}

; *********************** マウス戻る進む ***********************************************************
$XButton1::{
    send("{Blind}{XButton1 down}") ;[マウス戻る] -> [マウス戻る]
    Sleep(100)
    send("{Blind}{XButton1 up}")
    Return
}

$XButton2::{
    send("{Blind}{XButton2 down}") ;[マウス進む] -> [マウス進む]
    Sleep(100)
    send("{Blind}{XButton2 up}")
    Return
}

+XButton1::Send("^+{Tab}") ;[Shift] + [マウス戻る] -> [Ctrl+Shift+Tab(タブを左に移動)]
+XButton2::Send("^{Tab}") ;[Shift] + [マウス進む] -> [Ctrl+Tab(タブを右に移動)]

; LCtrl & XButton1::AltTab                         ;[左Ctrl] + [マウス戻る] -> [Alt + Tab (ウィンドウタブ切り替え)]
; LCtrl & XButton2::ShiftAltTab                    ;[左Ctrl] + [マウス進む] -> [Alt + Sift + Tab (ウィンドウタブ逆切り替え)]

#XButton1::Send("{Blind}#^{Right}") ;[win] + [Ctrl] + [マウス戻る] -> [win + Ctrl + → (仮想デスクトップ移動)]
#XButton2::Send("{Blind}#^{Left}") ;[win] + [Ctrl] + [マウス進む] -> [win + Ctrl + ← (仮想デスクトップ移動)]

XButton1 & RButton::{
    key := "RButton"
    not_long_press := KeyWait(key, "T0.3")
    if(not_long_press){
        is_double_press := KeyWait(key, "D T0.2")
        if(!is_double_press){
            Send("^{v}") ;[マウス進む] + [マウス右] -> [Ctrl+v(貼り付け)]
        }
    }else{
        Send("#{v}") ;[マウス進む] + [マウス右--(長押し)] -> [win+v(クリップボード履歴) ]
    }
    KeyWait(key)
    return
}

XButton1 & LButton::{
    key := "LButton"
    not_long_press := KeyWait(key, "T0.3")
    if(not_long_press){
        is_double_press := KeyWait(key, "D T0.2")
        if(!is_double_press){
            Send("^{c}") ;[マウス戻る] + [マウス左] -> [Ctrl+c(コピー)]
        }
    }else{
        Send("^{x}") ;[マウス戻る] + [マウス左--(長押し)] -> [Ctrl+x(切り取り)]
    }
    KeyWait(key)
    return
}

; *********************** アプリケーションキー ***********************************************************
AppsKey::AppsKey
AppsKey & WheelUp::up_monitor_luminance() ;[App] + [ホイール↑] -> [モニター輝度3増加]
AppsKey & WheelDown::down_monitor_luminance() ;[App] + [ホイール↓] -> [モニター輝度3減少]


;***********装飾キーメモ************/
;キー名 説明                        /
; +    shift                       /
; ^    control                     /
; !     alt                        /
; #    windows                     /
;**********************************/
