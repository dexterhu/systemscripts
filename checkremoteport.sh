#!/bin/bash

if [ $# -ne 1 ]
then
echo "Usage: $(basename $0) <host/ip>"
exit 1
fi

sudo nmap -sS -P0 -sV -O $1
