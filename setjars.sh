#!/bin/bash
#===============================================================================
#
#          FILE:  setjars.sh
# 
#         USAGE:  ./setjars.sh .
# 
#   DESCRIPTION:  dynamically set the classpath of jars in current folder and 
#                 ./lib folder and ./classes#
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

EXPECTED_ARGS=1

if [ $# -ne $EXPECTED_ARGS ]
then
  echo "Usage: setjars.sh fullpath (otherwise please use . )"
  exit 1
fi

cd $1

THE_CLASSPATH=.

for i in `ls ./lib/*.jar`
do
  THE_CLASSPATH=${THE_CLASSPATH}:${i}
done

for i in `ls ./*.jar`
do
  THE_CLASSPATH=${THE_CLASSPATH}:${i}
done


echo "classpath is:"
echo $THE_CLASSPATH

exit 0
