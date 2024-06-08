#!/bin/bash

sudo echo -e "\033[1m\033[7mStarting system updates...\033[0m"

sudo dnf -y update
sudo dnf -y upgrade
flatpak -y update

#sudo dnf -y autoremove
#sudo dnf -y clean all
#sudo dnf -y makecache

echo "System updates have been completed. What would you like to do next?"
echo "1. Reboot"
echo "2. Power-off"
echo "3. Exit the Terminal"

read choice

case $choice in
  1)
    sudo reboot
    ;;
  2)
    sudo poweroff
    ;;
  3)
    exit
    ;;
  *)
    echo "Invalid choice. Please choose 1, 2, or 3."
    ;;
esac
