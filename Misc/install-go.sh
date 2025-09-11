#! /bin/bash

# See https://go.dev/doc/install

wget https://go.dev/dl/go1.23.2.linux-amd64.tar.gz

sudo rm -rf /usr/local/go 
sudo tar -C /usr/local -xzf go1.23.2.linux-amd64.tar.gz
rm go1.23.2.linux-amd64.tar.gz

echo 'export PATH="$PATH:/usr/local/go/bin"' >> ~/.zshrc

# go version

go env -w GO111MODULE=on
go env -w GOPROXY=https://goproxy.cn,direct
echo 'export PATH="$PATH:$(go env GOPATH)/bin"' >> ~/.zshrc