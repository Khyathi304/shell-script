#!/bin/bash


USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log

VALIDATE(){
    if [ $1 -eq 0 ]
    then
        echo "$2... Success"
        exit 0
    else
        echo "$2... Failure"
        fi
}
if [ $USERID -ne 0 ]
then
echo "Please run the script with root access"
exit 1
else
echo "You are super User"
fi

dnf install mysql -y &>>$LOGFILE

VALIDATE $? "Installing MySql"


dnf install git -y &>>$LOGFILE

VALIDATE $? "Installing Git"

