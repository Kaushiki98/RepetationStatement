#!/bin/bash -x
isPartTime=1
isFullTime=2
TotalSalary=0
empRatePerHr=20
numWorkingDays=2
for (( day=1; day<=empRatePerHr; day++))
do
	empCheck=$((RANDOM%3))
		case $empCheck in 
			$isFullTIme)
				empHrs=8
				;;
			$isPartTime)
				empHrs=4
				;;
			*)
			empHrs=0
				;;
		esac
		salary=$(($empHrs+$empRatePerHr))
		totalSalary=$(($totalSalary+$salary))
done
