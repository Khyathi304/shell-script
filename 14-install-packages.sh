#!/bin/bash


USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "$2... $R Failure $N"
        exit 1
    else
        echo "$2... $G Success $N"
        fi
}

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
echo -e "$i is installed.. $Y Skipping $N"
else
dnf install $i -y &>>LOGFILE
VALIDATE $? "Installation of $i"
fi

done