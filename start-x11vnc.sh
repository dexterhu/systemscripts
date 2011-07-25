#!/bin/bash
#===============================================================================
#
#          FILE:  start-x11vnc.sh
# 
#         USAGE:  ./start-x11vnc.sh
# 
#   DESCRIPTION:  set up x11vnc server in another setting
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

x11vnc -ncache 10 -usepw
