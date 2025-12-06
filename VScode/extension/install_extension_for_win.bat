@echo off
setlocal enabledelayedexpansion

REM === 実行対象ファイルを指定 ===
set TARGET_FILE=install_extension_for_linux.sh

REM === 結果出力ファイル ===
set RESULT_FILE=Result.txt

REM 既存のResult.txtを初期化
type nul > "%RESULT_FILE%"

REM === コマンドファイルを1行ずつ読み込み実行 ===
for /f "usebackq delims=" %%A in ("%TARGET_FILE%") do (
    set LINE=%%A

    REM 空行または # で始まる行はスキップ
    if not "!LINE!"=="" (
        if /i "!LINE:~0,1!" NEQ "#" (
            echo ================================ >> "%RESULT_FILE%"
            echo Run: !LINE! >> "%RESULT_FILE%"
            echo ------------------------------- >> "%RESULT_FILE%"
            
            REM コマンド実行 & 出力を追記
            call !LINE! >> "%RESULT_FILE%" 2>&1
            echo. >> "%RESULT_FILE%"
        )
    )
)

echo The process is complete.
endlocal
