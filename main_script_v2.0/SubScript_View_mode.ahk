

; 2.0に未対応







;***********************説明*************************************
;1.[CapsLock] + [spece]で｢View_modeウィンドウ｣を作成
;  文字入力不可のショートカットモードになる
;  ウィンドウの作成場所はx290 y1033であり、画面左下のwin10タスクバーの検索の部分に小さく作成
;  ウィンドウ作成後はすぐさま元のウィンドウにアクティブを戻る
;2.｢#IfWinExist, View_mode｣にてView_modeウィンドウが実行中の場合のみ下のスクリプトが実行
;  一部vimを参考にショートカットを割り当て
;  全文字に上書きをかけているため文字入力は不可能となる
;3.もう一度[CapsLock] + [spece]を押すと｢View_modeウィンドウ｣が削除される
;  文字入力可能な通常モードに戻る
;
; ※下の｢#If｣がない場合バグる。理由は...
;****************************************************************



;***********************[View_mode]ウィンドウの作成****************************************************

; タスクバーアイコン点滅防止
#WinActivateForce

F13 &  Space::                                        ;[CapsLock] + [spece]で実行
	IfWinNotExist, View_mode                   	      ;ウィンドウが未作成の場合作成	
		{
		WinGetActiveTitle, exactivewindow             ;現在のアクティブなウインドウを変数に
		Gui, View: New,, View_mode                    ;[View_mode]というウインドウ/GUI作成	
		Gui, View: +AlwaysOnTop -Caption              ;
		Gui, View: Color,FFd700                        
		Gui, View: Font, S13, Meiryo UI               ;サイズS13の文字
		Gui, View: Add, text,, View_mode              ;[View_mode]表示
		Gui, View: Show, x320 y1032                   ;x290 y1033に作成
		Sleep, 200                                    ;200ms待機
		WinActivate, %exactivewindow%                 ;アクティブだったウインドウを戻す
		return
		}
	else                                         ;ウィンドウが作成済みの場合削除
		Gui, View: destroy                       	  ;ウィンドウ削除
	return

;***********************************************************************************************



;***********************[View_mode]ショートカット****************************************************

#IfWinExist, View_mode                           ;[View_mode]ウィンドウが実行中ならば以下のスクリプトが実行	
	q::Send,{Blind}^{Tab}							  ;[q] -> [Ctrl + tab](タブを左に移動)
	+q::Send,!{left} 								  ;[shift] + [q] -> [Alt + ←](戻る)
	a::Send,{Blind}^a                                 ;[a] -> [Ctrl + a](全選択)
	z::Send,{Blind}^z                                 ;[z] -> [Ctrl + z](もとに戻す)

	+w::Send,^w                                       ;[shift] + [w] -> [Ctrl + w](タブ削除)
	s::Send,{Down}       							  ;[s] -> [↓]
	+s::Send,{Up}									  ;[shift] + [s] -> [↑]
	x::Send,{Blind}^x                                 ;[x] -> [Ctrl + x](切り取り) 

	e::Send,^+{Tab}	                                  ;[e] -> [Ctrl + Shift + tab](タブを右に移動)
	+e::Send,!{Right}                                 ;[shift] + [e] -> [Alt + →](進む)
	d::Send,{Blind}{WheelDown 5}                      ;[d] -> [半ページスクロールダウン]	
	+d::Send,{WheelUp 5}                              ;[shift] + [d] -> [半ページスクロールアップ]
	c::Send,{Blind}^c                                 ;[c] -> [Ctrl + c](コピー)

	r::Send,{Blind}{F5}                               ;[r] -> [F5](リロード)
	f::Send,{Blind}^f                                 ;[f] -> [Ctrl + f](ワード検索)
	v::Send,{Blind}^v                                 ;[v] -> [Ctrl + v](貼り付け)

	t::Send,{Blind}^t                                 ;[t] -> [新しいタブ]
	+t::Send,^+t                                      ;[shift] + [t] -> [削除したタブの復元] 
	g::                                               ;[gg(2回押し)] -> [Home]
		KeyWait,g,T0.3		                         
		If(!ErrorLevel)                             
			KeyWait,g,D T0.2                          
			If(!ErrorLevel)                           
				Send {Blind}{Home}                    
		Return
	+g::Send,{End}                                    ;[shift] + [g] -> [End]	
	b::Return                                         ;[b] -> [割り当てなし]
	y::Return                                         ;[y] -> [割り当てなし]
	h::Send,{Blind}{Left}                             ;[h] -> [←] 
	n::Return                                         ;[n] -> [割り当てなし]
	u::Return                                         ;[u] -> [割り当てなし]
	j::Send,{Blind}{Down}                             ;[j] -> [↓]
	m::Return                                         ;[m] -> [割り当てなし]
	i::Return                                         ;[i] -> [割り当てなし]
	k::Send,{Blind}{Up}                               ;[k] -> [↑]
	o::Return                                         ;[o] -> [割り当てなし]
	l::Send,{Blind}{Right}                            ;[l] -> [→]
	p::Return                                         ;[p] -> [割り当てなし]



#If
;***********************************************************************************************

/************装飾キーメモ**************/
/キー名	説明                        /
/ +	   shift                       /
/ ^	   control                     /
/ !	    alt                        /
/ #	   windows	                   /
/**********************************/
