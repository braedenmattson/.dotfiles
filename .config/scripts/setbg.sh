#!/bin/bash

[ -f "$1" ] && cp "$1" ~/.config/wall.png

xwallpaper --zoom ~/.config/wall.png
