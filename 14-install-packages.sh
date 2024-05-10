#!/bin/bash


USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log

if [ $USERID -ne 0 ]
then
echo "Please run the script with root access"
exit 1
else
echo "You are super User"
fi

#echo "All packages: $@"

for i in $@
do
echo "Package to install: $i"
dnf list installed $i &>>LOGFILE
if [ $? -eq 0 ]
then
echo "$i is installed.. Skipping"
fi

done