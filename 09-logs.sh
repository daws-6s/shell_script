#!/bin/bash

ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)

LOGFILE="/tmp/$0-$TIMESTAMP.log"

VALIDATE(){
if [ $1 -ne 0 ]
then
    echo "ERROR: $2 is failed"
    exit 1
else
    echo "$2 is Success"
fi 
}

if [ $ID -ne 0 ]
then
    echo "ERROR: Please run with root user"
    exit 1
else
    echo "You are a root user"
fi

yum install mysql -y &>> $LOGFILE

VALIDATE $? "Installing MySql"

yum install git -y &>> $LOGFILE

VALIDATE $? "Installing Git"