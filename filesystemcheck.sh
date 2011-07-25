#!/bin/bash

# this directory must exist to execute the script
if [ -d /dev/disk/by-id/ ]; then :; else echo 'ERROR: /dev/disk/by-id/ does not exist'; exit 1; fi

# root user is necessary
# if [ $UID -gt 0 ]; then	echo 'ERROR: You have to be root'; exit 1; fi

# list ALL partitions and exclude the SWAP ones
declare -a SWAPS=( $(cat /proc/swaps | grep /dev/ | awk '{print$1}') )
lsParts="ls -l /dev/disk/by-id/ | grep --regexp=-part[0-9] | awk '{sub(\"../../\",\"/dev/\");"
for i in $(seq 0 $((${#SWAPS[@]} - 1))); do
	lsParts=${lsParts}' sub("'${SWAPS[$i]}'", "");'
done
lsParts=${lsParts}" print\$10}'"
declare -a PARTITIONS=(`eval $lsParts`)

# format TEMP file
for i in $(seq 0 $((${#PARTITIONS[@]} - 1))); do
	PARTITION=${PARTITIONS[$i]}
	if [ -n $PARTITION ]; then
		# first line, device name
		echo $PARTITION >> .temp.$$
		# mount info
		sudo dumpe2fs -h $PARTITION | grep 'Filesystem volume name' >> .temp.$$
		sudo dumpe2fs -h $PARTITION | grep 'Mount count' >> .temp.$$
		sudo dumpe2fs -h $PARTITION | grep 'Maximum mount count' >> .temp.$$
		sudo dumpe2fs -h $PARTITION | grep 'Last mount time' >> .temp.$$
		sudo dumpe2fs -h $PARTITION | grep 'Last checked' >> .temp.$$
		echo '-------------------------------' >> .temp.$$
	fi
done

# show and delete TEMP file
clear
cat .temp.$$
rm -f .temp.$$

# TUNE help
echo
echo 'HOWTO'
echo -e "- Change Filesystem volume name:\n\tsudo tune2fs -L NewLabel /dev/hda1\n\tsudo e2label /dev/hda1 NewLabel"
echo
echo -e "- Change Maximum mount count:\n\tsudo tune2fs -c 50 /dev/hda1"
echo
echo -e "- Modify reserved space:\n\tsudo tune2fs -m 1 /dev/hda1"
echo

exit 0

