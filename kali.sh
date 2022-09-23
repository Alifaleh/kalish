#!/bin/bash
echo "[+] Installing XFCE4, this will take a while"
apt-get update
apt-get dist-upgrade -y --force-yes
apt-get upgrade -y --force-yes
apt-get --yes --force-yes install kali-desktop-xfce xorg xrdp
echo "[+] Configuring XRDP to listen on port 3390 (but not starting the service)..."
sed -i 's/port=3389/port=3390/g' /etc/xrdp/xrdp.ini
/etc/init.d/xrdp start
echo "[+] Now open rdp in Windows and connect to 127.0.0.1:3390"
echo "[+] To stop the server you can use '/etc/init.d/xrdp stop'"
echo "[+] To stop the server you can use '/etc/init.d/xrdp start'"
echo "[+] To install all kali tools you can use 'apt-cache search kali-linux' to show all available packages. then you can use 'sudo apt-get install kali-linux-everything' to install all the tools."