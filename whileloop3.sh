#!/bin/bash -x
head=1
tail=0
win=11
count=1

flip=$(($RANDOM%2))
	if [ $flip -eq $head ]
		then
			echo "winner"
		else
			echo "losser"
		fi
	(($count++))
done
