#! /bin/bash

sudo bash -c "$(wget -O - https://apt.llvm.org/llvm.sh)"
wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | sudo apt-key add -

sudo apt-get install -y clang clangd clang-format lldb lld
sudo apt-get install -y libllvm-18-ocaml-dev libllvm18 llvm-18 llvm-18-dev llvm-18-doc llvm-18-examples llvm-18-runtime
sudo apt-get install -y clang-18 clang-tools-18 clang-18-doc libclang-common-18-dev libclang-18-dev libclang1-18 clang-format-18 python3-clang-18 clangd-18 clang-tidy-18
sudo apt-get install -y libclang-rt-18-dev
sudo apt-get install -y libpolly-18-dev
sudo apt-get install -y libfuzzer-18-dev
sudo apt-get install -y lldb-18
sudo apt-get install -y lld-18
sudo apt-get install -y libc++-18-dev libc++abi-18-dev
sudo apt-get install -y libomp-18-dev
sudo apt-get install -y libclc-18-dev
sudo apt-get install -y libunwind-18-dev
sudo apt-get install -y libmlir-18-dev mlir-18-tools
sudo apt-get install -y libbolt-18-dev bolt-18
sudo apt-get install -y flang-18
## wasm
# sudo apt-get install -y libclang-rt-18-dev-wasm32 libclang-rt-18-dev-wasm64 libc++-18-dev-wasm32 libc++abi-18-dev-wasm32 libclang-rt-18-dev-wasm32 libclang-rt-18-dev-wasm64


sudo update-alternatives --install /usr/bin/clang clang /usr/lib/llvm-18/bin/clang 18
sudo update-alternatives --install /usr/bin/clang++ clang++ /usr/lib/llvm-18/bin/clang++ 18
sudo update-alternatives --install /usr/bin/clangd clangd /usr/lib/llvm-18/bin/clangd 18
sudo update-alternatives --install /usr/bin/clang-format clang-format /usr/lib/llvm-18/bin/clang-format 18
sudo update-alternatives --install /usr/bin/lld lld /usr/lib/llvm-18/bin/lld 18
sudo update-alternatives --install /usr/bin/ld.lld ld.lld /usr/lib/llvm-18/bin/ld.lld 18
sudo ln -s /usr/lib/llvm-18/bin/lldb /usr/bin/lldb
