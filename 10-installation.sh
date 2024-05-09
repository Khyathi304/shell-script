#!/bin/bash


USERID=$(id -u)

if [ $USERID -ne 0 ]
then
echo "Please run the script with root access"
exit 1
else
echo "You are super User"
fi

dnf install mysql -y

if [ $? -ne 0 ]
then
echo "Installation of MySql is Failure::"
exit 1
else
echo "Installation of MySql is Success::"
fi

dnf install git -y
if [ $? -ne 0 ]
then
echo "Installation of git is Failure::"
exit 1
else
echo "Installation of git is Success::"
fi

echo "Is Script Proceeding"