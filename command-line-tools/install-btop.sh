#! /bin/bash

## https://github.com/aristocratos/btop
wget https://github.com/aristocratos/btop/releases/download/v1.4.0/btop-x86_64-linux-musl.tbz
tar -xvjf btop-x86_64-linux-musl.tbz
cd btop
# make install PREFIX=~/.local
sudo make install
cd ..
rm -rf btop btop-x86_64-linux-musl.tbz

