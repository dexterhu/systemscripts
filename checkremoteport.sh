#!/bin/bash
#===============================================================================
#
#          FILE:  checkremoteport.sh
# 
#         USAGE:  ./checkremoteport.sh <host/ip>
# 
#   DESCRIPTION:  A utility to watch the current open TCP & UDP ports
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:  Dexter H. Hu, hyhu@cs.hku.hk
#       COMPANY:  HKU CS
#       VERSION:  1.0
#       CREATED:  04/12/2010 04:24:02 PM HKT
#      REVISION:  ---
#===============================================================================

if [ $# -ne 1 ]
then
echo "Usage: $(basename $0) <host/ip>"
exit 1
fi

sudo nmap -sS -P0 -sV -O $1
