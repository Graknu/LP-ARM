#!/bin/bash

USER=$1
FILE_PASSWD=/etc/passwd
TEST=$(grep -w "^$USER:" $FILE_PASSWD)

#Le ^ permet de dire que c'est le début de ligne

if [ -n "$TEST" ]
then
	echo "L'utilisateur éxsite !"
else
	echo " L'utilisateur n'éxiste pas !"
fi
