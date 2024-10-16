#! /bin/bash

wget http://ftp.gnu.org/pub/gnu/gperf/gperf-3.1.tar.gz
tar -xvf gperf-3.1.tar.gz
cd gperf-3.1
./configure --prefix=$HOME/.local
make -j"$(nproc)"
sudo make install
