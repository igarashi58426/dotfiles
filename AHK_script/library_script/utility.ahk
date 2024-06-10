;====================任意テキストをペーストする関数====================
InsertText(Content){
    All_Clip_Saved := ClipboardAll()
    A_Clipboard := Content
    Send("^{v}")
    Sleep(200)
    A_Clipboard := All_Clip_Saved
}

;====================改行削除関数====================
strip_linebreaks(text){
    text := RegExReplace(text, "\R", "") ;改行を置換で削除
    Return text
}

;====================クリティカルセクション文字貼り付け====================
InsertText_in_critical(Content){
    Critical "On"
    InsertText(Content)
    Critical "Off"
    Return
}

;====================直接入力での文字入力====================
send_as_direct_input_IME(key_text){
    IME_SET(0)
    Send(key_text)
    Return
}

;====================直接入力モードセット====================
set_direct_input_mode(){
    vImeMode := IME_GET()
    If (vImeMode != 0){
        IME_SET(0)
    }
}
