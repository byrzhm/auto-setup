#! /bin/bash

## https://github.com/Syllo/nvtop

sudo apt install libdrm-dev libsystemd-dev
sudo apt install -y libncurses5-dev libncursesw5-dev

git clone --depth=1 git@github.com:Syllo/nvtop.git
mkdir -p nvtop/build
cd nvtop/build || exit

cmake .. -DNVIDIA_SUPPORT=ON -DAMDGPU_SUPPORT=ON -DINTEL_SUPPORT=ON -DCMAKE_INSTALL_PREFIX="$HOME/.local"

# shellcheck disable=SC2046
make -j$(nproc)

# Install globally on the system
make install

cd ../..
rm -rf nvtop
