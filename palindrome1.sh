#!/bin/bash -x
echo "Enter a num: "
read n
palindrome() {
sum=0
rev=""
temp=$n

while [ $n -gt 0 ]
do
	sum=$(($n%10))
	n=$(($n/10))
	rev=$( echo ${rev}${sum} )
done
if [ $temp -eq $rev ]
then
	echo "Number is palindrome"
else
	echo "Number is not a palindrome"
fi
}
palindrome
