#! /bin/bash

## Pretty fast disk usage analyzer
## https://github.com/dundee/gdu

##!! Simplest install:
##!!   sudo apt install gdu

# sudo add-apt-repository ppa:daniel-milde/gdu
# sudo apt-get update
# sudo apt-get install gdu

curl -L https://github.com/dundee/gdu/releases/latest/download/gdu_linux_amd64.tgz | tar xz
chmod +x gdu_linux_amd64
# mv gdu_linux_amd64 /usr/bin/gdu
mv gdu_linux_amd64 ~/.local/bin/gdu

