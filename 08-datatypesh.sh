#! /bin/bash

USERID=$(id -u)
if [$ USERID -eq 0 ]; then
    echo "You are root user"
else
    echo "You are not root user"
fi