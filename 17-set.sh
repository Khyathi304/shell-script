#!/bin/bash

failure(){
 echo "failed at $1.. $2"
}
trap 'failure ${LINENO} "$BASH COMMAND"' ERR
USERID=$(id -u)

if [ $USERID -ne 0 ]
then
echo "Please run the script with root access"
exit 1
else
echo "You are super User"
fi

dnf install mysqfgtl -y

dnf install git -y

echo "Is Script Proceeding"