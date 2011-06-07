#!/bin/bash
#===============================================================================
#
#          FILE:  psbymem.sh
# 
#         USAGE:  ./psbymem.sh 
# 
#   DESCRIPTION:  sort process by mem % usage
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

ps -eo pmem,ppid,comm | sort -k 1 +0 -1 -r | head -11 | tail -10
