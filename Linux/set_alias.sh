#!/bin/sh

# カレントディレクトリの移動
cd `dirname $0`

echo "alias ll='ls -l'" >> ~/.bashrc
echo "alias la='ls -A'" >> ~/.bashrc
echo "alias l='ls -CF'" >> ~/.bashrc
echo "alias gr='grep'" >> ~/.bashrc
echo "alias start='sudo systemctl start'" >> ~/.bashrc
echo "alias status='sudo systemctl status'" >> ~/.bashrc

source ~/.bashrc
