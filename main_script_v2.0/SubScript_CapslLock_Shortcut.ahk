;***********************CapsLockショートカット*****************************************************
;CapsLockに各制御キーを設定
F13 & w::{
    If (GetKeyState("n","P") and GetKeyState("m","P")) {
        Send("{Blind}+^{Up}") ;[CapsLock] + [n] + [m]  + [w] -> [Shift + Ctrl + ↑]
        Return
    }
    If (GetKeyState("n","P")) {
        Send("{Blind}+{Up}") ;[CapsLock] + [n] + [w] -> [Shift + ↑]
        Return
    }
    If (GetKeyState("m","P")) {
        Send("{Blind}^{Up}") ;[CapsLock] + [m] + [w] -> [Ctrl + ↑]
        Return
    }
    Send("{Blind}{Up}") ;[CapsLock] + [w] -> [↑]
    Return
}

F13 & s::{
    If (GetKeyState("n","P") and GetKeyState("m","P")) {
        Send("{Blind}+^{Down}") ;[CapsLock] + [n] + [m]  + [s] -> [Shift + Ctrl + ↓]
        Return
    }
    If (GetKeyState("n","P")) {
        Send("{Blind}+{Down}") ;[CapsLock] + [n] + [s] -> [Shift + ↓]
        Return
    }
    If (GetKeyState("m","P")) {
        Send("{Blind}^{Down}") ;[CapsLock] + [m] + [s] -> [Ctrl + ↓]
        Return
    }
    Send("{Blind}{Down}") ;[CapsLock] + [s] -> [↓]
    Return
}

F13 & d::{
    If (GetKeyState("n","P") and GetKeyState("m","P")) {
        Send("{Blind}+^{Right}") ;[CapsLock] + [n] + [m] + [d] -> [Shift + Ctrl + →]
        Return
    }
    If (GetKeyState("n","P")) {
        Send("{Blind}+{Right}") ;[CapsLock] + [n] + [d] -> [Shift + →]
        Return
    }
    If (GetKeyState("m","P")) {
        Send("{Blind}^{Right}") ;[CapsLock] + [m] + [d] -> [Ctrl + →]
        Return
    }
    Send("{Blind}{Right}") ;[CapsLock] + [d] -> [→]
    Return
}


F13 & a::{
    If (GetKeyState("n","P") and GetKeyState("m","P")) {
        Send("{Blind}+^{Left}") ;[CapsLock] + [n] + [m] + [a] -> [Shift + Ctrl + ←]
        Return
    }
    If (GetKeyState("n","P")) {
        Send("{Blind}+{Left}") ;[CapsLock] + [n] + [a] -> [Shift + ←]
        Return
    }
    If (GetKeyState("m","P")) {
        Send("{Blind}^{Left}") ;[CapsLock] + [m] + [a] -> [Ctrl + ←]
        Return
    }
    Send("{Blind}{Left}") ;[CapsLock] + [a] -> [←]
    Return
}


F13 & q::{
    If (GetKeyState("n","P") and GetKeyState("m","P")) {
        Return
    }
    If (GetKeyState("n","P")) {
        Send("{Blind}{Delete}") ;[CapsLock] + [n] + [q] -> [Delete]
        Return
    }
    If (GetKeyState("m","P")) {
        Send("{Blind}^{Backspace}}") ;[CapsLock] + [m] + [q] -> [Ctrl + Backspace]
        Return
    }
    Send("{Blind}{Backspace}") ;[CapsLock] + [q] -> [Backspace]
    Return
}

