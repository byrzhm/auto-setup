#! /bin/bash

sudo apt install -y tmux

echo "set -g mouse on" > ~/.tmux.conf
echo "bind - split-window -v" >> ~/.tmux.conf
echo "set -g default-terminal \"screen-256color\"" >> ~/.tmux.conf
