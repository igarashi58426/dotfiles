;====================レジストリ編集済みkye一覧====================
;CapsLockや日本語配列特有のキーはAutoHotKeyで変更すると不具合が出るので
;レジストリを書き換えるキーリマップソフト(ChgKey)でファンクションキーに変更
;CapsLock（SC003A）をF13（SC0064）に変更
;無変換（SC007B）をF14（SC0065）に変更
;変換（SC0079）をF15（SC0066）に変更

;====================宣言など====================
; タスクバーアイコン点滅防止
#WinActivateForce

;RegisterHotkeyを介さず、フックを使用してホットキーを定義する(処理速度向上のため)
#UseHook

;Force 同じスクリプトを再実行した際は、確認なくリロードする
#SingleInstance

;プロセス優先度を高にする
ProcessSetPriority "High"

; キーピート制限 1000msあたり200回以上で警告
A_HotkeyInterval := 1000
A_MaxHotkeysPerInterval := 200

;====================ライブラリ読み込み====================
#Include library/IMEv2.ahk
#Include library/utility.ahk

;====================設定読み込み====================
#Include config/Disable_software.ahk
#Include config/Game_group.ahk

;====================ショートカットスクリプトの読み込み====================
#HotIf not WinActive("ahk_group Disable_software") AND not WinExist("ScriptsscriptsDisabled")
    #Include scripts/asdw_shortcut.ahk
    #Include scripts/Key_remapping.ahk
    #Include scripts/CapslLock_shortcut.ahk
    #Include scripts/Winkey_shortcut.ahk
    #Include scripts/Mouse_shortcut.ahk
    #Include scripts/Z_shortcut.ahk
    #Include scripts/Q_shortcut.ahk
    #Include scripts/Tab_shortcut.ahk
    #Include scripts/Muhenkan_shortcut.ahk
    #Include scripts/Underscore_alternative_shift.ahk
    #Include scripts/Symbol_direct_input.ahk
    #Include scripts/Shift_symbol.ahk
    #Include scripts/VScode_Shortcut.ahk
    #Include scripts/default.ahk
#HotIf

;====================ゲームモード====================
#HotIf WinActive("ahk_group Game_group")
    #Include scripts/Game_shortcut.ahk
#HotIf



;************装飾キーメモ**************/
;キー名 説明                        /
; +    shift                       /
; ^    control                     /
; !     alt                        /
; #    windows                    /
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
