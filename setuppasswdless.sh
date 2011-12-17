#!/bin/bash
#===============================================================================
#
#          FILE:  setuppasswdless.sh
# 
#         USAGE:  ./setuppasswdless.sh
# 
#   DESCRIPTION:  copy pub key to a set of predefined hosts for passwordless login
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

for host in node00{5..8}; do
echo $host
ssh-copy-id -i ~/.ssh/id_rsa.pub pgrid@$host
done
