;***********************キーの移し替え・再適用**********************************************************

;半角/全角を設定

F13 & Tab::Send("{SC070}") ;[CapsLock] + [Tab] -> [ひらがな入力]
;+F13::直接入力                                  ;[Shift] + [CapsLock] -> [直接入力(googl日本語入力側で設定)]
LShift & F13::Send("+{F13}") ;[Ctrl] + [Shift] + [Alt] + [CapsLock] -> [CapsLock]

SC079::Send("{SC070}") ;[変換] -> [日本語入力モード]
;[Esc] -> [Esc → 直接入力]
Esc::{
    Send("{Esc}")
    Send("+{F13}")
    Return
}

;CapsLockを再設定
!^F13::Send("{CapsLock}") ;[Ctrl] + [Shift] + [Alt] + [CapsLock] -> [CapsLock]

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

;[Alt] + [w] -> [Ctrl + hift + ← + backspace(単語削除)]
!w::{
    Send("^+{Left}")
    Send("{Backspace}")
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

