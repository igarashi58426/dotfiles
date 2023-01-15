﻿;***********************winキー+文字キー*****************************************************

; #a::アクションセンターを表示/非表示(標準)
#b::Return                                             ;[win] + [b] -> [無し]
	

#c::Run("calc.exe")                                ;[win] + [c] -> [電卓を起動]

; #o::
;     run, SndVol.exe
;     winWait, 音量ミキサー, , 10
;     if (1 == errorLevel)
;         return
;     winGetPos, , , , WH
;     winMove, , , 0, A_ScreenHeight - WH, A_ScreenWidth
; return



; #d::デスクトップを表示する(標準)
; #e::エクスプローラーを起動する(標準)
#f::Return 
; #g::Xboxゲームバーを表示(標準)
#h::Return
; #i::設定ウィンドウを開く(標準)
#j::Return
; #k::  ;デバイスの接続画面を開く(標準)
; #l::  ;パソコンの画面をロック(標準)
#m::Return
#n::Return

;#p::  外部ディスプレイへ出力(標準)
#q::Return    ;Windows（アプリ、ファイル、設定）の検索を表示(標準)
;#r::  ;ファイル名を指定して実行(標準)
#s::Return  ;タスクバーの検索ボックスにカーソルを移動(標準)
;#t::       ;タスクバーでアプリを切り替える(標準)
#u::Return  ;Windowsの設定の「簡単操作」を起動(標準)
;#v::  ;クリップボードの履歴を表示(標準)
#w::Return   ;Windows Ink ワークスペース(標準)
#x::Return  ;クイックアクセスメニューを表示(標準)
#y::Return
#z::Return










;Win + Ctrl + →	仮想デスクトップの切り替え（複数ある場合）
;Win + Ctrl + ←	仮想デスクトップの切り替え（複数ある場合）
;Win + Ctrl + F4	使用中の仮想デスクトップを閉じる
;Win + Shift + M	最小化したウィンドウを表示
;Win + Shift + S	スクリーンショットの撮影
;Win + Shift + <	サブディスプレイにウィンドウを移動
;Win + Shift + >	サブディスプレイにウィンドウを移動
;Win + Pause	システム画面を開く
;Win + PrintScreen	スクリーンショットを撮影して保存
;Win + Tab	タスクビューを表示（アプリ切り替え）、タイムライン
;Win + Home	最前面のウィンドウ（アクティブ・ウィンドウ）以外を最小化
;Win + .	キーボードから絵文字・顔文字を追加
;Win + ,	全ウィンドウを一時的に透明に
;Win + +	拡大鏡をオンに/拡大鏡の拡大
;Win + –	拡大鏡の縮小
;Win + Esc	拡大鏡をオフに
;Win + 数字キー	タスクバーのアプリを起動
;Win + Alt + 数字キー	タスクバーのアプリの右クリックメニューを表示
;Win + ↑	アクティブなウィンドウを最大化
;Win + ↓	アクティブなウィンドウを元に戻す（2度押しで最小化する）
;Win + ←	アクティブなウィンドウを左半分に配置
;Win + →	アクティブなウィンドウを右半分に配置
;Win + Shift + ↑	アクティブなウィンドウを上下いっぱいに表示
;Win + Alt + D	日付と時刻を表示














;***装飾キーメモ***
;キー名	説明  
; +	   shift             
; ^	   control   
; !	    alt      
; #	   windows	    
;*****************
