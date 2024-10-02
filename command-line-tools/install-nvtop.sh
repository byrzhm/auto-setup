#! /bin/bash

## https://github.com/Syllo/nvtop

sudo apt install -y libdrm-dev libsystemd-dev
# Ubuntu 18.04
sudo apt install -y libudev-dev

git clone git@github.com:Syllo/nvtop.git
mkdir -p nvtop/build && cd nvtop/build
cmake .. -DNVIDIA_SUPPORT=ON -DAMDGPU_SUPPORT=ON -DINTEL_SUPPORT=ON
make -j$(nproc)

# Install globally on the system
sudo make install

# Alternatively, install without privileges at a location of your choosing
# make DESTDIR="/your/install/path" install

cd ../..
rm -rf nvtop
