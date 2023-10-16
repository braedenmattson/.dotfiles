#!/bin/bash

sed "1s/.*/inactive-opacity=$2/" /etc/xdg/picom.conf > /home/braeden/.config/picomtemp.txt
mv /etc/xdg/picom.conf /etc/xdg/picom.conf.backup && mv /home/braeden/.config/picomtemp.txt /etc/xdg/picom.conf
