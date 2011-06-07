#!/bin/bash
#===============================================================================
#
#          FILE:  laninfo.sh
# 
#         USAGE:  ./laninfo.sh 
# 
#   DESCRIPTION:  
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:  Dexter H. Hu (), hyhu@cs.hku.hk
#       COMPANY:  HKU CS
#       VERSION:  1.0
#       CREATED:  03/12/2011 05:24:02 PM HKT
#      REVISION:  ---
#===============================================================================

sudo arp-scan -l | grep -Eo '\b[[:digit:]]{1,3}\.[[:digit:]]{1,3}\.[[:digit:]]{1,3}\.[[:digit:]]{1,3}\b' | awk '{print $1}' | xargs -I {} dig +short -x {}


