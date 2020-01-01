#!/bin/bash

V=2.5.0
cd ~/src
curl -LO https://github.com/jonas/tig/releases/download/tig-${V}/tig-${V}.tar.gz
tar xvzf tig-${V}.tar.gz
cd tig-${V}
./configure
make
sudo make install
cd ..
rm -rf tig-${V}
rm -f tig-${V}.tar.gz

