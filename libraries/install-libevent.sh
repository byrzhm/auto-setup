#! /bin/bash

## https://github.com/libevent/libevent

git clone git@github.com:libevent/libevent.git
mkdir -p libevent/build
cd libevent/build && cmake .. # Default to Unix Makefiles
make -j$(nproc)
make verify
sudo make install
cd ../.. && rm -rf libevent
