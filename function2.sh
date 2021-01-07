#!/bin/bash -x
echo "enter a number:  "
read num
palindrome () {
s=0
rev=""
temp=$num
while [ $num -gt 0 ]
do
	s=$(($num%10))
	num=$(($num/10))
	rev=$( echo ${rev}${s} )
done
if [ $temp -eq $rev ]
then
	echo "Number is palindrome"
else
	echo "Number is not palindrome"
fi
}
for ((i=0; i<=2; i++))
do
	$num="$(palindrome)"
	echo $num
done
