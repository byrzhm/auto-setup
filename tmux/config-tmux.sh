#! /bin/bash

sudo apt install -y tmux
## or build from source
### https://github.com/tmux/tmux

echo "set -g mouse on" > ~/.tmux.conf
echo "bind - split-window -v" >> ~/.tmux.conf
echo "set -g default-terminal \"screen-256color\"" >> ~/.tmux.conf

## More configuration, see https://github.com/tmux/tmux/wiki/Getting-Started
