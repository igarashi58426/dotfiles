# dotfiles

Windows と Linux（WSL 含む）の設定ファイル・スクリプト

## 構成

```text
dotfiles/
├── AHK_script/                    AutoHotkey v2 によるキーカスタマイズ
├── capslockキー置換/                CapsLock → F13（Scancode Map 編集）
├── git/                           git のユーザー設定
├── google日本語入力設定/             Google 日本語入力のエクスポート
├── Linux/                         Linux/WSL 用のツール導入・エイリアス
├── VScode/                        VS Code の設定・拡張・導入スクリプト
├── WindowsTerminal/               Windows Terminal のキー設定
├── スタートメニューweb検索無効化/     スタートメニューの Bing 検索無効化
└── スタートアップ.lnk              スタートアップフォルダを開くショートカット
```

---

## AutoHotkey（`AHK_script/`）

`main.ahk` がメインスクリプト。**AutoHotkey v2** 構文で書かれており、
`library/` `config/` `scripts/` を `#Include` で読み込む構成。

### 前提1：レジストリでのキー置換

CapsLock や日本語配列特有のキーは AutoHotkey 側で変更すると不具合が出るため、
キーリマップソフト（ChgKey）や `capslockキー置換/` のスクリプトで
レジストリ（Scancode Map）からファンクションキーへ置き換えた状態を前提にしている。

| 元キー | Scancode | 置換後 |
|---|---|---|
| CapsLock | SC003A | F13（SC0064） |

### 前提2：AutoHotkeyのインストール

winget経由でインストールする
```
winget install -e --id AutoHotkey.AutoHotkey
```

ただし、exe化した実行ファイルでの実行ならばAutoHotkeyのインストールは不要

### ディレクトリ

| パス | 内容 |
|---|---|
| `main.ahk` | メイン。宣言・ライブラリ読み込み・押しっぱなし監視 |
| `library/IMEv2.ahk` | IME 制御ライブラリ |
| `library/utility.ahk` | 共通関数 |
| `config/Disable_software.ahk` | スクリプトを無効化したいウィンドウのグループ定義 |
| `config/Game_group.ahk` | ゲームモード対象ウィンドウのグループ定義 |
| `scripts/*.ahk` | 機能別のキー割り当て |
| `executable/` | exe 化された本体とビルド用バッチ |
| `external/` | AHK から呼び出す外部ツール |

### `scripts/` の主な割り当て

`main.ahk` のコメントにある監視対象キーに対応するスクリプト。

| キー | スクリプト |
|---|---|
| `z` / `q` / `Tab` | `Z_shortcut.ahk` `Q_shortcut.ahk` `asdw_shortcut.ahk` `Tab_shortcut.ahk` |
| F13（CapsLock） | `CapslLock_shortcut.ahk` `Symbol_direct_input.ahk` |
| 無変換（SC07B） | `Muhenkan_shortcut.ahk` |
| `_`（SC073） | `Underscore_alternative_shift.ahk` `Shift_symbol.ahk` |
| RButton / XButton1 / XButton2 / AppsKey | `Mouse_shortcut.ahk` |
| ゲームウィンドウ中 | `Game_shortcut.ahk` |
| VS Code 用 | `VScode_Shortcut.ahk` |
| その他 | `Key_remapping.ahk` `Winkey_shortcut.ahk` `default.ahk` `View_mode.ahk` |

### 押しっぱなし対策

`SendMode "Event"` でフックを維持したまま送信し、
さらに `WatchStuckKeys()`（250ms 周期）で「論理 Down・物理 Up」が
2 周期続いたキーを強制キーアップする。

### 外部ツール（`external/`）

| ツール | 内容 |
|---|---|
| `shortcut_viewer` | 定義済みキー一覧を tkinter で表示する GUI。`executable/shortcut_viewer.exe`、ビルドは `compiler/pyinstaller_script.bat` |
| `change_luminance` | `monitorcontrol` でモニター輝度を変更。`executable/change_luminance.exe`、ビルドは `compiler/pyinstaller_script.bat` |

### exe 化

- exe 化は `executable/exe_file_compile_script.bat`

### 実行

- `main.ahk` を通常実行
- `main.ahk(一般権限) - ショートカット.lnk` or `main.ahk(管理者権限) - ショートカット.lnk` をショートカット経由で実行
  - `main.ahk(管理者権限) - ショートカット.lnk` は管理者権限のタスクマネージャーや管理者権限PowerShellでもショートカットが有効となる

---

## CapsLockキー置換（`capslockキー置換/`）

Windows の Scancode Map を編集して CapsLock を F13 に置き換える対話型スクリプト。

