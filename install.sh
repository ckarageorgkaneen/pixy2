#!/usr/bin/env bash
set -e
apt install \
    git \
    libusb-1.0-0-dev \
    qt5-default \
    qt5-qmake \
    qtbase5-dev-tools \
    g++
cd scripts
./build_all.sh
cd ../src/host/linux/
cp pixy.rules /etc/udev/rules.d/
