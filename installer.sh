
#!/bin/bash 

rtl_airband_version=4.0.3


# Global dependency 
sudo apt install usbip hwdata usbutils

# Install dependency
sudo apt update && sudo apt full-upgrade
sudo apt-get install --assume-yes build-essential cmake pkg-config libmp3lame-dev libshout3-dev libconfig++-dev
sudo apt-get install --assume-yes libraspberrypi-dev
sudo apt-get install --assume-yes libfftw3-dev
sudo apt-get install --assume-yes librtlsdr-dev
sudo apt-get install --assume-yes wget

# Compile rtl_airband
wget -O RTLSDR-Airband-X.Y.Z.tar.gz "https://github.com/charlie-foxtrot/RTLSDR-Airband/archive/refs/tags/v$rtl_airband_version.tar.gz" && tar xvfz RTLSDR-Airband-X.Y.Z.tar.gz 

cd "RTLSDR-Airband-$rtl_airband_version" && mkdir build && cd build && cmake ../ && make && sudo make install
