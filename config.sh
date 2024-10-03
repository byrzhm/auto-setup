#! /bin/bash

sudo apt update
sudo apt upgrade
sudo apt-get install -y net-tools git openssh-server

# add to .bashrc/.zshrc/...
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# clash
# https://nyanpasu.elaina.moe/tutorial/install.html

# ssh-keygen
# .ssh/


sudo apt-get install -y help2man perl python3 make
sudo apt-get install -y g++  # Alternatively, clang
sudo apt-get install -y libgz  # Non-Ubuntu (ignore if gives error)
sudo apt-get install -y libfl2  # Ubuntu only (ignore if gives error)
sudo apt-get install -y libfl-dev  # Ubuntu only (ignore if gives error)
sudo apt-get install -y zlibc zlib1g zlib1g-dev  # Ubuntu only (ignore if gives error)

sudo apt-get install -y ccache  # If present at build, needed for run
sudo apt-get install -y mold  # If present at build, needed for run
sudo apt-get install -y libgoogle-perftools-dev numactl

sudo apt-get install -y perl-doc
sudo apt-get install -y autoconf flex bison
