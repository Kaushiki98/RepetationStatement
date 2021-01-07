#!/bin/bash -x
echo "enter 2 multiple of n numbers:  "
read n
for((i=1; i<=$n; i++))
do
	num=$(($i**2))
	echo "$num"
done
