#! /bin/bash

## https://github.com/Syllo/nvtop

sudo apt install -y libdrm-dev libsystemd-dev libncurses5-dev libncursesw5-dev libudev-dev

## NVIDIA Drivers
sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt update

sudo apt search nvidia-driver

### Then ... ????


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
