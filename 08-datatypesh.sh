#! /bin/bash

USERID=$(id -u)
if [$ USERID -eq 0 ]; then

    echo "please wait you are not  root user"
fi


echo "installing nginx"
dnf install nginx -y
