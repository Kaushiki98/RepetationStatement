#!/bin/bash -x
echo "Think of number between 1 to 100."
read n
start=0
end=100
flag=0

while [[ $start -le $end ]]
do
        mid=$(( ($start+$end)/2 ))
	if [[ $n -eq $mid ]]
	then
		flag=1
		break
	elif [[ $n -lt $mid ]]
	then
		end=$mid
	else
		start=$mid
	fi
done
if [[ $flag -eq 1 ]]
then
	echo "Element found is $mid"
else
	echo "Element not found"
fi

