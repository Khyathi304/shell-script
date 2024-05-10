#!/bin/bash


USERID=$(id -u)

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "$2... Failure"
        exit 1
    else
        echo "$2... Success"
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