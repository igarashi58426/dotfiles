# dotfiles

## AutHotKey

メインのahkスクリプトファイル main_script.ahk
メインの単体実行可能実行ファイル main_script.exe
定義済みキー一覧表示のpythonスクリプトの実行ファイル Shortcut_ViewScript.exe

## VScode
以下3種において設定ファイルのjsonファイル
- vscodeの設定全般を定義する settings.json
- キー設定を定義する keybindings.json
- スニペットを定義する snippets/***.json

## google日本語入力設定
以下の3つにおいてエクスポートしたファイル
- キー設定
- ローマ字テーブル
- 変換辞書

## AutHotKeyのスタートアップ登録
スタートアップフォルダに登録する。
普段はスクリプトファイルにショートカットを作成してそれを置いている。
スタートアップフォルダはエクスプローラーで以下のパスを開く
```
%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
```

もしくは、Win+Rキーによるファイル名を指定して実行でも開ける
```
shell:startup
```
