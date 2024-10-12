#! /bin/bash

# git clone git@github.com:tmux/tmux.git
# cd tmux
# sh autogen.sh
# ./configure && make

wget https://github.com/tmux/tmux/releases/download/3.5a/tmux-3.5a.tar.gz
tar -xvf tmux-3.5a.tar.gz
cd tmux-3.5a
./configure --prefix=$HOME/local/
make -j"$(nproc)"
make install # sudo if needed
