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
os.system("cp %s /home/braeden/.config/wall.png && xwallpaper --zoom /home/braeden/.config/wall.png" % wall)
