#! /bin/bash

sudo apt install -y build-essential
sudo apt install -y libmpfr-dev libgmp3-dev libmpc-dev
wget http://ftp.gnu.org/gnu/gcc/gcc-14.2.0/gcc-14.2.0.tar.gz
tar -xvf gcc-14.2.0.tar.gz
cd gcc-14.2.0
./configure -v --build=x86_64-linux-gnu --host=x86_64-linux-gnu --target=x86_64-linux-gnu \
    --prefix=/usr/local/gcc-14.2.0 --enable-checking=release \
    --enable-languages=c,c++ --disable-multilib --program-suffix=-14.2.0
make -j$(nproc)
sudo make install
cd ..
rm -rf gcc-14.2.0 gcc-14.2.0.tar.gz

sudo update-alternatives --install /usr/bin/g++ g++ /usr/local/gcc-14.2.0/bin/g++-14.2.0 14
sudo update-alternatives --install /usr/bin/gcc gcc /usr/local/gcc-14.2.0/bin/gcc-14.2.0 14

