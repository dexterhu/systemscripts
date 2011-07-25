#!/bin/bash
#===============================================================================
#
#          FILE:  killzombie.sh
# 
#         USAGE:  ./killzombie.sh 
# 
#   DESCRIPTION:  kill zombie process periododically, a zombie is a dead one 
#                 taking a PID but not with any process resources.
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:  Dexter H. Hu (), hyhu@cs.hku.hk
#       COMPANY:  HKU CS
#       VERSION:  1.0
#       CREATED:  03/10/2011 11:08:20 PM HKT
#      REVISION:  ---
#===============================================================================


#
# zombie_slayer [OPTIONS]
#
# -d
#   Just diplay the zombie processes and exit
#
# -h | help
#   Display help
#
# Default is to show processes and the ask what to kill
#

function Z_Display
{
    echo ""
    echo "PID - PPID - State - User - Proc"
    UNIX95= ps -eo pid,ppid,state,user,comm | awk 'BEGIN { count=0 } $3 ~ /Z/ { count++; print $1,$2,$3,$4,$5 } END { print "\n" count " Zombie(s) to slay." }'
    echo ""
}

function Z_Kill
{
    read -p "Enter PPID to kill or 'exit' : " SLAY_PPID
    if [ "$SLAY_PPID" = "exit" ] || [ "$SLAY_PPID" = "" ]
    then
        exit
    fi
    ps -p $SLAY_PPID | grep -q $SLAY_PPID
    if [ $? -eq 0 ]
    then
        UNIX95= ps -o pid,user,state,comm -p $SLAY_PPID | \
        awk '$1 ~ /^[0-9]*$/ { print "The program " $4 " with PID " $1 " is being run by the user " $2 " and is currently in state " $3 }'
        read -p "Are you sure you want to kill PID $SLAY_PPID ? Y|N : " COMMIT_KILL
        if [ "$COMMIT_KILL" = "Y" ] || [ "$COMMIT_KILL" = "y" ]
        then
            kill -9 $SLAY_PPID
            echo ""
            read -p "Killed PID $SLAY_PPID. Run again? Y/N : " GO_AGAIN
        else
            Z_Kill
        fi
    else
        echo "Invalid PID. Try again."
        echo ""
        Z_Kill
    fi
}

function help
{
    echo "Usage: zombie_slayer [-h | help -d]"
    echo "-d just display zombie processes and exit"
    echo "-h | help : This help"
    exit
}

if [ "$1" = "-h" ] || [ "$1" = "help" ]
then
    help
fi

if [ "$1" = "-d" ]
then
    Z_Display
else
    Z_Display
    Z_Kill
fi
if [ "$GO_AGAIN" = "Y" ] || [ "$GO_AGAIN" = "y" ]
then
    Z_Display
    Z_Kill
fi
echo ""

