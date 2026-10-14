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

;SendモードをEvent(SendEvent)に固定
;既定のSend(SendInput)は送出中スクリプト自身のキーボードフックを一時解除するため、
;その間に到着したキーのUpイベントが無視され、プレフィックスキー(z等)や
;修飾キーの押下状態追跡が崩れて「押しっぱなし」になることがある
;SendEventはフックを維持したまま送出するため、この問題を大幅に軽減できる
;参考: https://did2memo.net/2024/06/11/autohotkey-ctrl-key-is-stuck-sendevent/
SendMode "Event"

;キー押しっぱなし監視タイマー(保険)
;Sendの割り込み等で押しっぱなしになったキーを検出次第、強制的にキーアップを送る
SetTimer(WatchStuckKeys, 250)

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

;====================キー押しっぱなし監視関数====================
;GetKeyState(key)(システムが認識している論理状態)がDownで、
;GetKeyState(key, "P")(物理的な押下状態)がUpの状態が
;2周期(約500ms)連続して検出されたキーは「押しっぱなし」とみなし、
;強制的にキーアップを送信して解除する
;
;監視対象1: プレフィックスキー(z & x等のカスタム組み合わせホットキーの左辺キー)
;  押下イベントがフックで握りつぶされ、離した時に単独動作が発火するキー群
;  (zキーの押しっぱなし問題と同じロジックで動くキー)
;    z, q               → Z_shortcut.ahk / Q_shortcut.ahk / asdw_shortcut.ahk
;    Tab                → Tab_shortcut.ahk
;    F13 (CapsLock)     → CapslLock_shortcut.ahk / asdw_shortcut.ahk / Symbol_direct_input.ahk
;    SC073 (_キー)      → Underscore_alternative_shift.ahk / Shift_symbol.ahk
;    SC07B (無変換)     → Muhenkan_shortcut.ahk
;    RButton            → Mouse_shortcut.ahk
;    XButton1, XButton2 → Mouse_shortcut.ahk
;    AppsKey            → Mouse_shortcut.ahk
;監視対象2: 標準修飾キー(Ctrl / Shift / Alt / Win)
;  ShiftはShift & F13でプレフィックスに使われているが、標準修飾キーは
;  カスタム組み合わせでも握りつぶされないため通常の修飾キー監視で対応
;
;※XButton1/XButton2の単独押しは{down}→100ms→{up}の擬似クリックのため
;  一時的に「論理Down・物理Up」が約100ms生じるが、250ms×2回の検出条件では誤検出しない
WatchStuckKeys(){
    static WatchKeys := ["z", "q", "Tab", "F13", "SC073", "SC07B", "RButton", "XButton1", "XButton2", "AppsKey", "LControl", "RControl", "LShift", "RShift", "LAlt", "RAlt", "LWin", "RWin"]
    static StuckCounts := Map()
    For key in WatchKeys {
        If (GetKeyState(key) && !GetKeyState(key, "P")){
            StuckCounts[key] := StuckCounts.Get(key, 0) + 1
            If (StuckCounts[key] >= 2){
                StuckCounts[key] := 0
                Send("{Blind}{" key " up}")
            }
        } Else {
            StuckCounts[key] := 0
        }
    }
}



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
