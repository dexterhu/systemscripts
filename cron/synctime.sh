#!/bin/sh


logfile=/home/hyhu/log/synctime$(date +%Y%m%d%H%M%S).log

sudo /home/hyhu/Ubuntu\ One/systemscripts/cron/htpdate-1.0.4/htpdate -dst -P proxy.cs.hku.hk:8282  www.google.com 
sudo hwclock --systohc