F13 & e::{
    If (GetKeyState("n","P") and GetKeyState("m","P")) {
        Return
    }
    If (GetKeyState("n","P")) {
        Send("{Blind}+{Enter}") ;[CapsLock] + [n] + [e] -> [Shift + Enter]
        Return
    }
    If (GetKeyState("m","P")) {
        Send("{Blind}^{Enter}}") ;[CapsLock] + [m] + [e] -> [Ctrl + Enter]
        Return
    }
    Send("{Blind}{Enter}") ;[CapsLock] + [e] -> [Enter]
    Return
}

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
    long_press_timeout := KeyWait(key, "T0.25")
    if(long_press_timeout) {
        Send("{Blind}{F2}") ;[CapsLock] + [2(1回押し)] -> [F2]
    }else{
        Send("^{d}") 
        Send("^{c}") ;[CapsLock] + [2--(長押し)] -> [Ctrl + d → c (単語選択とコピー)]
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
        InsertText("#########") ;[CapsLock] + [0(1回押し)] -> [ ##### ##### ]
        Send("{Left 5}") 
    }else{
        InsertText("####################") ;[CapsLock] + [0--(長押し)] -> [####################(20個)]
    } 
    KeyWait(key)
    Return
}

F13 & F1::Send("{Volume_Mute}") ;[CapsLock] + [F1] -> [ミュート]
F13 & F2::Send("{Volume_Down 1}") ;[CapsLock] + [F2] -> [音量↓ダウン]
F13 & F3::Send("{Volume_Up 1}") ;[CapsLock] + [F3] -> [音量↑アップ]
F13 & F4::Return
F13 & F5::Reload ;[CapsLock] + [F5] -> [スクリプトを再読込し、最初から実行し直す]
F13 & F6::{
    Send("^{l}") ;[CapsLock] + [F6] -> [デスクトップディレクトリに移動  (アドレスバーを選択)]
    A_Clipboard := "%userprofile%\Desktop"
    Send("^{v}")
    Send("{Enter}")
    Return
}
F13 & F7:: Return
F13 & F8:: Return
F13 & F9:: Return
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
F13 & k::Send("+{F13}") ;[CapsLock] + [k] -> [直接入力モード]

F13 & b::{
    key := "b"
    if(KeyWait(key, "T0.3")){
        if(KeyWait(key, "D T0.2")){
            if(KeyWait(key, "T0.3") and KeyWait(key, "D T0.2") ){
                if(KeyWait(key, "T0.3") and KeyWait(key, "D T0.2") ){
                    if(KeyWait(key, "D T0.2") ){
                        Send("^{x}") ;[CapsLock] + [bbbb(4回押し)] -> [選択範囲を```コードブロックへ変換]
                        sleep(100)
                        InsertText("```````n`n``````") 
                        Send("{Up}")
                        Send("^{v}")
                    }
                }else{
                    Send("{Home 2}") ;[CapsLock] + [bbb(3回押し)] -> [カーソル行を```コードブロックへ変換]
                    Send("+{Down}")
                    sleep(10)
                    Send("^{x}")
                    sleep(100)
                    InsertText("```````n`n``````") 
                    Send("{Up}")
                    A_Clipboard := strip_linebreaks(A_Clipboard)
                    Send("^{v}")
                }
            }else{
                InsertText("```````n`n``````") ;[CapsLock] + [bb(2回押し)] -> [```コードブロック生成]
                Send("{Up}")
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

F13 & Space::Send("{Blind}{_}") ;[CapsLock] + [] -> [Ctrl + / (コメントアウト)]

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
        Run('"C:\Program Files\SRWare Iron (64-Bit)\chrome.exe" -incognito') ;Ironブラウザをプライベートで起動
        WinWait("Iron") ;起動完了を待機
        WinActivate("Iron") ;アクティブ化
        WinWaitActive("Iron",,3) ;アクティブ化完了を3秒待機
        InsertText("https://translate.google.com/?hl=ja&sl=en&tl=ja&op=translate&text=" A_Clipboard) ;google翻訳を開く
        Send("{Enter}") ;ページ遷移
    }
    Send("^{1}") ;左端タブに移動
    Send("^{l}") ;アドレスバーにフォーカス
    Send("{Backspace}") ;元のアドレスを削除
    InsertText("https://translate.google.com/?hl=ja&sl=en&tl=ja&op=translate&text=" A_Clipboard) ;google翻訳を開く
    Send("{Enter}") ;ページ遷移
    Return
}

;***********************************************************************************************

;***********装飾キーメモ************/
;キー名	説明                        /
; +	   shift                       /
; ^	   control                     /
; !	    alt                        /
; #	   windows	                   /
;**********************************/

