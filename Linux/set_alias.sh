#!/bin/sh

# カレントディレクトリの移動
cd `dirname $0`

echo "alias ll='ls -alFh'" >> ~/.bashrc
echo "alias la='ls -A'" >> ~/.bashrc
echo "alias l='ls -CF'" >> ~/.bashrc
echo "alias gr='grep'" >> ~/.bashrc
echo "alias ..='cd ..'" >> ~/.bashrc
echo "alias gr='grep'" >> ~/.bashrc
echo "alias ii='explorer.exe'" >> ~/.bashrc
echo "alias dxker='oxker'"  >> ~/.bashrc

source ~/.bashrc
