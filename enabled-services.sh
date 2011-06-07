#!/bin/bash
#===============================================================================
#
#          FILE:  enabled-services.sh
# 
#         USAGE:  ./enabled-services.sh 
# 
#   DESCRIPTION:  show currently enabled services at current run level 
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:  Dexter H. Hu (), hyhu84@cs.hku.hk
#       COMPANY:  HKU Computer Science
#       VERSION:  1.0
#       CREATED:  03/24/2011 09:36:56 PM HKT
#      REVISION:  ---
#===============================================================================

sudo chkconfig --list | grep $(runlevel | awk '{ print $2}'):on

