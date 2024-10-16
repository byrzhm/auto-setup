#! /bin/bash

# https://www.hackster.io/whitney-knitter/vivado-vitis-petalinux-2023-2-install-on-ubuntu-2f1b98
# Vivado Vitis Vitis_HLS PetaLinux

## sudo dpkg-reconfigure dash
sudo dpkg --add-architecture i386

sudo apt-get install -y gparted xinetd gawk gcc net-tools ncurses-dev openssl libssl-dev flex bison xterm autoconf libtool texinfo zlib1g-dev
sudo apt-get install -y iproute2 make libncurses5-dev tftpd libselinux1 wget diffstat chrpath socat tar unzip gzip python tofrodos lsb libftdi1 libftdi1-2
sudo apt-get install -y lib32stdc++6 libgtk2.0-0:i386 libfontconfig1:i386 libx11-6:i386 libxext6:i386 libxrender1:i386 libsm6:i386 tree openssh-server
sudo apt-get install -y debianutils iputils-ping libegl1-mesa libsdl1.2-dev pylint3 python3 cpio tftpd-hpa gnupg zlib1g:i386 haveged perl xvfb
sudo apt-get install -y gcc-multilib build-essential automake screen putty pax g++ python3-pip xz-utils python3-git python3-jinja2 python3-pexpect
sudo apt-get install -y liberror-perl mtd-utils xtrans-dev libxcb-randr0-dev libxcb-xtest0-dev libxcb-xinerama0-dev libxcb-shape0-dev libxcb-xkb-dev
sudo apt-get install -y util-linux sysvinit-utils cython google-perftools patch diffutils ocl-icd-libopencl1 opencl-headers ocl-icd-opencl-dev
sudo apt-get install -y libncurses5 libncurses5-dev libncursesw5:amd64 libncursesw5-dev libncurses5:i386 libtinfo5 libstdc++6:i386 libgtk2.0-0:i386 dpkg-dev:i386

# /tools/Xilinx/Vitis/*/scripts$ sudo ./installLibs.sh
# /tools/Xilinx/Vivado/*/data/xicom/cable_drivers/lin64/install_script/install_drivers

sudo adduser $USER dialout # serial terminal

### Digilent Board Files ###
export DIGILENT_BOARD_FILES="$HOME/tmp/vivado-boards"
git clone git@github.com:Digilent/vivado-boards.git "$DIGILENT_BOARD_FILES"
sudo cp -r "$DIGILENT_BOARD_FILES/new/" /tools/Xilinx/Vivado/*/data/boards
rm -rf "$DIGILENT_BOARD_FILES"
