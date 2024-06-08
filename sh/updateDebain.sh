#!/bin/bash

sudo echo -e "\033[1m\033[7mStarting system updates...\033[0m"

sudo apt update
sudo apt upgrade -y
flatpak update -y
#autoclean
sudo apt-get autoclean && sudo apt-get autoremove

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

