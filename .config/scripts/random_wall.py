import os
import random
import time
from datetime import datetime


if 11 < datetime.now().hour <=16:
    timeofday='day'
if 4 < datetime.now().hour <=11:
    timeofday='morning'
if 20 < datetime.now().hour <=24:
    timeofday='night'
if datetime.now().hour <4:
    timeofday='night'
if 16<datetime.now().hour <=20:
    timeofday='evening'

if timeofday == 'morning':
        wallpapers = os.listdir('/home/braeden/Downloads/wallpaper/morning')
if timeofday == 'day':
        wallpapers = os.listdir('/home/braeden/Downloads/wallpaper/day')
if timeofday == 'night':
        wallpapers = os.listdir('/home/braeden/Downloads/wallpaper/night')
if timeofday == 'evening':
        wallpapers = os.listdir('/home/braeden/Downloads/wallpaper/evening')
wallpaper = random.choice(wallpapers)
wall = f'/home/braeden/Downloads/wallpaper/{timeofday}/{wallpaper}'
print(wall)
os.system("cp %s /home/braeden/.config/wall.png && xwallpaper --zoom /home/braeden/.config/wall.png " % wall)
