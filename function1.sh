#!/bin/bash -x
echo "1.Fahrenheit to celcius:  "
echo "2.Celcius to FAhrenheit:  "
echo "Enter conversion: "
read conv
fahrtocelcius(){
	degC=$(echo "scale=2;(5/9)*($degF-32)"|bc)
	echo "$degF = $degC"
}
celciustofahr(){
	degF=$(echo "scale=2;((9/5)*$degC)+32"|bc)
	echo "$degC = $degF"
}
if [ $conv -eq 1 ]
then
	degC="$(fahrtocelcius)"
	echo $degC
elif [ $conv -eq 2 ]
then
        degF="$(celciustofahr)"
	echo $degF
else
	echo "Please select 1 or 2 only"
fi
