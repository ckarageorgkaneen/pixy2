#!/usr/bin/env bash
set -e
if (( $EUID != 0 )); then
    echo "Please run via sudo"
    exit
fi
# Install dependencies
apt install \
    git \
    libusb-1.0-0-dev \
    qt5-default \
    qt5-qmake \
    qtbase5-dev-tools \
    g++
# Run build script
cd scripts
./build_all.sh
# Add permissions for Pixy USB interface
cd ../src/host/linux/
cp pixy.rules /etc/udev/rules.d/
