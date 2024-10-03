#! /bin/bash

# git config --global --edit

git config --global user.email "zhm1019@qq.com"
git config --global user.name "Hongming Zhu"
git config --global core.editor "vim"
# git config --global core.editor "nvim"
# git config --global core.editor "code --wait"

## git aliases
git config --global alias.st "status -s"
git config --global alias.sta "status"
git config --global alias.conf "config --global --edit"
git config --global alias.cge "config --global --edit"
git config --global alias.adgo "log --all --decorate --graph --oneline"
git config --global init.defaultBranch main
