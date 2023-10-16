#!/bin/bash
sudo systemctl start bluetooth
sudo systemctl restart bluetooth.service
sudo systemctl enable --now bluetooth
sleep 8
VAR= bt-device -l | grep "$1" | cut -d' ' -f2 | sed 's/(//' | sed 's/)//' 
echo "${VAR#   }"
bluetoothctl connect "${VAR#  }" && sudo systemctl restart bluetooth && echo 'connection sucessful'
#bluetoothctl connect CF:2F:83:81:18:1A
