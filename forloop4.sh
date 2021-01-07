#!/bin/bash -x
echo "enter two numbers:  "
read num
read num2
for ((i=$num+1; i<=$num2-1; i++))
do

	for ((j=2; j<=$i-1; j++))
	do
		if [ $(($i%$j)) -eq 0 ]
	      	then
                	echo "$num is not a prime number"
        	exit
        	fi
	done
	echo "$num is not a prime number"
done
