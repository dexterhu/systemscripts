#!/bin/bash
# A utility to kill a process by its partial name, i.e. the name is a substring of the full command
# that started this process
# This is usefull when we don't know the exact name of the process, but the application name
# 
# Author: Dexter H. Hu
# Date: 05/03/2011

terminate(){
    # accepts PID as $1, defaults to current process
    signals=(TERM INT QUIT HUP KILL) 
    s=0
    signal_qty=${#signals[@]}

    while [[ $s < $signal_qty ]] 
    do
        signal=${signals[$s]}
        #echo $signal
        if [ $signal == "KILL" ]; then
            echo "Attempting to force kill it."
        else 
            echo "With signal $signal"
        fi
        
        sudo kill -$signal $1 2>&1 1>/dev/null
        sleep 2;
        
	result=$(ps $1 | wc -l)
        
	if [ $result == "1" ]; then # just found one line, i.e. the process with id is killed
           return 0
      	fi

        s=$s+1
    done
}


if [ "$1" == "" ]; then
	echo "Usage : ./killbyname.sh <process name>"
else
        # exclude any lines that contain "grep" or "killbyname" using "grep -v" command
        pno=$(ps axww | grep -v grep | grep -v killbyname | grep $1 | awk '{ print $1 }' | wc -l)
	if [ "$pno" == 0 ]; then
            	echo "Not found any process with partial name $1"
	else
           	echo "$pno processes found" 
        	for id in $(ps axww | grep -v grep | grep -v killbyname | grep $1 | awk '{ print $1 }'); do 
		echo "killing process with ID $id"
                result=$(ps $id | wc -l)
	        # echo "result = $result" 
        	if [ $result == "2" ]; then # the process with id is really there
           		terminate "$id"
        	fi
		done
        fi
fi

