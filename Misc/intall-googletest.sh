#! /bin/bash

mkdir -p "$HOME/tmp"
cd "$HOME/tmp" || exit
git clone git@github.com:google/googletest.git
cd googletest || exit
mkdir -p build
cmake -S . -B "build"
sudo cmake --build "build" --config Release --target install
cd ..
rm -rf googletest
    
