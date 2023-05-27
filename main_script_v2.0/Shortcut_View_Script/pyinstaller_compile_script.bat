@echo off
chcp 65001

setlocal


@REM 変換スクリプトの実行
pyinstaller Shortcut_View_Script.py --onefile --noconsole --clean


@REM  指定ファイルの移動
move "dist\\Shortcut_View_Script.exe" ".\"
@REM 取り出したフォルダを削除
rmdir "dist"
@REM  ビルド生成フォルダ以下の全削除
rd /s /q "build"
@REM  ビルド生成コンフィグファイルの削除
del "Shortcut_View_Script.spec"

endlocal
