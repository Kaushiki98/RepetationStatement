#!/bin/bash 
#echo "enter head r tail: "
let win=0
let lose=0
flip=11
for ((i=1; i<=$flip; i++))
do
	val=$(($RANDOM%2))
	echo "$val"

	if [ $val -eq 1 ]
	then
		win=$(($win+1))
		echo "winner"
		echo $win
	else
		lose=$(($lose+1))
		echo "losser"
		echo $lose
	fi
done
