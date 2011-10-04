#!/bin/bash
#===============================================================================
#
#          FILE:  check-tcp.sh
# 
#         USAGE:  ./check-tcp.sh
# 
#   DESCRIPTION:  A utility to monitor the TCP connections with bandwidth
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

sudo tcptrack -i eth0
