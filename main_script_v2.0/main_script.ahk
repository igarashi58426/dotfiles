;***********************レジストリ編集済みkye一覧********************************************************
;CapsLockや日本語配列特有のキーはAutoHotKeyで変更すると不具合が出るので
;レジストリを書き換えるキーリマップソフト(ChgKey)でファンクションキーに変更
;CapsLock（SC003A）をF13（SC0064）に変更
;無変換（SC007B）をF14（SC0065）に変更
;変換（SC0079）をF15（SC0066）に変更
;***********************************************************************************************

;***********************インクルード・宣言など***********************************************************

; タスクバーアイコン点滅防止
#WinActivateForce

;RegisterHotkeyを介さず、フックを使用してホットキーを定義する(処理速度向上のため)
#UseHook

;Force	同じスクリプトを再実行した際は、確認なくリロードする
#SingleInstance

;プロセス優先度を高にする
ProcessSetPriority "High"

;無効化するソフトを設定
;#Include SubScript_exception_software.ahk

;***********************ショートカットスクリプトの読み込み**********************************************************
; #IfWinNotExist, Exit_Window             ;無効化ウィンドウが存在しない場合
#Include SubScript_Key_Remapping.ahk
#Include SubScript_CapslLock_Shortcut.ahk
#Include SubScript_winkey_Shortcut.ahk
#Include SubScript_Mouse_Shortcut.ahk
#Include SubScript_Shift_symbol.ahk
#Include subScript_symbol_direct_input.ahk
#Include SubScript_VScode_Shortcut.ahk
; #Include SubScript_Z_Shortcut.ahk
#Include SubScript_Q_Shortcut.ahk
; #Include SubScript_View_mode.ahk

;***********************************************************************************************

;***********************例外モード**********************************************************
; #IfWinExist, Exit_Window
; #Include SubScript_Game_Shortcut.ahk

;***********************************************************************************************

;***********************任意テキストをペーストする関数************************************************
InsertText(Content){
    All_Clip_Saved := ClipboardAll()
    A_Clipboard := Content
    Send("^{v}")
    Sleep(200)
    A_Clipboard := All_Clip_Saved
    }
;***********************************************************************************************

;***********************改行削除関数************************************************
strip_linebreaks(text){
    text := RegExReplace(text, "\R", "") ;改行を置換で削除
    Return text
    }
;***********************************************************************************************




;************装飾キーメモ**************/
;キー名	説明                        /
; +	   shift                       /
; ^	   control                     /
; !	    alt                        /
; #	   windows	                   /
;**********************************/


;Sendコマンドの説明
;Sendに{Blind}をつけることで明示的に装飾キーの装飾を許可する
;例えば
;[CapsLock] + [r] -> [ホイール↑4回]において
;F13 & r::Send,{Blind}{WheelUp 4}では
;[CapsLock] + [r]でホイール↑4回
;[Shift] + [CapsLock] + [r]で拡大
;となる。
;F13 & r::Send,{WheelUp 4}では
;[CapsLock] + [r]でホイール↑4回
;[Shift] + [CapsLock] + [r]でホイール↑4回
;となる

