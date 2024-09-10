#!/bin/bash

ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)

LOGFILE="/tmp/$0-$TIMESTAMP.log"

R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"

echo -e "$Y script execution is started $N"
echo "total arguments:$@"

VALIDATE(){
if [ $1 -ne 0 ]
then
    echo -e "$R ERROR: $N $2 is $R failed $N"
    exit 1
else
    echo -e "$2 is $G Success $N"
fi 
}

if [ $ID -ne 0 ]
then
    echo -e "$R ERROR: $N Please run with root user"
    exit 1
else
    echo -e "$G You are a root user $N"
fi

yum install mysql -y &>> $LOGFILE

VALIDATE $? "Installing MySql"

yum install git -y &>> $LOGFILE

VALIDATE $? "Installing Git"