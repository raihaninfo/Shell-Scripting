#!/bin/bash

#for (( ; ; )); do
#	echo "Master Academy"
#done

for NAMES in $(cat name.txt); do
	echo "This is $NAMES"
done
