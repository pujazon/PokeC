#!/bin/bash

echo "Setup DesMume"
sudo apt-get update
yes | sudo apt-get install git
yes | sudo apt-get install build-essential gettext intltool libsdl2-dev libpcap-dev libgtk2.0-dev libgtk-3-dev libsoundtouch-dev libagg-dev libopenal-dev libgl-dev libgles-dev libglx-dev libegl-dev
git clone http://github.com/TASEmulators/desmume.git desmume-master
