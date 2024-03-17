;***********************zショートカット*****************************************************
z & x::send_as_direct_input_IME("{Blind}{.}") ;[z] + [x] -> [.]
z & c::send_as_direct_input_IME("{Blind}{,}") ;[z] + [x] -> [,]
z & v::send_as_direct_input_IME("{Blind}{/}") ;[z] + [x] -> [/]


z & [::send_as_direct_input_IME("{Blind}{[}") ;[z] + ["["] -> ["["]
z & ]::send_as_direct_input_IME("{Blind}{]}") ;[z] + ["]"] -> ["]"]

z & s::Send("{Blind}{$}") ;[z] + [s] -> [$]
z & d::Send("{Blind}{%}") ;[z] + [d] -> [%]
z & f::Send("{Blind}{&}") ;[z] + [f] -> [&]

z & q::Send("{Blind}{!}") ;[z] + [q] -> [!]
z & w::Send('{Blind}{"}') ;[z] + [w] -> ["]
z & e::Send("{Blind}{#}") ;[z] + [e] -> [#]
z & r::Send("{Blind}{$}") ;[z] + [r] -> [$]
z & t::Send("{Blind}{%}") ;[z] + [t] -> [%]
z & y::Send("{Blind}{&}") ;[z] + [y] -> [&]
z & u::Send("{Blind}{'}") ;[z] + [u] -> [']
z & i::Send("{Blind}{(}") ;[z] + [i] -> [(]
z & o::Send("{Blind}{)}") ;[z] + [o] -> [)]

z & h::Send("{Blind}{←}") ;[z] + [h] -> [←]
z & j::Send("{Blind}{↓}") ;[z] + [j] -> [↓]
z & k::Send("{Blind}{↑}") ;[z] + [k] -> [↑]
z & l::Send("{Blind}{→}") ;[z] + [l] -> [→]

z & 8::Send("【") ;[z] + [8] -> [【]
z & 9::Send("】") ;[z] + [9] -> [】]

z & Space::Send("{Blind}{_}") ;[CapsLock] + ["_"] -> ["_"]

;***********************zキーデフォルト動作定義*****************************************************

z::Send("{Blind}{z}") ;[z] -> [z]
^z::Send("{Blind}^{z}") ;[Ctrl] + [z] -> [Ctrl + z]
+z::Send("{Blind}+{z}") ;[shift] + [z] -> [shift + z]
!z::Send("{Blind}!{z}") ;[alt] + [z] -> [alt + z]

z & a::Send("{Blind}{z}{a}") ;[z] + [a] -> [za]
z & b::Send("{Blind}{z}{b}") ;[z] + [b] -> [zb]
; z & c::Send("{Blind}{z}{c}") ;[z] + [c] -> [zc]
; z & d::Send("{Blind}{z}{d}") ;[z] + [d] -> [zd]
; z & e::Send("{Blind}{z}{e}") ;[z] + [e] -> [ze]
; z & f::Send("{Blind}{z}{f}") ;[z] + [f] -> [zf]
z & g::Send("{Blind}{z}{g}") ;[z] + [g] -> [zg]
; z & h::Send("{Blind}{z}{h}") ;[z] + [h] -> [zh]
; z & i::Send("{Blind}{z}{i}") ;[z] + [i] -> [zi]
; z & j::Send("{Blind}{z}{j}") ;[z] + [j] -> [zj]
; z & k::Send("{Blind}{z}{k}") ;[z] + [k] -> [zk]
; z & l::Send("{Blind}{z}{l}") ;[z] + [l] -> [zl]
z & m::Send("{Blind}{z}{m}") ;[z] + [m] -> [zm]
z & n::Send("{Blind}{z}{n}") ;[z] + [n] -> [zn]
; z & o::Send("{Blind}{z}{o}") ;[z] + [o] -> [zo]
z & p::Send("{Blind}{z}{p}") ;[z] + [p] -> [zp]
; z & q::Send("{Blind}{z}{q}") ;[z] + [q] -> [zq]
; z & r::Send("{Blind}{z}{r}") ;[z] + [r] -> [zr]
; z & s::Send("{Blind}{z}{s}") ;[z] + [s] -> [zs]
; z & t::Send("{Blind}{z}{t}") ;[z] + [t] -> [zt]
; z & u::Send("{Blind}{z}{u}") ;[z] + [u] -> [zu]
; z & v::Send("{Blind}{z}{v}") ;[z] + [v] -> [zv]
; z & w::Send("{Blind}{z}{w}") ;[z] + [w] -> [zw]
; z & x::Send("{Blind}{z}{x}") ;[z] + [x] -> [zx]
; z & y::Send("{Blind}{z}{y}") ;[z] + [y] -> [zy]
; z & z::Send("{Blind}{z}") ;[z] + [z] -> [zz]

z & 1::Send("{Blind}{z}{1}") ;[z] + [1] -> [z1]
z & 2::Send("{Blind}{z}{2}") ;[z] + [2] -> [z2]
z & 3::Send("{Blind}{z}{3}") ;[z] + [3] -> [z3]
z & 4::Send("{Blind}{z}{4}") ;[z] + [4] -> [z4]
z & 5::Send("{Blind}{z}{5}") ;[z] + [5] -> [z5]
z & 6::Send("{Blind}{z}{6}") ;[z] + [6] -> [z6]
z & 7::Send("{Blind}{z}{7}") ;[z] + [7] -> [z7]
; z & 8::Send("{Blind}{z}{8}") ;[z] + [8] -> [z8]
; z & 9::Send("{Blind}{z}{9}") ;[z] + [9] -> [z9]
z & 0::Send("{Blind}{z}{0}") ;[z] + [0] -> [z0]

;***********************************************************************************************

;***********装飾キーメモ************/
;キー名 説明                        /
; +    shift                       /
; ^    control                     /
; !     alt                        /
; #    windows                     /
;**********************************/

