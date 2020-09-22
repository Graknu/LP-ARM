#!/bin/bash

DIRECTORY=$1
TESTING=$(find $DIRECTORY -ctime -1 -name "*.sh" -print)

for files in $TESTING
do
	echo "========= ${files} ========"
	head -5 $files
done
