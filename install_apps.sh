#!/bin/bash
apt update && apt upgrade -y 
declare -a packages=("p7zip" "audacity" "firefox" "gimp" "handbrake" "inkscape" "krita" "libreoffice" "tux-paint" "vlc")
for package in ${packages[@]}; do
    echo "******************" 
    echo $package
    echo "******************"
    apt install  $package -y
done
wget https://zoom.us/client/latest/zoom_amd64.deb -O /tmp/zoom_amd64.deb 
echo "******************" 
echo zoom
echo "******************"
apt install --fix-broken /tmp/zoom_amd64.deb -y

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O /tmp/google-chrome-stable_current_amd64.deb
apt install /tmp/google-chrome-stable_current_amd64.deb -y
wget https://novabench.com/files/novabench-x64.deb  -O /tmp/novabench-x64.deb
apt install /tmp/novabench-x64.deb -y

#KindWorks Stuff
mkdir ~/kindworks
cd ~/kindworks
wget https://github.com/LenovoGuy98/kw-startup-go/raw/refs/heads/master/kw-startup
wget https://github.com/LenovoGuy98/kw-startup-go/raw/refs/heads/master/kindworks.png
wget https://github.com/LenovoGuy98/kw-startup-go/raw/refs/heads/master/Your-Linux-system.pdf
chmod 755 kw-startup
