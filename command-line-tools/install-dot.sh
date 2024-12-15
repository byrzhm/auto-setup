#! /bin/bash

wget https://gitlab.com/api/v4/projects/4207231/packages/generic/graphviz-releases/12.2.1/graphviz-12.2.1.tar.gz

tar xvf graphviz-12.2.1.tar.gz

cd graphviz-12.2.1

./configure --prefix=$HOME/local
make -j$(nproc)
make install
