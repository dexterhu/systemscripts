#!/bin/bash
#===============================================================================
#
#          FILE:  sortcsv.sh
# 
#         USAGE:  ./sortcsv.sh 
# 
#   DESCRIPTION:  sort cvs file according to different columns
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:  Dexter H. Hu (), hyhu@cs.hku.hk
#       COMPANY:  HKU CS
#       VERSION:  1.0
#       CREATED:  03/11/2011 04:19:07 PM HKT
#      REVISION:  ---
#===============================================================================

EXPECTED_ARGS=2

if [ $# -ne $EXPECTED_ARGS ]
then
  echo "Usage: sorcsv.sh file n"
  exit 1
fi

column_no=$2
pre_column_no=$(($2 -1))
sort -t"," -n +$pre_column_no -$2 $1 > $1.tmp; mv $1.tmp $1
