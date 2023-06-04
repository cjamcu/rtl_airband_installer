#!/bin/bash 
rtl_airband_version=4.1.1

# Global dependency 
apt install  --assume-yes usbip hwdata usbutils

# Install dependency
apt update &&  apt full-upgrade
apt-get install --assume-yes build-essential cmake pkg-config libmp3lame-dev libshout3-dev libconfig++-dev
apt-get install --assume-yes libraspberrypi-dev
apt-get install --assume-yes libfftw3-dev
apt-get install --assume-yes librtlsdr-dev
apt-get install --assume-yes wget

# Compile rtl_airband
wget -O RTLSDR-Airband-X.Y.Z.tar.gz "https://github.com/charlie-foxtrot/RTLSDR-Airband/archive/refs/tags/v$rtl_airband_version.tar.gz" && tar xvfz RTLSDR-Airband-X.Y.Z.tar.gz 

cd "RTLSDR-Airband-$rtl_airband_version" && mkdir build && cd build && cmake ../ && make &&  make install



