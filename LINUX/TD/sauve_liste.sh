USER=$1
FILE_TEST=$2

ls /home/$USER > $2

tar -czvf sauve.tar.gz $FILE_TEST

