;***********************マウスショートカット**************************************************************

; +XButton1::Send("^+{Tab}")                          ;[Shift] + [マウス戻る] -> [Ctrl+Shift+Tab(タブを左に移動)]
; +XButton2::Send("^{Tab}")                           ;[Shift] + [マウス進む] -> [Ctrl+Tab(タブを右に移動)]

; LCtrl & XButton1::AltTab                         ;[左Ctrl] + [マウス戻る] -> [Alt + Tab (ウィンドウタブ切り替え)]
; LCtrl & XButton2::ShiftAltTab                    ;[左Ctrl] + [マウス進む] -> [Alt + Sift + Tab (ウィンドウタブ逆切り替え)]

+WheelUp::Send("{WheelLeft 2}")                       ;[Shift] + [ホイール↑] -> [ホイール←左]
+WheelDown::Send("{WheelRight 2}")                    ;[Shift] + [ホイール↓] -> [ホイール→右]

^WheelRight::Send("{Blind}^{Tab}")                  ;[Ctrl] + [チルト右] -> [Alt + Tab (ウィンドウタブ切り替え)]
^WheelLeft::Send("{Blind}^+{Tab}")                  ;[Ctrl] + [チルト左] -> [Alt + Sift + Tab (ウィンドウタブ逆切り替え)]


;***********************************************************************************************

;***********************winキー+マウス*****************************************************

#XButton1::Send("{Blind}#^{Right}")                 ;[win] + [Ctrl] + [マウス戻る] -> [win + Ctrl + → (仮想デスクトップ移動)]
#XButton2::Send("{Blind}#^{Left}")                 ;[win] + [Ctrl] + [マウス進む] -> [win + Ctrl + ← (仮想デスクトップ移動)]
#MButton::Send("{Blind}#{Tab}")                    ;[win] + [中央ボタン] -> [win + tab (デスクトップ一覧)]

#WheelUp:: {
    send("{Blind}#{Up}")                             ;[win] + [ホイール↑]  -> [win + ↑ (ウィンドウ最大化)]
	Sleep(4000)
}
#WheelDown::{
    send("{Blind}#{d}")                             ;[win] + [ホイール↓]  -> [win + d (デスクトップ画面)]
    Sleep(500)
}




;***装飾キーメモ***
;キー名	説明                       
; +	   shift                       
; ^	   control                     
; !	    alt                        
; #	   windows	                   
;*****************
