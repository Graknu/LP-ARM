#!/bin/bash

CHOICE=$1
ARG=$2
DIR_OLD=/home/ancien
FILE_PASSWD=/etc/passwd
TEST=$(grep "^$ARG:" $FILE_PASSWD)

help() {
	echo "Help :"
}

archive() {
	echo "archive"
	if [ -e /home/$1 ]
	then
		tar -czvf $DIR_OLD/$1.tar.gz /home/$1/
	fi
}

suppression() {
	userdel -r $1
}

if [ -z $TEST ]
then
	help
	exit 1
fi

case $CHOICE in
	"-a")
		echo "Archive"
		archive $ARG
		;;
	"-d")
		echo "Delete"
		suppression $ARG
		;;
	"-s")
		echo "Secure delete"
		archive $ARG
		if [ $? == 0 ]
		then
			suppression $ARG
		fi
		;;
	"-h")
		help
		;;
	*)
		help
		;;
esac
