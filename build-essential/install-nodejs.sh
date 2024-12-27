#! /bin/bash

## https://github.com/nvm-sh/nvm

# curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash

exec $SHELL
nvm install stable
nvm use stable

npm config set registry https://mirrors.cloud.tencent.com/npm/
