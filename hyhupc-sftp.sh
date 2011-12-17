#!/bin/bash
#===============================================================================
#
#          FILE:  hyhupc-sftp.sh
# 
#         USAGE:  ./hyhupc-sftp.sh 
# 
#   DESCRIPTION:  set up ssh tunneling of sshd (port # 22) through a gate 
#                 keeper 147.8.179.11 for remote host 147.8.177.116, so that local host's sftp
#                 client or ssh client can connect to remote host just by "localhost:1111"
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

ssh -L 1111:147.8.177.116:22   147.8.179.11 -l hyhu
