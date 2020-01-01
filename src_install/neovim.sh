#!/bin/bash

V=0.4.3
cd ~/src
curl -LO https://github.com/neovim/neovim/archive/v${V}.zip
unzip v${V}.zip

cd neovim-${V}
# 色々依存ライブラリがなくてmakeに失敗した
# .travis.ymlのaptの項目とエラーメッセージを参考にインストール
sudo apt install -y cmake automake libtool libtool-bin
sudo apt install -y gettext
# https://github.com/neovim/neovim READMEに記載のコマンド
./configure
make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install
cd ..
rm -rf neovim-${V}
rm -f v${V}.zip

