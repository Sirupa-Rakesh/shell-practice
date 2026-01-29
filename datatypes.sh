#!  bin/bash


NUMBER=255
# -gt -> grater than
# -nt -> not grater than
# -eq -> equal
# -ne -> not equal
if [ $NUMBER -gt 20 ]; then 
    echo "given number is : $NUMBER is grater than 20"
fi