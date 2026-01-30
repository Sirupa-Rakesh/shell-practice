#!/bin/bash

USERID=$(id -u)
LOGS_FOLDER="/var/log/shell-scripts"
SCRIPT_NAME=$(basename "$0")
LOGS_FILE="$LOGS_FOLDER/$SCRIPT_NAME.log"

# Check root user
if [ $USERID -ne 0 ]; then
    echo "Please run this script as root user"
    exit 1
fi

# Create logs directory
mkdir -p $LOGS_FOLDER

VALIDATE () {
    if [ $1 -ne 0 ]; then
        echo "$2 .... FAILED"
        exit 1
    else
        echo "$2 .... SUCCESS"
    fi
}

dnf install nginx -y >> $LOGS_FILE 2>&1
VALIDATE $? "Installing nginx"

dnf install mysql -y >> $LOGS_FILE 2>&1
VALIDATE $? "Installing mysql"

dnf install nodejs -y >> $LOGS_FILE 2>&1
VALIDATE $? "Installing nodejs"