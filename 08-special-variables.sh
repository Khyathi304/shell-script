#!/bin/bash

echo "All Variables:: $@"
echo "Number of variables passed:: $#"
echo "Script Name:: $0"
echo "Present working directory:: $PWD"
echo "Home Directory:: $HOME"
echo "Which User is running the script:: $USER"
echo "Host Name:: $HOSTNAME"
echo "Process ID of current shell script:: $$"
sleep 60 &
echo "Process ID of last background command: $!"