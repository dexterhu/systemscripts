#!/bin/bash
#===============================================================================
#
#          FILE:  recoverapt.sh
# 
#         USAGE:  ./recoverapt.sh 
# 
#   DESCRIPTION:  recover apt configurations
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:  Dexter H. Hu (), hyhu@cs.hku.hk
#       COMPANY:  HKU CS
#       VERSION:  1.0
#       CREATED:  03/11/2011 12:52:51 PM HKT
#      REVISION:  ---
#===============================================================================

sudo dpkg-reconfigure -phigh -a
