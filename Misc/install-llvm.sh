#! /bin/bash

# See https://apt.llvm.org/

sudo bash -c "$(wget -O - https://apt.llvm.org/llvm.sh)"
wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | sudo apt-key add -
