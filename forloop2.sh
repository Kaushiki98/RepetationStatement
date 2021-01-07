#!/bin/bash
echo "Enter a number: "
read n
sum=1
for((i=2; i<=$n; i++))
do
	sum=$(( $sum+$((1/$i)) ))
	echo "$sum"

done
