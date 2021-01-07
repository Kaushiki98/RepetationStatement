#!/bin/bash -x
echo "Think of number between 1 to 100."
read guess
n=100
num=1

while [ $num != $guess ]
do
	if [ $guess -lt $n ]
	then
		for((i=1; i<=$n/2; i++))
		do
			n=$(($n/2))
			echo "$n"
		done
	elif [ $guess -gt $n ]
	then
		for((j=$i; j>=$n/2; j++))
		do
			n=$(($n/2))
			echo "$n"
		done
	else
		echo "enter number btw 1 to 100 only"
	fi
done
