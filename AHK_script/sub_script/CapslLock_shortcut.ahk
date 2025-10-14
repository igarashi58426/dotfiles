;***********************CapsLockショートカット*****************************************************
;CapsLockを再設定
^!F13::Send("{Blind}{CapsLock}") ;[Ctrl] + [Alt] + [CapsLock] -> [CapsLock]

F13 & Tab::Send("{SC070}") ;[CapsLock] + [Tab] -> [ひらがな入力]

Shift & F13::set_direct_input_mode() ; [Shift] + [CapsLock] -> [直接入力モード接入力]

F13 & 1::{
    key := "1"
    long_press_timeout := KeyWait(key, "T0.25")
    if(long_press_timeout) {
        Send("{Blind}{LButton}") ;[CapsLock] + [1(1回押し)] -> [マウス左クリック]
    }else{
        Send("{Blind}{RButton}") ;[CapsLock] + [1--(長押し)] -> [マウス右クリック]
    }
    KeyWait(key)
    Return
}

F13 & 2::{
    key := "2"
    if(KeyWait(key, "T0.3")){
        if(KeyWait(key, "D T0.2")){
            if(KeyWait(key, "T0.3") and KeyWait(key, "D T0.2") ){
                Send("^{d}") ;[CapsLock] + [222(3回押し)] -> [Ctrl + d (単語選択)]
            }else{
                Send("^{Left}^+{Right}") ;[CapsLock] + [22(2回押し)] -> [Ctrl← + CtrlShift→ (Ctrlによる単語選択)]
            }
        }else{
            Send("{Blind}{F2}") ;[CapsLock] + [2(1回押し)] -> [F2]
        }
    }else{
        Send("^{d}^+{l}") ;[CapsLock] + [2--(長押し)] -> [Ctrl + d → Ctrl + Shift + l (単語選択とマルチカーソル)]
    }
    KeyWait(key)
    Return
}

F13 & 3::{
    key := "3"
    if(KeyWait(key, "T0.3")){
        if(KeyWait(key, "D T0.2")){
            if(KeyWait(key, "T0.3") and KeyWait(key, "D T0.2") ){
                if(KeyWait(key, "T0.3") and KeyWait(key, "D T0.2") ){
                    if(KeyWait(key, "D T0.2") ){
                        Send("{Blind}+{End}") ;[CapsLock] + [3333(4回押し)] -> [Shift + End(後方選択)]
                    }
                }else{
                    Send("{Blind}+{Home}") ;[CapsLock] + [333(3回押し)] -> [Shift + Home(前方選択)]
                }
            }else{
                Send("{Blind}{End}") ;[CapsLock] + [33(2回押し)] -> [End]
            }
        }else{
            Send("{Blind}{Home}") ;[CapsLock] + [3(1回押し)] -> [Home]
        }
    }else{
        Send("{Home}")
        Send("+{End}") ;[CapsLock] + [3--(長押し)] -> [Shift + Home → End(1行選択)]
    }
    KeyWait(key)
    Return
}

F13 & 4::{
    key := "4"
    not_long_press := KeyWait(key, "T0.3")
    if(not_long_press){
        is_double_press := KeyWait(key, "D T0.2")
        if(is_double_press){
            Send("!{F4}") ;[CapsLock] + [44(2回押し)] -> [Alt + F4(ウィンドウ終了)]
        }else{
            Send("{Blind}{Esc}") ;[CapsLock] + [4(1回押し)] -> [Esc]
        }
    }
    Return
}

F13 & 5::{
    key := "5"
    if(KeyWait(key, "T0.3")){
        if(KeyWait(key, "D T0.2")){
            if(KeyWait(key, "T0.3") and KeyWait(key, "D T0.2") ){
                Send("^{F5}") ;[CapsLock] + [555(3回押し)] -> [Ctrl + F5(VScodeデバックなし実行)(未実装)]
            }else{
                Send("+{F5}") ;[CapsLock] + [55(2回押し)] -> [Shift + F5(VScodeデバックの停止)]
            }
        }else{
            Send("{Blind}{F5}") ;[CapsLock] + [5(1回押し)] -> [F5(再読み込み･VScode実行)]
        }
    }else{
        Send("^+{F5}") ;[CapsLock] + [5--(長押し)] -> [Ctrl + Shift + F5(VScodeデバックの再起動)(未実装)]
    }
    KeyWait(key)
    Return
}

