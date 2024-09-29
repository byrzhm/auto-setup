#! /bin/bash

## gtkwave iverlog verilator

sudo apt install -y gtkwave iverilog

export VERILATOR_INSTALL_PATH="$HOME/tmp/verilator"
git clone git@github.com:verilator/verilator.git "$VERILATOR_INSTALL_PATH"
cd "$VERILATOR_INSTALL_PATH"
autoconf         # Create ./configure script
./configure      # Configure and create Makefile
make -j `nproc`  # Build Verilator itself (if error, try just 'make')
sudo make install
