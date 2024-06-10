;***********************キーの移し替え・再適用**********************************************************

SC079::Send("{SC070}") ;[変換] -> [日本語入力モード]

Esc::{
    Send("{Esc}") ; [Esc] -> [Esc → 直接入力]
    set_direct_input_mode()
    Return
}

;InsrtをDeleteに変更
Insert::Send("{Blind}{Delete}") ;[Insrt] -> [Delete]

^+c::{
    key := "c"
    not_long_press := KeyWait(key, "T0.3")
    If(not_long_press){
        is_double_press := KeyWait(key, "D T0.2")
        If(is_double_press){
            Send("{F12}")  ;[Ctrl] + [Shift] + [cc(2回押し)] -> [F12]
        }else{
            Send("{Blind}^+{c}") ;[Ctrl] + [Shift] + [c(1回押し)] -> [Ctrl] + [Shift] + [c]
        }
    }else{
        Send("+{F12}") ;[Ctrl] + [Shift] + [c---(長押し)] -> [Shift] + [F12]
    }
    KeyWait(key)
    Return
}

; Appキー代用
RAlt::Send("{Blind}{AppsKey}") ;[右Alt(単押し)] -> [Appキー]

F12::{
    key := "F12"
    Critical "On"
    not_long_press := KeyWait(key, "T0.3")
    Critical "Off"
    if(not_long_press){
        Send("{Blind}{" key "}") ;[F12(1回押し)] -> [F12]
    }else{
        DllCall("LockWorkStation") ;[F12--(長押し)] -> [ウィンドウロック]
    }
    KeyWait(key)
    Return
}

;***********************************************************************************************

;***********装飾キーメモ************/
;キー名 説明                        /
; +    shift                       /
; ^    control                     /
; !     alt                        /
; #    windows                     /
;**********************************/

