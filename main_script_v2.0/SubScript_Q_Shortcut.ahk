; ;***********************Qショートカット*****************************************************
q & w::InsertText_in_critical("'") ;[q] + [x] -> [']
q & e::InsertText_in_critical("=") ;[q] + [x] -> [=]
q & r::InsertText_in_critical("|") ;[q] + [x] -> [|]

q & 2::InsertText_in_critical('"') ;[q] + [2] -> ["]
q & 3::InsertText_in_critical("#") ;[q] + [3] -> [#]
q & 4::InsertText_in_critical("$") ;[q] + [4] -> [$]
q & 5::InsertText_in_critical("%") ;[q] + [5] -> [%]
q & 6::InsertText_in_critical("&") ;[q] + [6] -> [&]

;***********************Qキーデフォルト動作定義*****************************************************

q::Send("{Blind}{q}") ;[q] -> [q]
^q::Send("{Blind}^{q}") ;[Ctrl] + [q] -> [Ctrl + q]
+q::Send("{Blind}+{q}") ;[shift] + [q] -> [shift + q]
!q::Send("{Blind}!{q}") ;[alt] + [q] -> [alt + q]

q & a::Send("{Blind}{q}{a}") ;[q] + [a] -> [qa]
q & b::Send("{Blind}{q}{b}") ;[q] + [b] -> [qb]
q & c::Send("{Blind}{q}{c}") ;[q] + [c] -> [qc]
q & d::Send("{Blind}{q}{d}") ;[q] + [d] -> [qd]
; q & e::Send("{Blind}{q}{e}") ;[q] + [e] -> [qe]
q & f::Send("{Blind}{q}{f}") ;[q] + [f] -> [qf]
q & g::Send("{Blind}{q}{g}") ;[q] + [g] -> [qg]
q & h::Send("{Blind}{q}{h}") ;[q] + [h] -> [qh]
q & i::Send("{Blind}{q}{i}") ;[q] + [i] -> [qi]
q & j::Send("{Blind}{q}{j}") ;[q] + [j] -> [qj]
q & k::Send("{Blind}{q}{k}") ;[q] + [k] -> [qk]
q & l::Send("{Blind}{q}{l}") ;[q] + [l] -> [ql]
q & m::Send("{Blind}{q}{m}") ;[q] + [m] -> [qm]
q & n::Send("{Blind}{q}{n}") ;[q] + [n] -> [qn]
q & o::Send("{Blind}{q}{o}") ;[q] + [o] -> [qo]
q & p::Send("{Blind}{q}{p}") ;[q] + [p] -> [qp]
; q & q::Send("{Blind}{q}{q}") ;[q] + [q] -> [qq]
; q & r::Send("{Blind}{q}{r}") ;[q] + [r] -> [qr]
q & s::Send("{Blind}{q}{s}") ;[q] + [s] -> [qs]
q & t::Send("{Blind}{q}{t}") ;[q] + [t] -> [qt]
q & u::Send("{Blind}{q}{u}") ;[q] + [u] -> [qu]
q & v::Send("{Blind}{q}{v}") ;[q] + [v] -> [qv]
; q & w::Send("{Blind}{q}{w}") ;[q] + [w] -> [qw]
q & x::Send("{Blind}{q}{x}") ;[q] + [x] -> [qx]
q & y::Send("{Blind}{q}{y}") ;[q] + [y] -> [qy]
q & z::Send("{Blind}{q}{z}") ;[q] + [z] -> [qz]

q & 1::Send("{Blind}{q}{1}") ;[q] + [1] -> [q1]
; q & 2::Send("{Blind}{q}{2}") ;[q] + [2] -> [q2]
; q & 3::Send("{Blind}{q}{3}") ;[q] + [3] -> [q3]
; q & 4::Send("{Blind}{q}{4}") ;[q] + [4] -> [q4]
; q & 5::Send("{Blind}{q}{5}") ;[q] + [5] -> [q5]
; q & 6::Send("{Blind}{q}{6}") ;[q] + [6] -> [q6]
q & 7::Send("{Blind}{q}{7}") ;[q] + [7] -> [q7]
q & 8::Send("{Blind}{q}{8}") ;[q] + [8] -> [q8]
q & 9::Send("{Blind}{q}{9}") ;[q] + [9] -> [q9]
q & 0::Send("{Blind}{q}{0}") ;[q] + [0] -> [q0]

;***********************************************************************************************

;***********装飾キーメモ************/
;キー名 説明                        /
; +    shift                       /
; ^    control                     /
; !     alt                        /
; #    windows                     /
;**********************************/

