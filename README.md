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
- Markdown用CSS Markdown_stylesheet/***.css

## google日本語入力設定
以下の3つにおいてエクスポートしたファイル
- キー設定
- ローマ字テーブル
- 変換辞書

## CapsLockキー置換
CapsLockキーをF13に置換する対話スクリプト

管理者権限で実行を行う

対話型のpythonスクリプトで、WindowsのScancodeMap
を編集してCapsLockキーをF13に置換する

有効化には再起動が必要

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
