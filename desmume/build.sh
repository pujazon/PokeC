#!/bin/bash

echo "Build DesMume"
cd desmume-master
cd desmume/src/frontend/posix/
export CFLAGS="-march=native -Ofast -flto"
export CXXFLAGS=$CFLAGS
export LDFLAGS=$CFLAGS
sudo bash autogen.sh
sudo bash configure --host=x86_64-pc-linux-gnu
# --enable-opengl --enable-hud --enable-openal
make
sudo make install
