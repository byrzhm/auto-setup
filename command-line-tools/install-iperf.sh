#! /bin/bash

## https://github.com/esnet/iperf
git clone git@github.com:esnet/iperf.git
cd iperf
./configure
make -j"$(nproc)"
sudo make install
