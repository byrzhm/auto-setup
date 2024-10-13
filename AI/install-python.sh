#! /bin/bash

# export USE_SSH
# curl https://pyenv.run | bash
git clone git@github.com:pyenv/pyenv.git ~/.pyenv
cd ~/.pyenv && src/configure && make -C src


## https://github.com/pyenv/pyenv?tab=readme-ov-file#set-up-your-shell-environment-for-pyenv
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
echo '[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(pyenv init -)"' >> ~/.zshrc

## restart your shell
exec "$SHELL"


sudo apt update; sudo apt-get install -y build-essential libssl-dev zlib1g-dev \
  libbz2-dev libreadline-dev libsqlite3-dev curl git \
  libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev

pyenv install --list
pyenv latest -k 3
pyenv install 3.12
pyenv global 3.12 # select globally for your user account
# pyenv local 3.12 # automatically select whenever you are in the current directory (or its subdirectories)
# pyenv shell  3.12 # select just for current shell session
# pyenv uninstall 3.12
eval "$(pyenv init -)" # if you install python through pyenv first time

## python create venv 
python -m venv .venv
source .venv/bin/activate
## ...
## pip install pytest
deactivate

# pip mirror
python -m pip install --upgrade pip
pip config set global.index-url https://mirrors6.tuna.tsinghua.edu.cn/pypi/web/simple
