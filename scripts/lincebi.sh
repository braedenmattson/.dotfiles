#!/bin/sh

alacritty -e sh -c "sleep 10 && cd lincebi/ && sudo ./gradlew pnpmRunDev" & alacritty -e sh -c "cd /home/braeden/lincebi/docker/ && sudo docker-compose up" &


