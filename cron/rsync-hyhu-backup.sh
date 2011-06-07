#!/bin/sh

logfile=$(date +%Y%m%d%H%M)

sudo rsync -azv --progress --delete --log-file=/home/hyhu/log/$logfile_rsync.log --exclude "/home/hyhu/.gvfs" /etc "/home/hyhu/Ubuntu One/"

sudo rsync -azv --progress --delete --log-file=/home/hyhu/log/$logfile_rsync.log --exclude "/home/hyhu/.gvfs" /home/hyhu/.config/autostart "/home/hyhu/Ubuntu One/hyhu/.config"
