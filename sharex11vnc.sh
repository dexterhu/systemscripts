#!/bin/bash
#===============================================================================
#
#          FILE:  sharex11vnc.sh
# 
#         USAGE:  ./sharex11vnc.sh
# 
#   DESCRIPTION:  set up x11vnc server
#                 
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:  Dexter H. Hu (), hyhu@cs.hku.hk
#       COMPANY:  HKU CS
#       VERSION:  1.0
#       CREATED:  03/11/2011 07:58:15 PM HKT
#      REVISION:  ---
#===============================================================================

x11vnc -nap -bg -many -rfbauth ~/.vnc/passwd -desktop "VNC ${USER}@${HOSTNAME}"|grep -Eo "[0-9]{4}">~/.vnc/port.txt

# comment out the following if you don't want a popup telling you which port you're using.
zenity --info --text="Your VNC port is `cat ~/.vnc/port.txt`"

