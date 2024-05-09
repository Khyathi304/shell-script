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
else
echo "Installation of MySql is Success::"
exit 1
fi

dnf install git -y
then
echo "Installation of git is Failure::"
else
echo "Installation of git is Success::"
exit 1
fi

echo "Is Script Proceeding"