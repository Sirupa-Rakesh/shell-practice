#!/bin/bash

read -p "Enter first number: " n
read 1
for i in {1..10}
do
echo "$n x $i = $((n * i))"
done
exit 0