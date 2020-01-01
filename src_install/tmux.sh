#!/bin/bash

sudo apt-get install automake
sudo apt-get install libevent-dev libncurses5-dev
sudo apt-get install xsel

V=2.9
cd ~/src
curl -LO https://github.com/tmux/tmux/releases/download/${V}/tmux-${V}.tar.gz
tar xvzf tmux-${V}.tar.gz
cd tmux-${V}
./configure && make
sudo make install
cd ..
rm -rf tmux-${V}
rm -f tmux-${V}.tar.gz

