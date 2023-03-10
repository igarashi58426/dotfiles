;***********************CapsLockショートカット*****************************************************
;CapsLockに各制御キーを設定
F13 & w::Send("{Blind}{Up}") ;[CapsLock] + [w] -> [↑]
F13 & s::Send("{Blind}{Down}") ;[CapsLock] + [s] -> [↓]
F13 & d::Send("{Blind}{Right}") ;[CapsLock] + [d] -> [→]
F13 & a::Send("{Blind}{Left}") ;[CapsLock] + [a] -> [←]
F13 & q::Send("{Blind}{Backspace}") ;[CapsLock] + [q] -> [Backspace]  
F13 & e::Send("{Blind}{Enter}") ;[CapsLock] + [e] -> [Enter]

F13 & 1::{
    key := "1"
    long_press_timeout := KeyWait(key, "T0.25")
    if(long_press_timeout) {
        Send("{Blind}{LButton}") ;[CapsLock] + [1(1回押し)] -> [マウス左クリック]
    }else{
        Send("{Blind}{RButton}") ;[CapsLock] + [1--(長押し)] -> [マウス右クリック]
    } 
    KeyWait(key)
    return
}

F13 & 2::Send("{Blind}{F2}") ;[CapsLock] + [2] -> [F2]

F13 & 3::{
    key := "3"
    not_long_press := KeyWait(key, "T0.3")
    if(not_long_press){
        is_double_press := KeyWait(key, "D T0.2") 
        if(is_double_press){
            Send("{Blind}{End}") ;[CapsLock] + [33(2回押し)] -> [End]
        }else{
            Send("{Blind}{Home}") ;[CapsLock] + [3(1回押し)] -> [Home]
        }
    }else{
        Send("{home}") 
        Send("+{End}") ;[CapsLock] + [3--(長押し)] -> [Shift + Home → End(1行選択)]

    }
    KeyWait(key)
    return
}

F13 & 4::{
    key := "4"
    not_long_press := KeyWait(key, "T0.3")
    if(not_long_press){
        is_double_press := KeyWait(key, "D T0.2") 
        if(is_double_press){ 
            Send("!{F4}")  ;[CapsLock] + [44(2回押し)] -> [Alt + F4(ウィンドウ終了)]
        }else{
            Send("{Blind}{Esc}") ;[CapsLock] + [4(1回押し)] -> [Esc] 
        }
    }
    return
}

F13 & 5::Send "{Blind}{F5}" ;[CapsLock] + [5] -> [F5] 
F13 & 6::Send "{Blind}^{l}" ;[CapsLock] + [6] -> [Ctrl+L (アドレスバーを選択)]
F13 & 7::Send "{Blind}+{7}" ;[CapsLock] + [7] -> [ ' ]
F13 & 8::Send "{Blind}+{8}" ;[CapsLock] + [8] -> [ ( ]
F13 & 9::Send "{Blind}+{9}" ;[CapsLock] + [9] -> [ ) ]

F13 & F1::Send "{Volume_Mute}" ;[CapsLock] + [F1] -> [ミュート]
F13 & F2::Send "{Volume_Down 1}" ;[CapsLock] + [F2] -> [音量↓ダウン]
F13 & F3::Send "{Volume_Up 1}" ;[CapsLock] + [F3] -> [音量↑アップ]
F13 & F4:: return
F13 & F5::Reload ;[CapsLock] + [F5] -> [スクリプトを再読込し、最初から実行し直す]
F13 & F6::{
    Send("^{l}")                 ;[CapsLock] + [F6] -> [デスクトップディレクトリに移動  (アドレスバーを選択)]
    A_Clipboard := "%userprofile%\Desktop"
    Send("^{v}")
    Send("{Enter}")
    return
}
F13 & F7:: return
F13 & F8:: return
F13 & F9:: return
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
    return
}
F13 & g::{
    key := "g"
    not_long_press := KeyWait(key, "T0.3")
    if(not_long_press){
        is_double_press := KeyWait(key, "D T0.2") 
        if(is_double_press){
            MsgBox "double_press"
        }else{
            google_Search() ;[CapsLock] + [g] -> [選択した文字をグーグル検索]
        }
    }else{
        MsgBox "long_press"
    }
    KeyWait(key)
    return
}

F13 & t::google_translation() ;[CapsLock] + [t(1回押し)] -> [選択した文字をIronでグーグル翻訳]
;                             ;[CapsLock] + [tt(2回押し)] -> [選択した文字をIronでグーグル翻訳(改行削除)]


F13 & u::Send("{Blind}{F6}") ;[CapsLock] + [u] -> [ひらがなに変換]
F13 & i::Send("{Blind}{F7}") ;[CapsLock] + [i] -> [全角カタカナに変換]
F13 & o::Send("{Blind}{F10}") ;[CapsLock] + [o] -> [半角英数字に変換]

F13 & j::Send("{SC070}") ;[CapsLock] + [j] -> [日本語入力モード]
F13 & k::Send("+{F13}")  ;[CapsLock] + [k] -> [直接入力モード]

F13 & b::Send("{Blind}^{/}")  ;[CapsLock] + [b] -> [Ctrl + / (コメントアウト)]

