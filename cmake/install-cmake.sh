#! /bin/bash

wget -q https://github.com/Kitware/CMake/releases/download/v3.30.4/cmake-3.30.4.tar.gz
tar -xvf cmake-3.30.4.tar.gz
cd cmake-3.30.4
./bootstrap && make -j$(nproc) && sudo make install
cd ..
rm -rf cmake-3.30.4 cmake-3.30.4.tar.gz
