#!/bin/sh
# ====================アイコン====================
code --install-extension PKief.material-icon-theme
code --install-extension vscode-icons-team.vscode-icons

# ====================日本語====================
# 日本語パック
code --install-extension MS-CEINTL.vscode-language-pack-ja
# 日本語単語区切り
code --install-extension sgryjp.japanese-word-handler

# ====================便利ユーティリティ====================
# ファイル名コピー
code --install-extension nemesv.copy-file-name
# base64変換
code --install-extension adamhartford.vscode-base64
# 連番数字挿入
code --install-extension Asuka.insertnumbers
# CSVカラムハイライト
code --install-extension mechatroner.rainbow-csv
# 複数連続ショートカット作成
code --install-extension ryuta46.multi-command
# 重複削除
code --install-extension bibhasdn.unique-lines
# HTLMエスケープ変換
code --install-extension christopherstyles.html-entities
# システム情報表示
code --install-extension wraith13.sysinfo-vscode

# ====================追加エディタ====================
# PDFの閲覧
code --install-extension tomoki1207.pdf
# CSVエディタ
code --install-extension janisdd.vscode-edit-csv
# HEXエディタ
code --install-extension ms-vscode.hexeditor
# yamlエディタ
code --install-extension redhat.vscode-yaml

# ====================コーディング支援====================
# path補完
code --install-extension ionutvmi.path-autocomplete
# スペルチェック
code --install-extension streetsidesoftware.code-spell-checker

# ====================マークダウン====================
# マークダウンユーティリティパック
code --install-extension yzhang.markdown-all-in-one
# マークダウンPDF出力
code --install-extension yzane.markdown-pdf
# プレビューマークダウンgithub表示
code --install-extension bierner.markdown-preview-github-styles
# エクセルからコピペ表作成
code --install-extension csholmq.excel-to-markdown-table

# ====================plantUML====================
code --install-extension jebbs.plantuml

# ====================git====================
# Git履歴のグラフ表示
code --install-extension mhutchie.git-graph
# Git エディター内Blame
code --install-extension eamodio.gitlens

# ====================Docker====================
# Docker制御
code --install-extension ms-azuretools.vscode-docker
# Docker Compose制御
code --install-extension p1c2u.docker-compose

# ====================AHK====================
# アイコン
code --install-extension cat1122.ahk-v1-icon
# 言語拡張
code --install-extension mark-wiemer.vscode-autohotkey-plus-plus

# ====================HTML====================
# CSSサポート
code --install-extension ecmel.vscode-html-css
# リアルタイムプレビュー
code --install-extension ritwickdey.liveserver

# ====================python開発====================
code --install-extension ms-python.isort
code --install-extension ms-python.python
code --install-extension ms-python.vscode-pylance
code --install-extension ms-python.flake8
code --install-extension ms-python.autopep8
code --install-extension ms-python.debugpy
code --install-extension ms-python.vscode-python-envs
# jupyter関係
code --install-extension ms-toolsai.jupyter
code --install-extension ms-toolsai.jupyter-keymap
code --install-extension ms-toolsai.jupyter-renderers
code --install-extension ms-toolsai.vscode-jupyter-cell-tags
code --install-extension ms-toolsai.vscode-jupyter-slideshow

# ====================C/C++言語====================
code --install-extension ms-vscode.cpptools

# ====================docker====================
code --install-extension docker.docker
code --install-extension ms-azuretools.vscode-docker
code --install-extension ms-azuretools.vscode-containers

# ====================powershell====================
code --install-extension ms-vscode.powershell

# ====================リモート開発====================
# リモート開発
code --install-extension ms-vscode-remote.vscode-remote-extensionpack
# リモートSSH
code --install-extension ms-vscode-remote.remote-ssh
# リモートSSH設定
code --install-extension ms-vscode-remote.remote-ssh-edit
# WSLリモート開発
code --install-extension ms-vscode-remote.remote-wsl
# コンテナリモート開発
code --install-extension ms-vscode-remote.remote-containers
# リモート開発
code --install-extension ms-vscode.remote-explorer
code --install-extension ms-vscode.remote-server
# ペアプロ
code --install-extension ms-vscode.live-server

# 通常のssh経由では`code`コマンドが実行できない。
# そのためこのスクリプトはVScodeリモートSSHのコンソールで実行する。
