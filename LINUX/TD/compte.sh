#!/bin/bash

USER=$1
FILE_PASSWD=/etc/passwd
TEST=$(grep -w $USER $FILE_PASSWD)

if [ -n "$TEST" ]
then
	echo "L'utilisateur éxsite !"
else
	echo " L'utilisateur n'éxiste pas !"
fi
