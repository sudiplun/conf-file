#!/bin/bash
echo"Downloading FireFox_Setup_File for Offcial sites"
wget -O ~/FirefoxSetup.tar.bz2 "https://download.mozilla.org/?product=firefox-latest&os=linux64"
#extacting the latest firefox .tar.bz2 to /opt/
sudo tar xjf ~/FirefoxSetup.tar.bz2 -C /opt/
echo "it's better to rm ~/FirefoxSetup.tar.bz2 sure..... ( ͡❛ ͜ʖ ͡❛)....!"
rm ~/FirefoxSetup.tar.bz2
