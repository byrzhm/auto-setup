#! /bin/bash

sudo apt-get install -y libpq-dev

mkdir -p "$HOME/tmp"
cd "$HOME/tmp" || exit
git clone git@github.com:jtv/libpqxx.git
cd libpqxx || exit
mkdir -p build
cmake -DCMAKE_BUILD_TYPE=Release -DSKIP_BUILD_TEST=on -S  . -B "build"
sudo cmake --build "build" --config Release --target install
cd ..
rm -rf libpqxx
