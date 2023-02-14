^j::{
    key := "j"
    not_long_press := KeyWait(key, "T0.3")
    if(not_long_press){
        is_double_press := KeyWait(key, "D T0.2") 
        if(!is_double_press){
            Send("^{j}")   ;[Ctrl] + [j(1度押し)] -> [Ctrl + j (通常動作,出力パネルの表示/非表示)] 
        }
    }else{
		Send("^+{j}")      ;[Ctrl] + [j--(長押し)] -> [Ctrl + shift + j (パネル最大化)]
	}
	KeyWait(key)
    return
}

^+q::{
    key := "q"
    not_long_press := KeyWait(key, "T0.3")
    if(not_long_press){
        is_double_press := KeyWait(key, "D T0.2") 
        if(is_double_press){
            Send("^{j}")   ;[CapsLock] + [qq(2回押し)] -> [Ctrl + j (出力パネルの表示/非表示)]
        }else{
            Send("^{b}")   ;[CapsLock] + [q(1回押し)] -> [Ctrl + b (サイドパネルの表示/非表示)]
        }
    }else{
        Send("^{j}")
        Send("^{b}")       ;[Ctrl] + [q--(長押し)] -> [Ctrl + b & Ctrl + j (出力パネル・サイドパネルの表示/非表示)
    }
    KeyWait(key)
    return
}

;[CapsLock] + [5(1回押し)] -> [F5(再読み込み･VScode実行)]
;[CapsLock] + [55(2回押し)] -> [Shift + F5(VScodeデバックの停止)(未実装)]
;[CapsLock] + [555(3回押し)] -> [Ctrl + F5(VScodeデバックなし実行)(未実装)]
;[CapsLock] + [5--(長押し)] -> [Ctrl + Shift + F5(VScodeデバックの再起動)(未実装)]
;***********************************************************************************************

; ************装飾キーメモ**********/
; キー名	説明                    /
;  +	   shift                    /
;  ^	   control                  /
;  !	    alt                     /
;  #	   windows	                /
; **********************************/
