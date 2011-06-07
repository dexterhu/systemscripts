#!/bin/sh

#---------------------------------#
# dynamically build the classpath of jars in current folder and ./lib folder and ./classes#
#---------------------------------#


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
