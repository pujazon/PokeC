#!/bin/bash

echo "Setup DesMume"
sudo apt-get update
yes | sudo apt-get install git
yes | sudo apt-get install build-essential gettext intltool libsdl2-dev libpcap-dev libgtk2.0-dev libgtk-3-dev libsoundtouch-dev libagg-dev libopenal-dev libgl-dev libgles-dev libglx-dev libegl-dev
git clone http://github.com/TASEmulators/desmume.git desmume-master
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
