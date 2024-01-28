; ***********************マウスショートカット***********************************************************

; *********************** 右クリック ***********************************************************
RButton::Send("{RButton}") ;[右クリック] -> [右クリック]

RButton & MButton::{
    key := "MButton"
    not_long_press := KeyWait(key, "T0.35")
    if(not_long_press){
        send("^{w}") ;[マウス右] + [マウス中] -> [ctrl + w (タブを閉じる)]
    }else{
        send("^+{t}") ;[マウス右] + [マウス中(長押し)] -> [ctrl + Shift + t (閉じたタブを復元)]
    }
    KeyWait(key)
    return
}

RButton & WheelDown::Send("^{End}") ;[マウス右] + [ホイール↓] -> [ファイルの末尾へ]
RButton & WheelUp::Send("^{Home}") ;[マウス右] + [ホイール↑] -> [ファイルの先頭へ]

RButton & XButton1::Send("^{c}") ;[マウス右] + [マウス戻る] -> [Ctrl+c(コピー)]
RButton & XButton2::{
    key := "XButton2"
    not_long_press := KeyWait(key, "T0.3")
    if(not_long_press){
        is_double_press := KeyWait(key, "D T0.2") 
        if(!is_double_press){
            Send("^{v}") ;[マウス右] + [マウス進む] -> [Ctrl+v(貼り付け)]
        }
    }else{
        Send("#{v}") ;[マウス右] + [マウス進む--(長押し)] -> [win+v(クリップボード履歴) ]
    }
    KeyWait(key)
    return
}

; *********************** ホイール中 ***********************************************************
#MButton::Send("{Blind}#{Tab}") ;[win] + [中央ボタン] -> [win + tab (デスクトップ一覧)]

#WheelUp:: {
    send("!{Space}") ;[win] + [ホイール↑] -> [win + ↑ (ウィンドウ最大化)]
    Sleep(50)
    send("+{x}")
    Sleep(1000)
}

#WheelDown::{
    send("{Blind}#{d}") ;[win] + [ホイール↓] -> [win + d (デスクトップ画面)]
    Sleep(1000)
}

; *********************** ホイール↑↓ ***********************************************************

+WheelUp::Send("{WheelLeft 2}") ;[Shift] + [ホイール↑] -> [ホイール←左]
+WheelDown::Send("{WheelRight 2}") ;[Shift] + [ホイール↓] -> [ホイール→右]

#!WheelDown::Send("{Volume_Down}") ;[win] + [Alt] + [ホイール↑] -> [音量アップ]
#!WheelUp::Send("{Volume_Up}") ;[win] + [Alt] + [ホイール↓] -> [音量ダウン]


; *********************** マウス戻る進む ***********************************************************
XButton1::send("{Blind}{XButton1}") ;[マウス戻る] -> [マウス戻る]
XButton2::send("{Blind}{XButton2}") ;[マウス進む] -> [マウス進む]

+XButton1::Send("^+{Tab}") ;[Shift] + [マウス戻る] -> [Ctrl+Shift+Tab(タブを左に移動)]
+XButton2::Send("^{Tab}") ;[Shift] + [マウス進む] -> [Ctrl+Tab(タブを右に移動)]

; LCtrl & XButton1::AltTab                         ;[左Ctrl] + [マウス戻る] -> [Alt + Tab (ウィンドウタブ切り替え)]
; LCtrl & XButton2::ShiftAltTab                    ;[左Ctrl] + [マウス進む] -> [Alt + Sift + Tab (ウィンドウタブ逆切り替え)]

#XButton1::Send("{Blind}#^{Right}") ;[win] + [Ctrl] + [マウス戻る] -> [win + Ctrl + → (仮想デスクトップ移動)]
#XButton2::Send("{Blind}#^{Left}") ;[win] + [Ctrl] + [マウス進む] -> [win + Ctrl + ← (仮想デスクトップ移動)]

; *********************** 右Altキー ***********************************************************

RAlt & WheelUp::{  ;[右Alt] + [ホイール↑] -> [モニター輝度3増加]
    Critical "On"
    Run("python ./change_luminance_script/change_luminance.py +3","","Hide")
    Critical "Off"
    Sleep(200)
    return
}

RAlt & WheelDown::{ ;[右Alt] + [ホイール↓] -> [モニター輝度3減少]
    Critical "On"
    Run("python ./change_luminance_script/change_luminance.py -3","","Hide")
    Critical "Off"
    Sleep(200)
    return
}

;***********装飾キーメモ************/
;キー名 説明                        /
; +    shift                       /
; ^    control                     /
; !     alt                        /
; #    windows                     /
;**********************************/
