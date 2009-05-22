#!/bin/sh

if [ "$1" == "" ] || [ "$2" == "" ]; then
    echo "Usage jarfinder.sh <root-dir> <search-string>"
    exit
fi

SEARCH=`echo $2 | sed -e 's/[\\\/]/./g'`

echo Searching jars and zips in $1 for "$SEARCH"

find $1 -type f -printf "'%p'\n" | egrep "\.(jar|zip)'$" | sed -e "s/\(.*\)/echo \1 ; jar tvf \1 | sed -e 's\/^\/    \/' | grep -i \"$SEARCH\"/" | sh
