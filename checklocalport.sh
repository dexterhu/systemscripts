#!/bin/bash
#===============================================================================
#
#          FILE:  checklocalport.sh
# 
#         USAGE:  ./checklocalport.sh 
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

sudo watch lsof -Pan -i tcp -i udp
