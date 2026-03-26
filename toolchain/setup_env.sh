#!/bin/bash


echo 'export DEVKITPRO=/opt/devkitpro' >> ~/.bashrc
echo 'export DEVKITARM=$DEVKITPRO/devkitARM' >> ~/.bashrc

export DEVKITPRO=/opt/devkitpro
export DEVKITARM=$DEVKITPRO/devkitARM

echo "Enviroment variables saved on .bashrc and enabled."
echo "DEVKITPRO is set to: $DEVKITPRO"
