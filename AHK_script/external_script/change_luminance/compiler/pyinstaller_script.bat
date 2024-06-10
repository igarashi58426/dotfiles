@REM pythonスクリプトのコンパイルはpyinstallerに依存する
@REM 未インストールの場合は以下コマンドでインストールする
@REM pip install pyinstaller

@REM パラメーター指定
set working_dir=..
set script_file=change_luminance
set executable_dir=executable
set script_dir=script

@echo off
chcp 65001
setlocal

@REM カレントディレクトリの移動
cd %working_dir%

@REM 変換スクリプトの実行
pyinstaller %script_dir%\\%script_file%.py --onefile --noconsole --clean

@REM 指定ファイルの移動
move "dist\\%script_file%.exe" "%executable_dir%"
@REM 取り出したフォルダを削除
rmdir "dist"
@REM ビルド生成フォルダ以下の全削除
rd /S /Q "build"
@REM ビルド生成コンフィグファイルの削除
del "%script_file%.spec"

endlocal
