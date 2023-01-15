;***********************キーの移し替え・再適用**********************************************************

;半角/全角を設定


F13 & Tab::Send("{SC070}")                        ;[CapsLock] + [Tab] -> [ひらがな入力]
;+F13::直接入力                                  ;[Shift] + [CapsLock] -> [直接入力(googl日本語入力側で設定)]
LShift & F13::Send("+{F13}")                          ;[Ctrl] + [Shift] + [Alt] + [CapsLock] -> [CapsLock]

SC070::Send("{SC070}") ;変換を日本語入力に
SC07B::Send("+{F13}")  ;無変換で直接入力に

;CapsLockを再設定
!^F13::Send("{CapsLock}")                          ;[Ctrl] + [Shift] + [Alt] + [CapsLock] -> [CapsLock]

;InsrtをDeleteに変更
Insert::Send("{Blind}{Delete}")                     ;[Insrt] -> [Delete]




;***********************************************************************************************

;************装飾キーメモ**************/
;キー名	説明                        /
; +	   shift                       /
; ^	   control                     /
; !	    alt                        /
; #	   windows	                   /
;**********************************/

