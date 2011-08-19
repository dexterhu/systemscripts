#!/bin/bash
#===============================================================================
#
#          FILE:  laninfo.sh
# 
#         USAGE:  ./laninfo.sh 
# 
#   DESCRIPTION:  A utility to show the list of (machine name, IP) pairs within the 
#                 local network. The interface should be eth0 by default.
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
echo "Usage: $(basename $0) ethX"
exit 1
fi

sudo arp-scan --interface $1 -l | grep -Eo '\b[[:digit:]]{1,3}\.[[:digit:]]{1,3}\.[[:digit:]]{1,3}\.[[:digit:]]{1,3}\b' | awk '{print $1}' | xargs -I {} -i bash -c 'echo -n "{} " ; dig +short -x {}'


