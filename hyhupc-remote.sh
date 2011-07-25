#!/bin/bash
#===============================================================================
#
#          FILE:  hyhupc-remote.sh
# 
#         USAGE:  ./hyhupc-remote.sh 
# 
#   DESCRIPTION:  set up ssh tunneling of Remote Desktop Protocol (port # 3389) through a gate 
#                 keeper 147.8.179.11
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:  Dexter H. Hu (), hyhu@cs.hku.hk
#       COMPANY:  HKU CS
#       VERSION:  1.0
#       CREATED:  03/11/2011 08:48:25 PM HKT
#      REVISION:  ---
#===============================================================================

ssh -L 3389:147.8.177.116:3389 147.8.179.11 -l hyhu
