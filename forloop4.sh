#!/bin/bash
echo "enter two numbers:  "
read x 
read y
while [ $x -le $y ]
do
i=2
flag=1
	while [ $i -lt $x ]
	do
		if [ $(( $x%$i )) -eq 0 ]
	      	then
        		flag=0
			break
		else
			i=$(( $i+1 ))
        	fi
	done
	if [ $flag -eq 1 ]
	then
		echo "$x is a prime number"
	fi
	x=$(( $x+1 ))
done
