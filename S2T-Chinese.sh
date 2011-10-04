#!/bin/bash
#===============================================================================
#
#          FILE:  S2T.sh
# 
#         USAGE:  ./S2T.sh 
# 
#   DESCRIPTION:  simplied chinese to tradition
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

echo "Simplied Chinese:";
while read -r line;
do
    echo "Traditional Chinese:";
    echo $line | iconv -f utf8 -t gb2312 | iconv -f gb2312  -t big5 | iconv -f big5 -t utf8;
done



