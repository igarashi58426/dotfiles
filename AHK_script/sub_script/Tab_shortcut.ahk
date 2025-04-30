;***********************Tabショートカット*****************************************************
Tab & 1::Send("{Blind}{!}") ;[Tab] + [1] -> [!]
Tab & 2::Send('{Blind}{"}') ;[Tab] + [2] -> ["]
Tab & 3::Send("{Blind}{#}") ;[Tab] + [3] -> [#]
Tab & 4::Send("{Blind}{$}") ;[Tab] + [4] -> [$]
Tab & 5::Send("{Blind}{%}") ;[Tab] + [5] -> [%]
Tab & 6::Send("{Blind}{&}") ;[Tab] + [6] -> [&]
Tab & 7::Send("{Blind}{'}") ;[Tab] + [7] -> [']
Tab & 8::Send("{Blind}{(}") ;[Tab] + [8] -> [(]
Tab & 9::Send("{Blind}{)}") ;[Tab] + [9] -> [)]

Tab & q::Send("{Blind}{-}") ;[Tab] + [q] -> [-]
Tab & w::Send("{Blind}{``}") ;[Tab] + [w] -> [`]
Tab & e::Send("{Blind}{\}") ;[Tab] + [e] -> [\]
Tab & r::Send("{Blind}{:}")
Tab & t::{
    key := "t"
    long_press_timeout := KeyWait(key, "T0.2")
    if(long_press_timeout) {
        Send("{[}") ;[Tab] + [[t](1回押し)] -> ["["]
    }else{
        Send("{]}") ;[Tab] + [t--(長押し)] -> ["]"]
    }
    KeyWait(key)
    Return
}

Tab & a::Send("{^}") ;[Tab] + [a] -> [^]
Tab & s::Send("{@}") ;[Tab] + [s] -> [@]
Tab & d::Send("{~}") ;[Tab] + [d] -> [~]
Tab & f::Send("{;}")
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

Tab & z::Send("{@}") ;[Tab] + [z] -> [@]
Tab & x::Send("{+}") ;[Tab] + [x] -> [+]
Tab & c::Send("{*}") ;[Tab] + [c] -> [*]
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

Tab & n::Send("^+{Tab}")
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

;***********************Tabキーデフォルト動作定義*****************************************************

Tab::Send("{Blind}{Tab}") ;[Tab] -> [Tab]
^Tab::Send("{Blind}^{Tab}") ;[Ctrl] + [Tab] -> [Ctrl + Tab]
+Tab::Send("{Blind}+{Tab}") ;[shift] + [Tab] -> [shift + Tab]
!Tab::Send("{Blind}!{tab}") ;[alt] + [Tab] -> [alt + Tab]
#Tab::Send("{Blind}#{Tab}") ;[win] + [Tab] -> [win + tab (デスクトップ一覧)]

;***********************************************************************************************

;***********装飾キーメモ************/
;キー名 説明                        /
; +    shift                       /
; ^    control                     /
; !     alt                        /
; #    windows                     /
;**********************************/



