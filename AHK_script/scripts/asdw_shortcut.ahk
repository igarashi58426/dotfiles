#Requires AutoHotkey v2.0

w:: {
    if GetKeyState("F13", "P")
        Send("{Blind}{Up}") ;[CapsLock] + [w] -> [↑]
    else
        Send("{Blind}{w}") ;[w] -> [w]
}

a:: {
    if GetKeyState("F13", "P")
        Send("{Blind}{Left}") ;[CapsLock] + [a] -> [←]
    else
        Send("{Blind}{a}") ;[a] -> [a]
}

s:: {
    if GetKeyState("F13", "P")
        Send("{Blind}{Down}") ;[CapsLock] + [s] -> [↓]
    else
        Send("{Blind}{s}") ;[s] -> [s]
}

d:: {
    if GetKeyState("F13", "P")
        Send("{Blind}{Right}") ;[CapsLock] + [d] -> [→]
    else
        Send("{Blind}{d}") ;[d] -> [d]
}

q:: {
    if GetKeyState("F13", "P")
        Send("{Blind}{Backspace}") ;[CapsLock] + [q] -> [Backspace]
    else
        Send("{Blind}{q}") ;[q] -> [q]
}

e:: {
    if GetKeyState("F13", "P")
        Send("{Blind}{Enter}") ;[CapsLock] + [e] -> [Enter]
    else
        Send("{Blind}{e}") ;[e] -> [e]
}

;==================== CaosLock連携 ====================

F13 & w:: {
    Send("{Blind}{Up}") ;[CapsLock] + [w] -> [↑]
    return
}

F13 & a:: {
    Send("{Blind}{Left}") ;[CapsLock] + [a] -> [←]
    return
}

F13 & s:: {
    Send("{Blind}{Down}") ;[CapsLock] + [s] -> [↓]
    return
}

F13 & d:: {
    Send("{Blind}{Right}") ;[CapsLock] + [d] -> [→]
    return
}

F13 & q:: {
    Send("{Blind}{Backspace}") ;[CapsLock] + [q] -> [Backspace]
    return
}

F13 & e:: {
    Send("{Blind}{Enter}") ;[CapsLock] + [e] -> [Enter]
    return
}

; ==================== デフォルト ====================
; w::Send("{Blind}{w}") ;[w] -> [w]
; w up::Send("{Blind}{w up}")

; a::Send("{Blind}{a}") ;[a] -> [a]
; a up::Send("{Blind}{a up}")

; s::Send("{Blind}{s}") ;[s] -> [s]
; s up::Send("{Blind}{s up}")

; d::Send("{Blind}{d}") ;[d] -> [d]
; d up::Send("{Blind}{d up}")

; q::Send("{Blind}{q}") ;[q] -> [q]
; q up::Send("{Blind}{q up}")

; e::Send("{Blind}{e}") ;[e] -> [e]
; e up::Send("{Blind}{e up}")
