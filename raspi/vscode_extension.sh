#!/bin/sh

# Docker 拡張
code --install-extension ms-azuretools.vscode-docker
# Docker-compose 拡張
code --install-extension p1c2u.docker-compose
# python 拡張
code --install-extension ms-python.python


# 通常のssh経由では`code`コマンドが実行できない。
# そのためこのスクリプトはVScodeリモートSSHのコンソールで実行する。
