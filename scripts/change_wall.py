import os
import random
import time
from datetime import datetime
import sys

if '/home/braeden' in f'{sys.argv[1]}':
    dir = sys.argv[1]
else:
    dir = f'{os.getcwd()}/{sys.argv[1]}'
wallpapers = os.listdir(f'{dir}')
wallpaper = random.choice(wallpapers)
wall = f'{dir}/{wallpaper}'
cmd = f'wal -c && wal -i {wallpaper} && sh ~/.config/scripts/alacritty-color-expert/script.sh & echo {wallpaper} & cp {wall}'
cmd = f'echo {wallpaper} & cp {wall}'
os.system("%s /home/braeden/.config/wall.png && xwallpaper --zoom /home/braeden/.config/wall.png " % cmd)
