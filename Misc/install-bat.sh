#! /bin/bash

## https://github.com/sharkdp/bat

## You should install rust first
git clone --depth=1 git@github.com:sharkdp/bat.git
cd bat || exit
cargo install --locked bat
cd ..
rm -rf bat

## It's a good idea to alias `cat` with `bat -pp`.
