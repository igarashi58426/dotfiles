; 2.0に未対応

;***********************[View_mode]ショートカット****************************************************
;ahk_exe Code.exe
#IfWinActive, ahk_exe Code.exe



^j::
	KeyWait, j, T0.25	   
	If(!ErrorLevel)         
		Send,{Blind}^{j}                         ;[Ctrl] + [j(1度押し)] -> [Ctrl + j (通常動作,出力パネルの表示/非表示)] 
	else                   
		Send,^!+{j}                              ;[Ctrl] + [j--(長押し)] -> [Ctrl + shift + alt + j (パネル最大化)]
	KeyWait,j         
Return


F13 & 5::Gosub, 5key_F5_Label                    ;[CapsLock] + [5]のサブルーチンラベル
;													;[CapsLock] + [5(１回押し)] -> [F5(再読み込み･VScode実行)]
;													;[CapsLock] + [55(2回押し)] -> [Shift + F5(VScodeデバックの停止)]
;													;[CapsLock] + [555(3回押し)] -> [Ctrl + F5(VScodeデバックなし実行)]
;													;[CapsLock] + [5--(長押し)] -> [Ctrl + Shift + F5(VScodeデバックの再起動)]




^+q::
	KeyWait, q, T0.3	
	If (!ErrorLevel){
        KeyWait, q, D T0.2       
		If (!ErrorLevel){
			KeyWait, q, T0.3
			KeyWait, q, D T0.2       
			If (ErrorLevel)  
				Send,^{j}                 ;[CapsLock] + [qq(2回押し)] -> [Ctrl + j (出力パネルの表示/非表示)]   
		}else{
				Send,^{b}                 ;[CapsLock] + [q(1回押し)] -> [Ctrl + b (サイドパネルの表示/非表示)]					
		}
	}else{
		Send,^!+{j}                              ;[Ctrl] + [q--(長押し)] -> [Ctrl + shift + alt + j (パネル最大化)]
		KeyWait,v   
	}
Return




;***********************[CapsLock] + [5]のサブルーチンラベル************************************************
5key_F5_Label:
	KeyWait, 5, T0.3	
	If (!ErrorLevel){
		KeyWait, 5, D T0.2       
		If (!ErrorLevel){
			KeyWait, 5, T0.3
			KeyWait, 5, D T0.2       
			If (!ErrorLevel){   
				KeyWait, 5, T0.3
				KeyWait, 5, D T0.2       
				If (ErrorLevel)  
					Send,{Blind}^{F5}    	     ;[CapsLock] + [5]の3回押し->[Ctrl+F5](デバックなし実行)
				}
			else
				Send,{Blind}+{F5}                ;[CapsLock] + [5]の2回押し->[Shift+F5](デバックの停止)
			}
		else
			Send,{Blind}{F5}                     ;[CapsLock] + [5]の１回押し->[F5](実行･再読み込み)
		}
	else{
		Send,{Blind}^+{F5}                       ;[CapsLock] + [5]の長押し->[Ctrl+Shift+F5](デバックの再起動)
		KeyWait,5                             
	}
	Return
;***********************************************************************************************



#If
;***********************************************************************************************

/************装飾キーメモ**************/
/キー名	説明                        /
/ +	   shift                       /
/ ^	   control                     /
/ !	    alt                        /
/ #	   windows	                   /
/**********************************/
