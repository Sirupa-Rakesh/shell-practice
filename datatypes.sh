#!  bin/bash


NUMBER=255
# -gt -> grater than
# -nt -> not grater than
# -eq -> equal
# -ne -> not equal
if [ $NUMBER -gt 20 ]; then 
echo "given number is grater than 20"
else
echo "given number is not grater than 20"
fi