#!/bin/bash
i=1
while [ $i != 256 ]
do
	i=$(($i*2))
	echo $i
done
