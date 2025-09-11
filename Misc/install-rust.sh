#! /bin/bash

## https://www.rust-lang.org/tools/install

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# echo 'export PATH="$HOME/.cargo/bin:$PATH"' >> ~/.zshrc
# shellcheck disable=SC2016
echo '. "$HOME/.cargo/env"' >> ~/.zshrc
