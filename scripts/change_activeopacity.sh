#!/bin/bash

sed "2s/.*/active-opacity=$1/" /etc/xdg/picom.conf > /home/braeden/.config/picomtemp.txt
mv /etc/xdg/picom.conf /etc/xdg/picom.conf.backup && mv /home/braeden/.config/picomtemp.txt /etc/xdg/picom.conf
