#!/bin/bash
#===============================================================================
#
#          FILE:  changemac.sh
# 
#         USAGE:  ./changemac.sh 
# 
#   DESCRIPTION:  A utility to change the mac address of ethernet interface ethX
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
if [ $# -ne 2 ]
then
echo "Usage: $(basename $0) ethX 00:00:00:00:00:00"
exit 1
fi

sudo ifconfig $1 down
sudo ifconfig $1 hw ether $2  
sudo ifconfig $1 up
sudo dhclient $1
exit 0
