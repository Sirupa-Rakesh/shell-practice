#!  bin/bash


NUMBER=$1
# -gt -> grater than
# -nt -> not grater than
# -eq -> equal
# -ne -> not equal
if [ $NUMBER -gt 20 ]; then 
    echo "given number is : $NUMBER is grater than 20"
elif  [ $NUMBER -eq 20 ]; then
    echo "given number is : $NUMBER is equal to 20"
else
    echo "given number is : $NUMBER is less than than 20"
fi
