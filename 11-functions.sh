#!/bin/bash


USERID=$(id -u)

VALIDATE(){
    echo "Exit Status: $1"
    echo "What are you doing"

}
if [ $USERID -ne 0 ]
then
echo "Please run the script with root access"
exit 1
else
echo "You are super User"
fi

dnf install mysql -y

VALIDATE $? "Installing MySql"


dnf install git -y

VALIDATE $? "Installing Git"

echo "Is Script Proceeding"