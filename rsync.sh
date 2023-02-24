#!/bin/bash
date=$(date +%Y.%m.%d-%H.%M.%S)
budir="/hub/Backups/2023/fedora/"
#excfile="$HOME/media/Documents/exclude.txt"

mkdir $budir/$date

rsync -avP --exclude 'media/Music' --exclude 'Downloads' --exclude '.local/share/' --exclude '.cache' --exclude 'pCloudDrive' /home "$budir"/"$date"
#rsync -av --exclude-from '/home/me/media/Documents/rs' /home "$budir"/"$date"

notify-send -h string:fgcolor:#ff4444 "back up running"
