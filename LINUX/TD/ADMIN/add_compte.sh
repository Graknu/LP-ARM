#!/bin/bash

FILE=$1

while read line; do
	USER=$(echo $line | cut -d ";" -f1 )
	PASSWD=$(echo $line | cut -d ";" -f2)
	echo $USER
	useradd -g users -m -d /home/$USER -s /bin/bash $USER
	if [ $? == 0 ]
	then
		NEW_LINE=$(echo $line | sed 's/;/:/g')
		echo $NEW_LINE | chpasswd
	fi
done < $FILE