F13 & /::Send("{Blind}^{/}") ;[CapsLock] + [/] -> [Ctrl + / (コメントアウト)]

F13 & -::{
    key := "-"
    not_long_press := KeyWait(key, "T0.3")
    If(not_long_press){
        is_double_press := KeyWait(key, "D T0.2") 
        If(is_double_press){
            InsertText("====================")  ;[CapsLock] + [--(2回押し)] -> [==========(20個)]   
        }else{
            InsertText("-") ;[CapsLock] + [-(1回押し)] -> [ - ]        
        }
    }else{
        InsertText("--------------------")  ;[CapsLock] + [---(長押し)] -> [----------(20個)]        
    }
    KeyWait(key)
    Return
}

F13 & @::{
    key := "@"
    long_press_timeout := KeyWait(key, "T0.25")
    if(long_press_timeout) {
        Send("{Blind}+{@}")    ;[CapsLock] + [@(1回押し)] -> [ ` ]
    }else{
        InsertText("````````````````````````````````````````````````````````````````````````````````")  ;[CapsLock] + [@--(長押し)] -> [````````````````````(40個)]
    } 
    KeyWait(key)
    return
}

F13 & XButton1::AltTab ;[CapsLock] + [マウス戻る] -> [Alt + Tab(ウィンドウ切り替え)]
F13 & XButton2::ShiftAltTab ;[CapsLock] + [マウス進む] -> [Alt + Sift + Tab(ウィンドウ逆切り替え)]
F13 & MButton::Send("{Blind}#{Tab}")

F13 & WheelUp::Send("{WheelUp 4}") ;[CapsLock] + [ホイール↑] -> [ホイール↑4倍]
F13 & WheelDown::Send("{WheelDown 4}") ;[CapsLock] + [ホイール↓] -> [ホイール↓4倍]

F13 & Numpad5::MouseMove(0,-40,1,"R") ;[CapsLock] + [テンキー5] -> [マウスカーソル移動(上)]
F13 & Numpad2::MouseMove(0,40,1,"R") ;[CapsLock] + [テンキー2] -> [マウスカーソル移動(下)]
F13 & Numpad1::MouseMove(-40,0,1,"R") ;[CapsLock] + [テンキー1] -> [マウスカーソル移動(左)]
F13 & Numpad3::MouseMove(40,0,1,"R") ;[CapsLock] + [テンキー3] -> [マウスカーソル移動(右)]
F13 & Numpad4::LButton ;[CapsLock] + [テンキー4] -> [マウス左クリック]
F13 & Numpad6::RButton ;[CapsLock] + [テンキー6] -> [マウス左クリック]
F13 & Numpad7::Send("{WheelUp 3}") ;[CapsLock] + [テンキー7] -> [ホイール↑3回]
F13 & Numpad8::MButton ;[CapsLock] + [テンキー8] -> [ホイールクリック]
F13 & Numpad9::Send("{WheelDown 3}") ;[CapsLock] + [テンキー9] -> [ホイール↓3回]


;********************************************************************************************

;***********************[CapsLock] + [g]のサブルーチンラベル************************************************
google_Search(){
    Send("^c")  ;選択した内容をコピー
    Sleep(1)   ;コピーを待機
    ClipWait(0)  ;クリップボードの内容がテキストとして読み取れるまで待機
    Run("https://www.google.co.jp/search?q=" A_Clipboard) ;既定のブラウザで検索
    return
}

;***********************************************************************************************

;***********************[CapsLock] + [t]のサブルーチンラベル************************************************



google_translation(){
    Send("^c")  ;選択した内容をコピー
    Sleep(1)   ;コピーを待機
    ClipWait(0)  ;クリップボードの内容がテキストとして読み取れるのを待機

    if WinExist("Iron"){ ;Ironブラウザが起動しているか確認
        WinActivate("Iron") ;起動済みの場合アクティブ化
        WinWaitActive("Iron")  ;アクティブ化完了を待機

    }else{
        Run("C:\Program Files\SRWare Iron (64-Bit)\iron.exe") ;Ironブラウザを起動
        WinWait("Iron") ;起動完了を待機
        WinActivate("Iron") ;アクティブ化
        WinWaitActive("Iron") ;アクティブ化完了を待機
        Sleep(100)
    }
    Send("^1") ;左端タブに移動
    MouseMove(180, 350 ,0) ;翻訳入力部にマウス移動
    Send("{LButton}") ;翻訳入力部をマウス左クリック
    Send("^a") ;翻訳入力部を全選択
    Send("{BackSpace}") ;翻訳入力部を削除
    Send("^v")       ;翻訳入力部にコピーした内容貼り付け
    return
}
; Clipboard := RegExReplace(Clipboard, "\n", " ")   ;改行が邪魔になる場合に半角スペースに置換
; Clipboard := RegExReplace(Clipboard, "\n\r", " ") ;改行が邪魔になる場合に半角スペースに置換
; Clipboard := RegExReplace(Clipboard, "\r", " ")   ;改行が邪魔になる場合に半角スペースに置換



;***********************************************************************************************

;***********装飾キーメモ************/
;キー名	説明                        /
; +	   shift                       /
; ^	   control                     /
; !	    alt                        /
; #	   windows	                   /
;**********************************/

