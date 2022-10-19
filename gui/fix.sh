#!/bin/bash
#########################################################################
# File Name: fix.sh
# Author: steve
# mail: yqykrhf@163.com
# Created Time: Wed 19 Oct 2022 03:42:17 PM CST
# Brief: Fix DTK in deepin
# Reference: https://wiki.deepin.org/zh/%E5%BC%80%E5%8F%91%E8%80%85%E6%8C%87%E5%8D%97/DTK/DTK
#########################################################################
set -e
sudo apt update
sudo apt install libdtkcore5 libdtkcore-dev -y
sudo apt install libdtkgui5 libdtkgui-dev -y
sudo apt install libdtkwidget5 libdtkwidget-dev -y
#sudo apt install qt5integration --reinstall -y
git clone -b 5.5.24 https://github.com/linuxdeepin/qt5integration.git
cd qt5integration
mkdir build && cd build
sudo apt build-dep ../
qmake ..
make
sudo make install
