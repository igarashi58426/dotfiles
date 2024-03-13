;***********************zショートカット*****************************************************
a & q::Send("{Blind}{0}") ;[a] + [q] -> [0]
a & w::Send("{Blind}{+}") ;[a] + [w] -> [+]
a & e::Send("{Blind}{-}") ;[a] + [e] -> [-]
a & r::Send("{Blind}{*}") ;[a] + [r] -> [*]
a & t::Send("{Blind}{/}") ;[a] + [t] -> [/]

;***********************zキーデフォルト動作定義*****************************************************
a::Send("{Blind}{a}") ;[a] + [a] -> [aa]
^a::Send("{Blind}^{a}") ;[Ctrl] + [a] -> [Ctrl + a]
+a::Send("{Blind}+{a}") ;[shift] + [a] -> [shift + a]
!a::Send("{Blind}!{a}") ;[alt] + [a] -> [alt + a]

a & b::Send("{Blind}{a}{b}") ;[a] + [b] -> [ab]
a & c::Send("{Blind}{a}{c}") ;[a] + [c] -> [ac]
a & d::Send("{Blind}{a}{d}") ;[a] + [d] -> [ad]
; a & e::Send("{Blind}{a}{e}") ;[a] + [e] -> [ae]
a & f::Send("{Blind}{a}{f}") ;[a] + [f] -> [af]
a & g::Send("{Blind}{a}{g}") ;[a] + [g] -> [ag]
a & h::Send("{Blind}{a}{h}") ;[a] + [h] -> [ah]
a & i::Send("{Blind}{a}{i}") ;[a] + [i] -> [ai]
a & j::Send("{Blind}{a}{j}") ;[a] + [j] -> [aj]
a & k::Send("{Blind}{a}{k}") ;[a] + [k] -> [ak]
a & l::Send("{Blind}{a}{l}") ;[a] + [l] -> [al]
a & m::Send("{Blind}{a}{m}") ;[a] + [m] -> [am]
a & n::Send("{Blind}{a}{n}") ;[a] + [n] -> [an]
a & o::Send("{Blind}{a}{o}") ;[a] + [o] -> [ao]
a & p::Send("{Blind}{a}{p}") ;[a] + [p] -> [ap]
; a & q::Send("{Blind}{a}{q}") ;[a] + [q] -> [aq]
; a & r::Send("{Blind}{a}{r}") ;[a] + [r] -> [ar]
a & s::Send("{Blind}{a}{s}") ;[a] + [s] -> [as]
; a & t::Send("{Blind}{a}{t}") ;[a] + [t] -> [at]
a & u::Send("{Blind}{a}{u}") ;[a] + [u] -> [au]
a & v::Send("{Blind}{a}{v}") ;[a] + [v] -> [av]
; a & w::Send("{Blind}{a}{w}") ;[a] + [w] -> [aw]
a & x::Send("{Blind}{a}{x}") ;[a] + [x] -> [ax]
a & y::Send("{Blind}{a}{y}") ;[a] + [y] -> [ay]
a & z::Send("{Blind}{a}{y}") ;[a] + [z] -> [az]

a & 1::Send("{Blind}{a}{1}") ;[a] + [1] -> [a1]
a & 2::Send("{Blind}{a}{2}") ;[a] + [2] -> [a2]
a & 3::Send("{Blind}{a}{3}") ;[a] + [3] -> [a3]
a & 4::Send("{Blind}{a}{4}") ;[a] + [4] -> [a4]
a & 5::Send("{Blind}{a}{5}") ;[a] + [5] -> [a5]
a & 6::Send("{Blind}{a}{6}") ;[a] + [6] -> [a6]
a & 7::Send("{Blind}{a}{7}") ;[a] + [7] -> [a7]
a & 8::Send("{Blind}{a}{8}") ;[a] + [8] -> [a8]
a & 9::Send("{Blind}{a}{9}") ;[a] + [9] -> [a9]
a & 0::Send("{Blind}{a}{0}") ;[a] + [0] -> [a0]

;***********************************************************************************************

;***********装飾キーメモ************/
;キー名 説明                        /
; +    shift                       /
; ^    control                     /
; !     alt                        /
; #    windows                     /
;**********************************/

