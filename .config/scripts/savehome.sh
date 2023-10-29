#!/bin/sh
cp -r /usr/share/fonts/ ~/.fonts
for file in $(cat ~/.dotfiles.txt)
do
    cp -r /home/braeden/$file /home/braeden/.dotfiles/
done

