;***********************説明********************************
;このスクリプトは各数字・記号キーにおける通常押しとShift押しを
;1回押しと長押しにより入力するものである
;適用キーを以下に示す
;   キー名          1回押し      長押し
; 数字キー[ 1 ] → [ 1 ] + [ ! ]
; 数字キー[ 2 ] → [ 2 ] + [ " ]
; 数字キー[ 3 ] → [ 3 ] + [ # ]
; 数字キー[ 4 ] → [ 4 ] + [ $ ]
; 数字キー[ 5 ] → [ 5 ] + [ % ]
; 数字キー[ 6 ] → [ 6 ] + [ &]
; 数字キー[ 7 ] → [ 7 ] + [ ' ]
; 数字キー[ 8 ] → [ 8 ] + [ ( ]
; 数字キー[ 9 ] → [ 9 ] + [ ) ]
; 数字キー[ 0 ] → [ 0 ]
; 記号キー[ - ] → [ - ] + [ = ]
; 記号キー[ ^ ] → [ ^ ] + [ ~ ]
; 記号キー[ ¥ ] → [ ¥ ] + [ | ]
; 記号キー[ @ ] → [ @ ] + [ ` ]
; 記号キー[ [ ] → [ [ ] + [ { ]
; 記号キー[ ] ] → [ ] ] + [ } ]
; 記号キー[ ; ] → [ ; ] + [ + ] 
; 記号キー[ : ] → [ : ] + [ * ]
; 記号キー[ , ] → [ , ] + [ < ]
; 記号キー[ . ] → [ . ] + [ > ]
; 記号キー[ / ] → [ / ] + [ ? ]
; 記号キー[ \ ] → [ _ ]
;        

;キーフックを使用
#UseHook
; ============================================================
shift_symbol_by_long_press(key){
    not_long_press := KeyWait(key, " T0.25")
    if(not_long_press){
        Send("{Blind}{" key "}") ;1回押しで実行
    }else{ 
        Send("{Blind}+{" key "}") ;長押しで実行
    }
    KeyWait(key) ;離されるまで待機
    Return
}
; ============================================================

1::shift_symbol_by_long_press("1")
2::shift_symbol_by_long_press("2")
3::shift_symbol_by_long_press("3")
4::shift_symbol_by_long_press("4")
5::shift_symbol_by_long_press("5")
6::shift_symbol_by_long_press("6")
7::shift_symbol_by_long_press("7")
8::shift_symbol_by_long_press("8")
9::shift_symbol_by_long_press("9")
0::shift_symbol_by_long_press("0")
-::shift_symbol_by_long_press("-")
^::shift_symbol_by_long_press("^")
\::shift_symbol_by_long_press("\")
@::shift_symbol_by_long_press("@")
[::shift_symbol_by_long_press("[")
]::shift_symbol_by_long_press("]")
SC027::shift_symbol_by_long_press("SC027")
SC028::shift_symbol_by_long_press("SC028")
SC033::shift_symbol_by_long_press("SC033")
.::shift_symbol_by_long_press(".")
/::shift_symbol_by_long_press("/")

;[\](バックスラッシュ)を[_](アンダーバー)に固定
SC073::Send("{Blind}+{SC073}")

;***********装飾キーメモ************/
;キー名    説明                        /
; +       shift                       /
; ^       control                     /
; !        alt                        /
; #       windows                       /

