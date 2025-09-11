#! /bin/bash

mkdir -p "$HOME/tmp"
cd "$HOME/tmp"

git clone git@github.com:google/benchmark.git
cd benchmark || exit
mkdir -p build
cmake -DCMAKE_BUILD_TYPE=Release -DBENCHMARK_ENABLE_GTEST_TESTS=OFF -S . -B "build"
sudo cmake --build "build" --config Release --target install
cd ..
rm -rf benchmark