- **管理者権限が必要**（未取得なら終了する）
- 読み / 書き込み / 削除を `y/n` で選択（Enter はキャンセル）
- 有効化には**再起動が必要**
- exe 版：`executable_file/capslock_key_replace_with_F13.exe`

対象レジストリ：

```
HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Keyboard Layout  →  Scancode Map
```

---

## スタートメニューweb検索無効化（`スタートメニューweb検索無効化/`）

スタートメニューの Bing ウェブ検索（サジェスト）を無効化する対話型スクリプト。
CapsLock 置換と同じ作り（管理者権限必須、`y/n` での読み / 書き込み / 削除）。

- exe 版：`executable_file/disable_startup_web_search.exe`

対象レジストリ：

```
HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Windows\Explorer  →  DisableSearchBoxSuggestions = 1
```

---

## VS Code（`VScode/`）

### 設定本体（`config/`）

| パス | 内容 |
|---|---|
| `config/settings.json` | 設定全般 |
| `config/keybindings.json` | キー設定 |
| `config/snippets/*.json` | 言語別スニペット（c / cpp / javascript / markdown / plantuml / python、`global.code-snippets`） |
| `config/Markdown_css/*.css` | Markdown プレビュー用 CSS（github-markdown / hachian / notion / rui-log など） |
| `config/tasks/` | `tasks.json` と補助の `task.sh` |

※ GitHub 用スタイルシートの `github-markdown.css` は `.markdown-` の文字を削除して
`body` セレクタに置き換えている。

### 導入スクリプト（`install_script/`）

| ファイル | 内容 |
|---|---|
| `vscode_config_getter.py` | VS Code のユーザーディレクトリ（`%APPDATA%\Code\User\`）から dotfiles へ設定を取り出す |
| `vscode_config_setter.py` | dotfiles の設定を VS Code へ適用。既存の設定は `*_old` にバックアップ |
| `getter_runner.bat` / `setter_runner.bat` | `chcp 65001` 付きの実行用バッチ |
| `SymbolicLink/symlink.script` | シンボリックリンクで適用する PowerShell スクリプト（管理者昇格） |

### 拡張機能（`extension/`）

- `install_extension_for_linux.sh`：`code --install-extension` の一覧（アイコン・日本語パック・ユーティリティなど）
- `install_extension_for_win.bat`：同じ sh ファイルを 1 行ずつ実行し、結果を `Result.txt` に記録

### その他

- `system_info.md`：拡張機能 `wraith13.sysinfo-vscode` のシステム情報出力メモ

---

## Windows Terminal（`WindowsTerminal/key.json`）

Windows Terminal の `settings.json` の `actions` 配列に追加するキー設定。
`ctrl+shift+\` でペイン分割、`ctrl+v` の割り当て解除。

---

## Google 日本語入力（`google日本語入力設定/`）

Google 日本語入力のプロパティからエクスポート / 記録したファイル。

| ファイル | 内容 |
|---|---|
| `keymap.txt` | キー設定 |
| `romantable.txt` | ローマ字テーブル |
| `dict.txt` | 変換辞書 |
| `google日本語入力のプロパティ.txt` | 一般設定のメモと各ファイルの対応 |

---

## git（`git/set_git_user_config.sh`）

以下を行う
- gitのユーザー名の設定
- gitのメールアドレスの設定
- gitのpull時の挙動の設定

---

## Linux（`Linux/`）

| ファイル | 内容 |
|---|---|
| `install_tools.sh` | `btop` `dnsutils` `jq` を導入し、`oxker` を公式インストーラで導入。`~/.bashrc` に `~/.local/bin` の PATH 追記（既存ならスキップ） |
| `set_alias.sh` | `~/.bashrc` にエイリアスを追記（`ll` `la` `..` など。WSL 想定の `ii=explorer.exe` `pshell=powershell.exe` も含む） |

---

## AutoHotkey のスタートアップ登録

普段は `main.ahk` へのショートカットをスタートアップフォルダに置いている。
`スタートアップ.lnk` はそのスタートアップフォルダを開くためのショートカット。

スタートアップフォルダは次のどちらかで開ける。

```
%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
```

```
shell:startup
```

（Win+R → ファイル名を指定して実行）

---

## 導入手順

**Windows**

1. AutoHotkey v2 をインストール
2. `capslockキー置換` を管理者権限で実行 → 再起動
3. `AHK_script/main.ahk` を実行し、スタートアップフォルダに登録
4. `スタートメニューweb検索無効化` を管理者権限で実行
5. `VScode/install_script/setter_runner.bat` で VS Code 設定を適用
6. `VScode/extension/install_extension_for_win.bat` で拡張機能を導入

**Linux / WSL**

```bash
bash Linux/install_tools.sh
source ~/.bashrc
bash Linux/set_alias.sh
bash VScode/extension/install_extension_for_linux.sh
```
