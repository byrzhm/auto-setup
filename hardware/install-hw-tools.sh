#! /bin/bash

## iverlog gtkwave verilator

## iverilog
# git clone git@github.com:steveicarus/iverilog.git --depth=1
wget https://github.com/steveicarus/iverilog/archive/refs/tags/v12_0.tar.gz
tar -xvf v12_0.tar.gz
cd iverilog-12_0
sh autoconf.sh
./configure --prefix=$HOME/.local
make -j"$(nproc)"
sudo make install

## gtkwave
### gtkwave3
sudo apt install libbz2-dev liblzma-dev # build-essential
sudo apt install libgtk-3-dev automake # gperf
sudo apt install tcl-dev tk-dev
sudo apt install libjudy-dev # optional

git clone git@github.com:gtkwave/gtkwave.git -b lts gtkwave --depth=1
cd gtkwave/gtkwave3-gtk3 && ./autogen.sh
./configure --enable-gtk3 --enable-judy --prefix=$HOME/.local
make -j"$(nproc)"
sudo make install



### gtkwave4
sudo apt install libbz2-dev # build-essential gperf meson
sudo apt install desktop-file-utils libgtk-3-dev # flex git
sudo apt install libgirepository1.0-dev
sudo apt install libjudy-dev # optional

git clone git@github.com:gtkwave/gtkwave.git --depth=1
cd gtkwave
meson setup build --prefix=$HOME/.local
meson compile -C build
sudo meson install -C build


## verilator
export VERILATOR_INSTALL_PATH="$HOME/tmp/verilator"
git clone git@github.com:verilator/verilator.git "$VERILATOR_INSTALL_PATH"
cd "$VERILATOR_INSTALL_PATH"
autoconf         # Create ./configure script
./configure      # Configure and create Makefile
make -j `nproc`  # Build Verilator itself (if error, try just 'make')
sudo make install

# cd .. && rm -rf "$VERILATOR_INSTALL_PATH"


## expect
wget https://sourceforge.net/projects/expect/files/latest/download -O expect.tar.gz
tar -xzf expect.tar.gz
cd expect*
./configure --prefix=$HOME/.local
make -j"$(nproc)"
make install
