;***********************Tabショートカット*****************************************************
Tab & 1::InsertText_in_critical("!") ;[Tab] + [1] -> [!]
Tab & 2::InsertText_in_critical('"') ;[Tab] + [2] -> ["]
Tab & 3::InsertText_in_critical("#") ;[Tab] + [3] -> [#]
Tab & 4::InsertText_in_critical("$") ;[Tab] + [4] -> [$]
Tab & 5::InsertText_in_critical("%") ;[Tab] + [5] -> [%]
Tab & 6::InsertText_in_critical("&") ;[Tab] + [6] -> [&]
Tab & 7::InsertText_in_critical("'") ;[Tab] + [7] -> [']
Tab & 8::InsertText_in_critical("(") ;[Tab] + [8] -> [(]
Tab & 9::InsertText_in_critical(")") ;[Tab] + [9] -> [)]

Tab & q::InsertText_in_critical("-") ;[Tab] + [q] -> [-]
Tab & w::InsertText_in_critical("^") ;[Tab] + [w] -> [^]
Tab & e::InsertText_in_critical("\") ;[Tab] + [e] -> [\]
Tab & r::InsertText_in_critical(":")
Tab & t::{
    key := "t"
    long_press_timeout := KeyWait(key, "T0.2")
    if(long_press_timeout) {
        Send("{[}") ;[Tab] + [t(1回押し)] -> ["["]
    }else{
        Send("{]}") ;[Tab] + [t--(長押し)] -> ["]"]
    }
    KeyWait(key)
    Return
}

Tab & a::InsertText_in_critical("=") ;[Tab] + [a] -> [=]
Tab & s::InsertText_in_critical("~") ;[Tab] + [s] -> [~]
Tab & d::InsertText_in_critical("|") ;[Tab] + [d] -> [|]
Tab & f::InsertText_in_critical(";")
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

Tab & Space::Send("{Blind}{_}") ;[Tab] + [Space] -> ["_"]

;***********************Tabキーデフォルト動作定義*****************************************************

Tab::Send("{Blind}{Tab}") ;[Tab] -> [Tab]
^Tab::Send("{Blind}^{Tab}") ;[Ctrl] + [Tab] -> [Ctrl + Tab]
+Tab::Send("{Blind}+{Tab}") ;[shift] + [Tab] -> [shift + Tab]
!Tab::Send("{Blind}!{tab}") ;[alt] + [Tab] -> [alt + Tab]


;***********************************************************************************************

;***********装飾キーメモ************/
;キー名 説明                        /
; +    shift                       /
; ^    control                     /
; !     alt                        /
; #    windows                     /
;**********************************/

