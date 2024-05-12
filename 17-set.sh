#!/bin/bash


USERID=$(id -u)

if [ $USERID -ne 0 ]
then
echo "Please run the script with root access"
exit 1
else
echo "You are super User"
fi

dnf install mysqll -y

dnf install git -y

echo "Is Script Proceeding"