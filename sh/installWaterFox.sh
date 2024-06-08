#!/bin/bash
echo"Downloading FireFox_Setup_File for Official sites"
wget -O ~/FirefoxSetup.tar.bz2 "https://cdn1.waterfox.net/waterfox/releases/G6.0.9/Linux_x86_64/waterfox-G6.0.9.tar.bz2"
#extacting the latest firefox .tar.bz2 to /opt/
sudo tar xjf ~/FirefoxSetup.tar.bz2 -C /opt/
#creating symbolic link to system binary
sudo ln -s /opt/firefox/firefox /usr/bin/
#setup desktop icon
sudo wget "https://raw.githubusercontent.com/sudiplun/.desktop/main/Firefox.desktop" -P /usr/local/share/applications
#removing download setup file
echo"it's better to rm ~/FirefoxSetup.tar.bz2 sure.........!"
rm -rf ~/FirefoxSetup.tar.bz2
