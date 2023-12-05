#!/bin/sh

cargo install --list > ~/.cargopackages.txt
pacman -Q > ~/.archpackages.txt
cp -r /usr/share/fonts/ ~/.config/fonts
for file in $(cat ~/.dotfiles.txt)
do
    cp -r $file /home/braeden/.dotfiles/
done

