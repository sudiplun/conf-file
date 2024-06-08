#!/bin/bash
#remove existing tlp.conf
sudo rm /etc/tlp.conf
#import directly into 
sudo wget "https://github.com/sudiplun/conf-file/blob/main/tlp/tlp.conf" -P /etc/
