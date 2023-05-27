@echo off
chcp 65001

setlocal

@REM バッチファイルのあるパスの絶対パスを取得
set "batch_dir=%~dp0"

@REM 入力する.ahkスクリプトのファイル名
set script_file_name=main_script.ahk

@REM 入力する.ahkファイルのパスを生成
set "input_file=%batch_dir%\..\%script_file_name%"

@REM 出力する.exeファイルのファイル名
set exe_file_name=main_script.exe

@REM 出力する.exeファイルパスを生成
set "output_file="%batch_dir%\%exe_file_name%"

@REM Ahk2Exe.exeのパス
set Ahk2Exe_path="%ProgramFiles%\AutoHotkey\Compiler\Ahk2Exe.exe" 

@REM AutoHotkey64.exeのパス
set AutoHotkey64_path="%ProgramFiles%\AutoHotkey\v2\AutoHotkey64.exe" 


@REM 確認のため表示
echo 変換スクリプト: %Ahk2Exe_path%
echo 実行基盤: %AutoHotkey64_path%
echo 入力ファイル: %input_file%
echo 出力ファイル: %output_file%

@REM ahk→exeの変換スクリプトの実行
%Ahk2Exe_path% /in %input_file% /base %AutoHotkey64_path% /out %output_file%

endlocal
