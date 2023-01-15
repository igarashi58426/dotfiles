

;USキーボードの｢半角・全角｣を押したときのキーを入力
^+7::Send("{SC029}")                               ;[Ctrl] + [Shift] + [7] -> [`]

F13::F5                                         ;[CapsLock] -> [F5]
F14::F6                                         ;[無変換] -> [F6]



F13 & F1::Send("{Volume_Mute}")                   ;[CapsLock] + [F1] -> [ミュート]
F13 & F2::Send("{Volume_Down 1}")                   ;[CapsLock] + [F2] -> [音量↓ダウン]
F13 & F3::Send("{Volume_Up 1}")                     ;[CapsLock] + [F3] -> [音量↑アップ]
	
F13 & F9::Reload                                 ;[CapsLock] + [F9] -> [スクリプトを再読込し、最初から実行し直す]
F13 & F10::Suspend                               ;[CapsLock] + [F10] -> [割り当てたホットキーを全て停止する]
F13 & F11::Pause                                 ;[CapsLock] + [F11] -> [スクリプトを一時停止する]
F13 & F12::ExitApp                               ;[CapsLock] + [F12] -> [スクリプトを終了する]


/************装飾キーメモ**************/
/キー名	説明                        /
/ +	   shift                       /
/ ^	   control                     /
/ !	    alt                        /
/ #	   windows	                   /
/**********************************/

