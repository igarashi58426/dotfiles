@REM pythonスクリプトのコンパイルはpyinstallerに依存する
@REM 未インストールの場合は以下コマンドでインストールする
@REM pip install pyinstaller


@REM コンパイル対象のファイル指定
set target_file=change_luminance


@echo off
chcp 65001
setlocal

@REM 変換スクリプトの実行
pyinstaller %target_file%.py --onefile --noconsole --clean

@REM  指定ファイルの移動
move "dist\\%target_file%.exe" ".\"
@REM 取り出したフォルダを削除
rmdir "dist"
@REM  ビルド生成フォルダ以下の全削除
rd /s /q "build"
@REM  ビルド生成コンフィグファイルの削除
del "%target_file%.spec"

endlocal
