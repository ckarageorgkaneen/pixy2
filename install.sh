#!/usr/bin/env bash
set -e
sudo apt install \
    git \
    libusb-1.0-0-dev \
    qt5-default \
    qt5-qmake \
    qtbase5-dev-tools \
    g++
sudo chown -R $USER .
PRIMARY_GROUP=$(id -gn $USER)
sudo chgrp -R $PRIMARY_GROUP .
cd scripts
./build_all.sh
cd ../src/host/linux/
sudo cp pixy.rules /etc/udev/rules.d/
