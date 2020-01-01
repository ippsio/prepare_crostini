#!/bin/bash
sudo apt update
sudo apt install -y zsh tmux
sudo apt install -y gcc make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev

#sudo apt install locales
#sudo localectl set-locale LANG=ja_JP.UTF-8 LANGUAGE="ja_JP:ja"
#echo 'ja_JP.UTF-8' >> /etc/locale.gen
#sudo locale-gen
#source /etc/default/locale
#sudo update-locale LANG=ja_JP.UTF-8