F13 & 6::Send("{Blind}^{l}") ;[CapsLock] + [6] -> [Ctrl+L (アドレスバーを選択)]
F13 & 7::Send("{Blind}+{7}") ;[CapsLock] + [7] -> [ ' ]
F13 & 8::Send("{Blind}+{8}") ;[CapsLock] + [8] -> [ ( ]
F13 & 9::Send("{Blind}+{9}") ;[CapsLock] + [9] -> [ ) ]

F13 & 0::{
    key := "0"
    long_press_timeout := KeyWait(key, "T0.25")
    if(long_press_timeout) {
        Send("{# 10}{Left 5}") ;[CapsLock] + [0(1回押し)] -> [ ##### ##### ]
    }else{
        InsertText("####################") ;[CapsLock] + [0--(長押し)] -> [####################(20個)]
    }
    KeyWait(key)
    Return
}

F13 & Esc::Send("{Blind}{Delete}") ;[CapsLock] + [Esc] -> [Delete]

F13 & F1::{
    key := "F1"
    If (GetKeyState("Shift","P")) {
        Send("{Media_Play_Pause}") ; [Shift] + [CapsLock] + [F1] -> [再生/停止]
    }else{
        long_press_timeout := KeyWait(key, "T0.25")
        if(long_press_timeout) {
            Send("{Volume_Mute}") ;[CapsLock] + [F1(1回押し)] -> [ミュート]
        }else{
            Send("{Blind}#^{v}") ;[CapsLock] + [F1--(長押し)] -> [win + Ctrl + v (サウンド出力の選択)
        }
        KeyWait(key)
    }
    Return
}

F13 & F2::{
    If (GetKeyState("Shift","P")) {
        Send("{Media_Next}") ; [CapsLock] + [Shift] + [F2] -> [次の曲]
    }else{
        Send("{Volume_Down 1}") ;[CapsLock] + [F2] -> [音量↓ダウン]
    }
    Return
}

F13 & F3::{
    If (GetKeyState("Shift","P")) {
        Send("{Media_Prev}") ;[CapsLock] + [Shift] + [F3] -> [前の曲]
    }else{
        Send("{Volume_Up 1}") ;[CapsLock] + [F3] -> [音量↑アップ]
    }
    Return
}

F13 & F4::launch_disable_window() ;[CapsLock] + [F4] -> [スクリプト一時停止ウィンドウ]
F13 & F5::Reload ;[CapsLock] + [F5] -> [スクリプトを再読込し、最初から実行し直す]
F13 & F6::{
    Send("^{l}") ;[CapsLock] + [F6] -> [デスクトップディレクトリに移動  (アドレスバーを選択)]
    A_Clipboard := "%userprofile%\Desktop"
    Send("^{v}")
    Send("{Enter}")
    Return
}
F13 & F7:: {
    Run("explorer.exe " A_WorkingDir) ;[CapsLock] + [F7] -> [スクリプトをエクスプローラーで表示]
}

F13 & F8::{
    ListHotkeys ;[CapsLock] + [F8] -> [定義済みホットキーListHotkeysを起動する]
}

F13 & F9:: {
    KeyHistory ;[CapsLock] + [F9] -> [キー入力履歴ビュアーKeyHistoryを起動]
}

F13 & F10::Suspend ;[CapsLock] + [F10] -> [割り当てたホットキーを全て停止する]
F13 & F11::Pause ;[CapsLock] + [F11] -> [スクリプトを一時停止する]
F13 & F12::ExitApp ;[CapsLock] + [F12] -> [スクリプトを終了する]

F13 & r::Send("{Blind}{WheelUp 4}") ;[CapsLock] + [r] -> [ホイール↑4回]
F13 & f::Send("{Blind}{WheelDown 4}") ;[CapsLock] + [f] -> [ホイール↓4回] "
F13 & z::Send("{Blind}^{z}") ;[CapsLock] + [z] -> [Ctrl+z (戻る)]
F13 & x::Send("{Blind}^{x}") ;[CapsLock] + [x] -> [Ctrl+x (切り取り)]
F13 & c::Send("{Blind}^{c}") ;[CapsLock] + [c] -> [Ctrl+c (コピー)]
F13 & v::{
    key := "v"
    not_long_press := KeyWait(key, "T0.3")
    if(not_long_press){
        is_double_press := KeyWait(key, "D T0.2")
        if(is_double_press){
            A_Clipboard := RegExReplace(A_Clipboard, "(\n|\r|\r\n)", "")
            Send("{Blind}^v") ;[CapsLock] + [vv(2回押し)] -> [Ctrl+v(改行を削除して貼り付け)]
        }else{
            Send("{Blind}^v") ;[CapsLock] + [v(1回押し)] -> [Ctrl+v(貼り付け)]
        }
    }else{
        Send("{Blind}#v") ;[CapsLock] + [v--(長押し)] -> [win+v(クリップボード履歴) ]
    }
    KeyWait(key)
    Return
}
F13 & g::{
    key := "g"
    not_long_press := KeyWait(key, "T0.3")
    if(not_long_press){
        is_double_press := KeyWait(key, "D T0.2")
        if(is_double_press){
            Return
        }else{
            google_Search() ;[CapsLock] + [g] -> [選択した文字をグーグル検索]
        }
    }else{
        Return
    }
    KeyWait(key)
    Return
}

F13 & t::google_translation() ;[CapsLock] + [t(1回押し)] -> [選択した文字をIronでグーグル翻訳]
;                             ;[CapsLock] + [tt(2回押し)] -> [選択した文字をIronでグーグル翻訳(改行削除)]

F13 & h::{
    key := "h"
    not_long_press := KeyWait(key, "T0.3")
    If(not_long_press){
        is_double_press := KeyWait(key, "D T0.2")
        If(is_double_press){
            Send("{Blind}^{End}")    ;[CapsLock] + [hh(2回押し)] -> [Ctrl + End (ファイルの末尾へ)]
        }else{
            Send("{Blind}^{Home}")    ;[CapsLock] + [h(1回押し)] -> [Ctrl + Home (ファイルの先頭へ)]
        }
    }
    KeyWait(key)
    Return
}

F13 & n::Return
F13 & m::Return

F13 & u::Send("{Blind}{F6}") ;[CapsLock] + [u] -> [ひらがなに変換]
F13 & i::Send("{Blind}{F7}") ;[CapsLock] + [i] -> [全角カタカナに変換]
F13 & o::Send("{Blind}{F10}") ;[CapsLock] + [o] -> [半角英数字に変換]

F13 & j::Send("{SC070}") ;[CapsLock] + [j] -> [日本語入力モード]
F13 & k::set_direct_input_mode() ;[CapsLock] + [k] -> [直接入力モード]

F13 & b::{
    key := "b"
    if(KeyWait(key, "T0.3")){
        if(KeyWait(key, "D T0.2")){
            if(KeyWait(key, "T0.3") and KeyWait(key, "D T0.2") ){
                if(KeyWait(key, "T0.3") and KeyWait(key, "D T0.2") ){
                    if(KeyWait(key, "D T0.2") ){
                        Send("^{x}") ;[CapsLock] + [bbbb(4回押し)] -> [選択範囲を```コードブロックへ変換]
                        sleep(100)
                        A_Clipboard := RegExReplace(A_Clipboard, "[\n|\r|\r\n]$", "")
                        InsertText("```````n`n```````n")
                        Send("{Up 2}")
                        Send("^{v}")
                    }
                }else{
                    Send("{Home 2}") ;[CapsLock] + [bbb(3回押し)] -> [カーソル行を```コードブロックへ変換]
                    Send("+{Down}")
                    sleep(10)
                    Send("^{x}")
                    sleep(100)
                    InsertText("```````n`n```````n")
                    Send("{Up 2}")
                    A_Clipboard := strip_linebreaks(A_Clipboard)
                    Send("^{v}")
                }
            }else{
                InsertText("```````n`n```````n") ;[CapsLock] + [bb(2回押し)] -> [```コードブロック生成]
                Send("{Up 2}")
            }
        }else{
            Send("{Blind}^{/}") ;[CapsLock] + [b(1回押し)] -> [Ctrl + / (コメントアウト)]
        }
    }else{
        InsertText("````") ;[CapsLock] + [b(長押し)] -> [``(2個)]
        Send("{Left}")
    }
    KeyWait(key)
    Return
}

F13 & /::Send("{Blind}^{/}") ;[CapsLock] + [/] -> [Ctrl + / (コメントアウト)]

F13 & -::{
    key := "-"
    not_long_press := KeyWait(key, "T0.3")
    If(not_long_press){
        is_double_press := KeyWait(key, "D T0.2")
        If(is_double_press){
            InsertText("====================") ;[CapsLock] + [--(2回押し)] -> [==========(20個)]
        }else{
            InsertText("- ") ;[CapsLock] + [-(1回押し)] -> [ - ]
        }
    }else{
        InsertText("--------------------") ;[CapsLock] + [---(長押し)] -> [----------(20個)]
    }
    KeyWait(key)
    Return
}

F13 & @::{
    key := "@"
    long_press_timeout := KeyWait(key, "T0.25")
    if(long_press_timeout) {
        Send("{Blind}+{@}") ;[CapsLock] + [@(1回押し)] -> [ ` ]
    }else{
        InsertText("````````````````````````````````````````````````````````````````````````````````") ;[CapsLock] + [@--(長押し)] -> [````````````````````(40個)]
    }
    KeyWait(key)
    Return
}

F13 & SC027::{
    key := "SC027"
    not_long_press := KeyWait(key, "T0.3")
    If(not_long_press){
        is_double_press := KeyWait(key, "D T0.2")
        If(is_double_press){
            now_day := FormatTime(, "yyyy年MM月dd日")
            InsertText(now_day) ;[CapsLock] + [;;(2回押し)] -> [yyyy年MM月dd日]
        }else{
            now_day := FormatTime(, "yyyy/MM/dd")
            InsertText(now_day) ;[CapsLock] + [;(1回押し)] -> [yyyy/MM/dd]
        }
    }else{
        iso_time := FormatTime(, "yyyy-MM-ddTHH:mm:ss+09:00")
        InsertText(iso_time) ;[CapsLock] + [;--(長押し)] -> [yyyy-MM-ddTHH:mm:ss+09:00 (iso8601)]
    }
    KeyWait(key)
    Return
}

F13 & SC028::{
    key := "SC028"
    not_long_press := KeyWait(key, "T0.3")
    If(not_long_press){
        is_double_press := KeyWait(key, "D T0.2")
        If(is_double_press){
            now_time := FormatTime(, "HH:mm:ss")
            InsertText(now_time) ;[CapsLock] + [:: (2回押し)] -> [HH:mm:ss]
        }else{
            now_time := FormatTime(, "HH:mm")
            InsertText(now_time) ;[CapsLock] + [:(1回押し)] -> [HH:mm:ss]
        }
    }else{
        now_time := FormatTime(, "HH:mm:ss")
        InsertText(now_time) ;[CapsLock] + [:--(長押し)] -> [HH:mm:ss]
    }
    KeyWait(key)
    Return
}

F13 & XButton1::AltTab ;[CapsLock] + [マウス戻る] -> [Alt + Tab(ウィンドウ切り替え)]
F13 & XButton2::ShiftAltTab ;[CapsLock] + [マウス進む] -> [Alt + Sift + Tab(ウィンドウ逆切り替え)]
F13 & MButton::Send("{Blind}#{Tab}")

F13 & WheelUp::Send("{WheelUp 4}") ;[CapsLock] + [ホイール↑] -> [ホイール↑4倍]
F13 & WheelDown::Send("{WheelDown 4}") ;[CapsLock] + [ホイール↓] -> [ホイール↓4倍]

F13 & Enter::{
    key := "Enter"
    long_press_timeout := KeyWait(key, "T0.25")
    if(long_press_timeout) {
        Send("{Enter}") ;[CapsLock] + [Enter] -> [Enter]
    }else{
        Loop(10)
        {
            Send("{Blind}{Enter}")
            Sleep(30)
            Send("{Blind}{Up}") ;[CapsLock] + [Enter--(長押し)] -> [改行 10行]
        }
    }
    KeyWait(key)
    Return
}

F13 & Space::Send("{Blind}{_}") ;[CapsLock] + ["_"] -> ["_"]

;********************************************************************************************

;***********************[CapsLock] + [g]のサブルーチンラベル************************************************
google_Search(){
    A_Clipboard := ""
    Sleep(1) ;コピー待機
    Send("^{c}") ;選択した内容をコピー
    ClipWait(3,1) ;クリップボードの内容がテキストとして読み取れるのを待機
    Run("https://www.google.co.jp/search?q=" A_Clipboard) ;既定のブラウザで検索
    Return
}

;***********************************************************************************************

;***********************[CapsLock] + [t]のサブルーチンラベル************************************************

google_translation(){
    A_Clipboard := ""
    Sleep(1) ;コピー待機
    Send("^{c}") ;選択した内容をコピー
    ClipWait(3,1) ;クリップボードの内容がテキストとして読み取れるのを待機
    if WinExist("Iron"){ ;Ironブラウザが起動しているか確認
        WinActivate("Iron") ;起動済みの場合アクティブ化
        WinWaitActive("Iron",,3) ;アクティブ化完了を3秒待機
    }else{
        ; ブラウザの起動
        Try
        {
            Run('"C:\Program Files\SRWare Iron (64-Bit)\chrome.exe" -incognito') ;Ironブラウザをプライベートで起動
        }catch {
            Run("https://translate.google.com/?hl=ja&sl=en&tl=ja&op=translate&text=" A_Clipboard) ;デフォルトブラウザでgoogle翻訳を開く
            Return
        }
        WinWait("Iron") ;起動完了を待機
        WinActivate("Iron") ;アクティブ化
        WinWaitActive("Iron",,3) ;アクティブ化完了を3秒待機
        InsertText("https://translate.google.com/?hl=ja&sl=en&tl=ja&op=translate&text=" A_Clipboard) ;google翻訳を開く
        Send("{Enter}") ;ページ遷移
    }
    Send("^{1}") ;左端タブに移動
    Send("^{l}") ;アドレスバーにフォーカス
    Sleep(10)
    Send("{Backspace}") ;元のアドレスを削除
    Sleep(10)
    InsertText("https://translate.google.com/?hl=ja&sl=en&tl=ja&op=translate&text=" A_Clipboard) ;google翻訳を開く
    Sleep(50)
    Send("{Enter}") ;ページ遷移
    Return
}

;***********************************************************************************************

launch_disable_window(){
    ; ウィンドウを作成
    MyGui := Gui(,"ScriptDisabled")
    MyGui.Opt("AlwaysOnTop") ; 強制最前面オプション

    ; ボタン追加+クリックで終了
    B := MyGui.Add("Button",, "Click to release")
    B.OnEvent("Click", win_exit)
    win_exit(*)
    {
        ; ウィンドウ削除
        MyGui.Destroy
    }
    
    ; 画面表示
    MyGui.Show("x0 y" . A_ScreenHeight-85)

}
;***********************************************************************************************


;***********装飾キーメモ************/
;キー名 説明                        /
; +    shift                       /
; ^    control                     /
; !     alt                        /
; #    windows                     /
;**********************************/

