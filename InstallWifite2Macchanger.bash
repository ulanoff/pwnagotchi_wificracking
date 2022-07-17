#deb http://raspbian.raspberrypi.org/raspbian/ buster main contrib non-free rpi
# Uncomment line below then 'apt-get update' to enable 'apt-get source'
# deb-src http://raspbian.raspberrypi.org/raspbian/ buster main contrib non-free rpi
#deb http://mirror.yandex.ru/mirrors/raspbian/  buster main contrib non-free rpi 
#!!!!В РФ РАБОТАЕТ!!!! зеркало выше

#!/bin/bash
cd /home/pi/
sudo apt install macchanger
macchanger -m DE:AD:BE:EF:DE:AD mon0
macchanger -s mon0

sudo apt-get install aircrack-ng
sudo apt-get install reaver
sudo apt install tshark

git clone https://github.com/derv82/wifite2.git
cd wifite2/
#To run wifite2 without installation -> sudo ./Wifite.py

cd /home/pi/
#LIBRARIES
sudo apt-get install libcurl4-openssl-dev libssl-dev pkg-config

#HCXDUMPTOOL
git clone https://github.com/ZerBea/hcxdumptool.git
cd hcxdumptool/
make
make install

#HCXTOOLS
cd /home/pi/
git clone https://github.com/ZerBea/hcxtools.git
cd hcxtools/
make 
make install

#TRYING CREATING LINK
ln -s /usr/local/bin/hcxpcapngtool /usr/local/bin/hcxpcaptool #NOT WORKS

#HCXPCAPTOOL INSTALLATION (IF LINK DOESNT WORK)
cd /home/pi/
git clone https://github.com/warecrer/Hcxpcaptool
cd Hcxpcaptool/
make
make install

#BULLY
cd /home/pi/
git clone https://github.com/aanarchyy/bully
cd bully/src/
make
sudo make install

#PIXIEWPS
cd /home/pi/
git clone https://github.com/wiire-a/pixiewps
cd pixiewps/
make
sudo make install

#### HASHCAT AND PYRIT INSTALLATION HAS BROKEN MY OS
