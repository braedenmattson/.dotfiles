import os
import random
import time
from datetime import datetime
import sys

dir = f'{os.getcwd()}/{sys.argv[1]}'
wallpapers = os.listdir(f'{dir}')
wallpaper = random.choice(wallpapers)
wall = f'{dir}/{wallpaper}'
os.system("cp %s ~/.config/wall.png && xwallpaper --zoom ~/.config/wall.png" % wall)
