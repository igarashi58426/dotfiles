;***********************無変換ショートカット*****************************************************
SC07B up::set_direct_input_mode() ; [無変換] -> [直直接入力モード接入力]

SC07B & a::{
    normal_and_3rd_key_function("{Blind}^{a}", "F13", "^{Left}")
    ;[無変換] + [a] -> [ctrl + a]
    ;[CapsLock] + [無変換] + [a] -> [Ctrl + ←]
}

SC07B & s::{
    normal_and_3rd_key_function("{Blind}^{s}", "F13", "^{Down}")
    ;[無変換] + [s] -> [ctrl + s]
    ;[CapsLock] + [無変換] + [s] -> [Ctrl + ↓]
}

SC07B & d::{
    normal_and_3rd_key_function("{Blind}^{d}", "F13", "^{Right}")
    ;[無変換] + [d] -> [ctrl + d]
    ;[CapsLock] + [無変換] + [d] -> [Ctrl + →]
}

SC07B & w::{
    normal_and_3rd_key_function("{Blind}^{w}", "F13", "^{Up}")
    ;[無変換] + [w] -> [ctrl + w]
    ;[CapsLock] + [無変換] + [w] -> [Ctrl + ↑]
}

SC07B & q::{
    If (GetKeyState("F13","P")) {
        Send( "+^{Left}")
        Sleep(10)
        Send("{Backspace}")
        ;[CapsLock] + [無変換] + [q] -> [Shift + Ctrl + ← + Backspace (単語削除)]
    }
    Else If (GetKeyState("Shift","P")) {
        key := "q"
        not_long_press := KeyWait(key, "T0.3")
        if(not_long_press){
            is_double_press := KeyWait(key, "D T0.2")
            if(is_double_press){
                Send("^{j}") ;[無変換] + [無変換] + [qq(2回押し)] -> [Ctrl + j (出力パネルの表示/非表示)]
            }else{
                Send("^{b}") ;[無変換] + [q(1回押し)] -> [Ctrl + b (サイドパネルの表示/非表示)]
            }
        }else{
            Send("^+{j}") ;[無変換] + [j--(長押し)] -> [Ctrl + shift + j (パネル最大化)]
        }
        KeyWait(key)
    }
    Else {
        Send("{Blind}^{q}")
        ;[無変換] + [q] -> [ctrl + q]
    }
    Return
}

SC07B & e::{
    normal_and_3rd_key_function("{Blind}^{e}", "F13", "^{Enter}")
    ;[無変換] + [e] -> [ctrl + e]
    ;[CapsLock] + [無変換] + [e] -> [Ctrl + Enter]
}

SC07B & XButton1::AltTab ;[無変換] + [マウス戻る] -> [Alt + Tab(ウィンドウ切り替え)]

SC07B & Tab::AltTab ;[無変換] + [Tab] -> [Alt + Tab(ウィンドウ切り替え)]

;*****************************関数定義*****************************************************
normal_and_3rd_key_function(send_parm_normal, comb_key_1st , send_parm_1st){
    If (GetKeyState(comb_key_1st,"P")) {
        Send(send_parm_1st)
    }
    Else {
        Send(send_parm_normal)
    }
    Return
}

;***********************無変換キー基本動作定義*****************************************************
; SC07B & a::Send("{Blind}^{a}") ;[無変換] + [a] -> [ctrl + a]
SC07B & b::Send("{Blind}^{b}") ;[無変換] + [b] -> [ctrl + b]
SC07B & c::Send("{Blind}^{c}") ;[無変換] + [c] -> [ctrl + c]
; SC07B & d::Send("{Blind}^{d}") ;[無変換] + [d] -> [ctrl + d]
; SC07B & e::Send("{Blind}^{e}") ;[無変換] + [e] -> [ctrl + e]
SC07B & f::Send("{Blind}^{f}") ;[無変換] + [f] -> [ctrl + f]
SC07B & g::Send("{Blind}^{g}") ;[無変換] + [g] -> [ctrl + g]
SC07B & h::Send("{Blind}^{h}") ;[無変換] + [h] -> [ctrl + h]
SC07B & i::Send("{Blind}^{i}") ;[無変換] + [i] -> [ctrl + i]
SC07B & j::Send("{Blind}^{j}") ;[無変換] + [j] -> [ctrl + j]
SC07B & k::Send("{Blind}^{k}") ;[無変換] + [k] -> [ctrl + k]
SC07B & l::Send("{Blind}^{l}") ;[無変換] + [l] -> [ctrl + l]
SC07B & m::Send("{Blind}^{m}") ;[無変換] + [m] -> [ctrl + m]
SC07B & n::Send("{Blind}^{n}") ;[無変換] + [n] -> [ctrl + n]
SC07B & o::Send("{Blind}^{o}") ;[無変換] + [o] -> [ctrl + o]
SC07B & p::Send("{Blind}^{p}") ;[無変換] + [p] -> [ctrl + p]
; SC07B & q::Send("{Blind}^{q}") ;[無変換] + [q] -> [ctrl + q]
SC07B & r::Send("{Blind}^{r}") ;[無変換] + [r] -> [ctrl + r]
; SC07B & s::Send("{Blind}^{s}") ;[無変換] + [s] -> [ctrl + s]
SC07B & t::Send("{Blind}^{t}") ;[無変換] + [t] -> [ctrl + t]
SC07B & u::Send("{Blind}^{u}") ;[無変換] + [u] -> [ctrl + u]
SC07B & v::Send("{Blind}^{v}") ;[無変換] + [v] -> [ctrl + v]
; SC07B & w::Send("{Blind}^{w}") ;[無変換] + [w] -> [ctrl + w]
SC07B & x::Send("{Blind}^{x}") ;[無変換] + [x] -> [ctrl + x]
SC07B & y::Send("{Blind}^{y}") ;[無変換] + [y] -> [ctrl + y]
SC07B & z::Send("{Blind}^{z}") ;[無変換] + [z] -> [ctrl + z]

SC07B & 1::Send("{Blind}^{1}") ;[無変換] + [1] -> [ctrl + 1]
SC07B & 2::Send("{Blind}^{2}") ;[無変換] + [2] -> [ctrl + 2]
SC07B & 3::Send("{Blind}^{3}") ;[無変換] + [3] -> [ctrl + 3]
SC07B & 4::Send("{Blind}^{4}") ;[無変換] + [4] -> [ctrl + 4]
SC07B & 5::Send("{Blind}^{5}") ;[無変換] + [5] -> [ctrl + 5]
SC07B & 6::Send("{Blind}^{6}") ;[無変換] + [6] -> [ctrl + 6]
SC07B & 7::Send("{Blind}^{7}") ;[無変換] + [7] -> [ctrl + 7]
SC07B & 8::Send("{Blind}^{8}") ;[無変換] + [8] -> [ctrl + 8]
SC07B & 9::Send("{Blind}^{9}") ;[無変換] + [9] -> [ctrl + 9]
SC07B & 0::Send("{Blind}^{0}") ;[無変換] + [0] -> [ctrl + 0]
