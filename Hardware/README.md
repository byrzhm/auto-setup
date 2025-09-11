## iverilog

```bash
# git clone git@github.com:steveicarus/iverilog.git --depth=1
wget https://github.com/steveicarus/iverilog/archive/refs/tags/v12_0.tar.gz
tar -xvf v12_0.tar.gz
cd iverilog-12_0
sh autoconf.sh
./configure --prefix="$HOME/.local"
make -j"$(nproc)"
make install
```

## gtkwave

gtkwave3:

```bash
### gtkwave3
sudo apt install libbz2-dev liblzma-dev # build-essential
sudo apt install libgtk-3-dev automake # gperf
sudo apt install tcl-dev tk-dev
sudo apt install libjudy-dev # optional

git clone git@github.com:gtkwave/gtkwave.git -b lts gtkwave --depth=1
cd gtkwave/gtkwave3-gtk3 && ./autogen.sh
./configure --enable-gtk3 --enable-judy --prefix="$HOME/.local"
make -j"$(nproc)"
make install
```

gtkwave4:

```bash
### gtkwave4
sudo apt install libbz2-dev # build-essential gperf meson
sudo apt install desktop-file-utils libgtk-3-dev # flex git
sudo apt install libgirepository1.0-dev
sudo apt install libjudy-dev # optional

git clone  --depth=1 git@github.com:gtkwave/gtkwave.git
cd gtkwave
meson setup build --prefix="$HOME/.local"
meson compile -C build
meson install -C build
```


## verilator

```bash
export VERILATOR_INSTALL_PATH="$HOME/tmp/verilator"
git clone --depth=1 git@github.com:verilator/verilator.git "$VERILATOR_INSTALL_PATH"
cd "$VERILATOR_INSTALL_PATH"
autoconf                             # Create ./configure script
./configure --prefix="$HOME/.local"  # Configure and create Makefile
make -j `nproc`                      # Build Verilator itself (if error, try just 'make')
make install

# cd .. && rm -rf "$VERILATOR_INSTALL_PATH"
```