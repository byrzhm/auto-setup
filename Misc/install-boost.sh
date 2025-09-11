#! /bin/bash

BOOST_VERSION="1.81.0"
BOOST_DIR="boost_$(echo ${BOOST_VERSION} | tr . _)"
BOOST_URL="https://boostorg.jfrog.io/artifactory/main/release/${BOOST_VERSION}/source/${BOOST_DIR}.tar.gz"

wget -qO "$HOME/tmp/boost.tar.gz" "$BOOST_URL"
cd "$HOME/tmp/" || exit
tar -xzf boost.tar.gz
cd "$BOOST_DIR" || exit
./bootstrap.sh  --prefix=/usr/local/
./b2
sudo ./b2 install
cd ..
rm -rf "$BOOST_DIR" boost.tar.gz
