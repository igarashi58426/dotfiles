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

Tab & n::Send("^+{Tab}")
Tab & m::Send("^{Tab}")

Tab & u::ShiftAltTab
Tab & i::AltTab

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

