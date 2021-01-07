#!/bin/bash -x
echo "enter a number: "
read n
prime() {
for((i=2; i<=$n/2; i++))
do
	if [ $(($n%2)) -eq 0 ]
	then
		echo "$n not a prime number"
	fi
done
echo "$n is a prime number"
}
prime
echo $n
palindrome() {
s=0
rev=""
temp=$n
while [ $n -gt 0 ]
do
	s=$(($n%10))
	n=$(($n/10))
	rev=$( echo ${rev}${s} )
done
if [ $temp -eq $rev ]
then
	echo "Number is palindrom"
else
	echo "Number is not palindrome"
fi
}
palindrome
echo $n

if [ $(prime) -eq $(palindrome) ]
then
	echo "the number is prime and palindrome"
else
	echo "the number is not prime and palindrome"
fi
