#!/bin/bash


USERID=$(id -u)

if [ $userid -ne 0 ]
then
echo "Please run the script with root access"
else
echo "You are super User"
fi
dnf install mysql -y