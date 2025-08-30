mkdir /home/$USER/kindworks
cd /home/$USER/kindworks
wget https://github.com/LenovoGuy98/kw-startup-go/raw/refs/heads/master/kw.desktop
wget https://github.com/LenovoGuy98/kw-startup-go/raw/refs/heads/master/kw-startup
wget https://github.com/LenovoGuy98/kw-startup-go/raw/refs/heads/master/kindworks.png
wget https://github.com/LenovoGuy98/kw-startup-go/raw/refs/heads/master/Your-Linux-system.pdf
chmod 755 kw-startup
cp kw.desktop /home/$USER/.config/autostart/

