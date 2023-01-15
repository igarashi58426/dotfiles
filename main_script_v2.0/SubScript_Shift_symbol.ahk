;***********************説明********************************
;このスクリプトは各数字・記号キーにおける通常押しとShift押しを
;1回押しと長押しにより入力するものである
;適用キーを以下に示す
;   キー名          1回押し      長押し
; 数字キー[ 1 ]   →  [ 1 ]   +  [ ! ]
; 数字キー[ 2 ]   →  [ 2 ]   +  [ " ]
; 数字キー[ 3 ]   →  [ 3 ]   +  [ # ]
; 数字キー[ 4 ]   →  [ 4 ]   +  [ $ ]
; 数字キー[ 5 ]   →  [ 5 ]   +  [ % ]
; 数字キー[ 6 ]   →  [ 6 ]   +  [ &]
; 数字キー[ 7 ]   →  [ 7 ]   +  [ ' ]
; 数字キー[ 8 ]   →  [ 8 ]   +  [ ( ]
; 数字キー[ 9 ]   →  [ 9 ]   +  [ ) ]
; 数字キー[ 0 ]   →  [ 0 ]
; 記号キー[ - ]   →  [ - ]   +  [ = ]
; 記号キー[ ^ ]   →  [ ^ ]   +  [ ~ ]
; 記号キー[ ¥ ]   →  [ ¥ ]   +  [ | ]
; 記号キー[ @ ]   →  [ @ ]   +  [ ` ]
; 記号キー[ [ ]   →  [ [ ]   +  [ { ]
; 記号キー[ ] ]   →  [ ] ]   +  [ } ]
; 記号キー[ ; ]   →  [ ; ]   +  [ + ] 
; 記号キー[ : ]   →  [ : ]   +  [ * ]
; 記号キー[ , ]   →  [ , ]   +  [ < ]
; 記号キー[ . ]   →  [ . ]   +  [ > ]
; 記号キー[ / ]   →  [ / ]   +  [ ? ]
; 記号キー[ \ ]   →  [ _ ]
;		
;***************************************************************

;キーフックを使用
#UseHook

;*************************数字キー[ 1 ]*********************************

1::{
	key := "1"
	not_long_press := KeyWait(key, " T0.25") 	   
	if(not_long_press){     
		Send("{Blind}{1}")     ;1回押しで実行
	}else{                   
		Send("{Blind}+{1}")     ;長押しで実行
	}
    KeyWait(key)               ;離されるまで待機
    Return
}

;*************************数字キー[ 2 ]*********************************

2::{
	key := "2"
	not_long_press := KeyWait(key, " T0.25") 	   
	if(not_long_press){     
		Send("{Blind}{2}")     ;1回押しで実行
	}else{                   
		Send("{Blind}+{2}")    ;長押しで実行
	}
    KeyWait(key)               ;離されるまで待機
    Return
}

;*************************数字キー[ 3 ]*********************************

3::{
	key := "3"
	not_long_press := KeyWait(key, " T0.25") 	   
	if(not_long_press){     
		Send("{Blind}{3}")     ;1回押しで実行
	}else{                   
		Send("{Blind}+{3}")     ;長押しで実行
	}
    KeyWait(key)                ;離されるまで待機
    Return
}
;*************************数字キー[ 4 ]*********************************

4::{
	key := "4"
	not_long_press := KeyWait(key, " T0.25") 	   
	if(not_long_press){     
		Send("{Blind}{4}")     ;1回押しで実行
	}else{                   
		Send("{Blind}+{4}")     ;長押しで実行
	}
    KeyWait(key)                ;離されるまで待機
    Return
}
;*************************数字キー[ 5 ]*********************************

5::{
	key := "5"
	not_long_press := KeyWait(key, " T0.25") 	   
	if(not_long_press){     
		Send("{Blind}{5}")     ;1回押しで実行
	}else{                   
		Send("{Blind}+{5}")     ;長押しで実行
	}
    KeyWait(key)                ;離されるまで待機
    Return
}
;*************************数字キー[ 6 ]*********************************

6::{
	key := "6"
	not_long_press := KeyWait(key, " T0.25") 	   
	if(not_long_press){     
		Send("{Blind}{6}")     ;1回押しで実行
	}else{                   
		Send("{Blind}+{6}")     ;長押しで実行
	}
    KeyWait(key)               ;離されるまで待機
    Return
}
;*************************数字キー[ 7 ]*********************************

7::{
	key := "7"
	not_long_press := KeyWait(key, " T0.25") 	   
	if(not_long_press){     
		Send("{Blind}{7}")     ;1回押しで実行
	}else{                   
		Send("{Blind}+{7}")     ;長押しで実行
	}
    KeyWait(key)                ;離されるまで待機
    Return
}
;*************************数字キー[ 8 ]*********************************

8::{
	key := "8"
	not_long_press := KeyWait(key, " T0.25") 	   
	if(not_long_press){     
		Send("{Blind}{8}")     ;1回押しで実行
	}else{                   
		Send("{Blind}+{8}")     ;長押しで実行
	}
    KeyWait(key)                ;離されるまで待機
    Return
}
;*************************数字キー[ 9 ]*********************************

9::{
	key := "9"
	not_long_press := KeyWait(key, " T0.25") 	   
	if(not_long_press){     
		Send("{Blind}{9}")     ;1回押しで実行
	}else{                   
		Send("{Blind}+{9}")     ;長押しで実行
	}
    KeyWait(key)                ;離されるまで待機
    Return
}
;*************************数字キー[ 0 ]*********************************

0::{
	key := "0"
	not_long_press := KeyWait(key, " T0.25") 	   
	if(not_long_press){     
		Send("{Blind}{0}")     ;1回押しで実行
	}else{                   
		Send("{Blind}+{0}")     ;長押しで実行
	}
    KeyWait(key)                ;離されるまで待機
    Return
}

;*************************記号キー[ - ]*********************************

-::{
	key := "-"
	not_long_press := KeyWait(key, " T0.25") 	   
	if(not_long_press){     
		Send("{Blind}{-}")     ;1回押しで実行
	}else{                   
		Send("{Blind}+{-}")     ;長押しで実行
	}
    KeyWait(key)                ;離されるまで待機
    Return
}

;*************************記号キー[ ^ ]*********************************

^::{
	key := "^"
	not_long_press := KeyWait(key, " T0.25") 	   
	if(not_long_press){     
		Send("{Blind}{^}")     ;1回押しで実行
	}else{                   
		Send("{Blind}+{^}")     ;長押しで実行
	}
    KeyWait(key)                ;離されるまで待機
    Return
}
	
;*************************記号キー[ \ ]*********************************

\::{
	key := "\"
	not_long_press := KeyWait(key, " T0.25") 	   
	if(not_long_press){     
		Send("{Blind}{\}")     ;1回押しで実行
	}else{                   
		Send("{Blind}+{\}")     ;長押しで実行
	}
    KeyWait(key)               ;離されるまで待機
    Return
}

;*************************記号キー[ @ ]*********************************

@::{
	key := "@"
	not_long_press := KeyWait(key, " T0.25") 	   
	if(not_long_press){     
		Send("{Blind}{@}")     ;1回押しで実行
	}else{                   
		Send("{Blind}+{@}")     ;長押しで実行
	}
    KeyWait(key)                ;離されるまで待機
    Return
}

;*************************記号キー[ [ ]*******************************

[::{
	key := "["
	not_long_press := KeyWait(key, " T0.25") 	   
	if(not_long_press){     
		Send("{Blind}{[}")     ;1回押しで実行
	}else{                   
		Send("{Blind}+{[}")     ;長押しで実行
	}
    KeyWait(key)                ;離されるまで待機
    Return
}

;*************************記号キー[ ] ]*******************************

]::{
	key := "]"
	not_long_press := KeyWait(key, " T0.25") 	   
	if(not_long_press){     
		Send("{Blind}{]}")     ;1回押しで実行
	}else{                   
		Send("{Blind}+{]}")     ;長押しで実行
	}
    KeyWait(key)                ;離されるまで待機
    Return
}

;*************************記号キー[ ; ]*********************************

SC027::{
	key := "SC027"
	not_long_press := KeyWait(key, " T0.25") 	   
	if(not_long_press){     
		Send("{Blind}{SC027}")     ;1回押しで実行
	}else{                   
		Send("{Blind}+{SC027}")     ;長押しで実行
	}
    KeyWait(key) 
    Return
}

;*************************記号キー[ : ]*********************************

SC028::{
	key := "SC028"
	not_long_press := KeyWait(key, " T0.25") 	   
	if(not_long_press){     
		Send("{Blind}{SC028}")     ;1回押しで実行
	}else{                   
		Send("{Blind}+{SC028}")     ;長押しで実行
	}
    KeyWait(key)               ;離されるまで待機
    Return
}

;*************************記号キー[ , ]*********************************

SC033::{
	key := "SC033"
	not_long_press := KeyWait(key, "T0.25") 	   
	if(not_long_press){     
		Send("{Blind}{SC033}")     ;1回押しで実行
	}else{                   
		Send("{Blind}+{SC033}")     ;長押しで実行
	}
    KeyWait(key)                ;離されるまで待機
    Return
}

;*************************記号キー[ . ]*********************************

.::{
	key := "."
	not_long_press := KeyWait(key, "T0.25") 	   
	if(not_long_press){     
		Send("{Blind}{.}")     ;1回押しで実行
	}else{                   
		Send("{Blind}+{.}")     ;長押しで実行
	}
    KeyWait(key)                ;離されるまで待機
    Return
}

;*************************記号キー[ / ]*********************************

/::{
	key := "/"
	not_long_press := KeyWait(key, " T0.25") 	   
	if(not_long_press){     
		Send("{Blind}{/}")     ;1回押しで実行
	}else{                   
		Send("{Blind}+{/}")     ;長押しで実行
	}
    KeyWait(key)               ;離されるまで待機
    Return
}
;*************************記号キー[ \ ]*********************************

;[\](バックスラッシュ)を[_](アンダーバー)に固定
SC073::Send("{Blind}+{SC073}")





;***********装飾キーメモ************/
;キー名	説明                        /
; +	   shift                       /
; ^	   control                     /
; !	    alt                        /
; #	   windows	                   /
;**********************************/

