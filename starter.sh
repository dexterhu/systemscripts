#!/bin/bash

PIDFILE="$0.pid"
touch $PIDFILE
LASTPPID=`cat $PIDFILE`
kill -0 $LASTPPID 2>/dev/null
ERR=$?
if [ $ERR -eq 0 ]; then
    # Still running
    echo `date` - "Exit, previous copy (pid $LASTPPID) still running."
    exit
fi

nohup tail -f /var/log/wtmp >/dev/null &
PID=$!
echo $PID >$PIDFILE

echo PID=$PID
ps -ef | grep "$PID"
