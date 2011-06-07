#!/bin/bash
#===============================================================================
#
#          FILE:  exportpath.sh
# 
#         USAGE:  ./exportpath.sh 
# 
#   DESCRIPTION:  export 
# 
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

EXPECTED_ARGS=1

if [ $# -ne $EXPECTED_ARGS ]
then
  echo "export all executable files under a folder to PATH" 
  echo "Usage: exportpath.sh folder"
  exit 1
fi


name=$(date +%Y%m%d%H%M%S).txt

find "$PWD/$1" -type f -executable | xargs -I {} echo "export PATH=\"{}\":\$PATH" > $name

source $name
echo $PATH
rm -rf $name
