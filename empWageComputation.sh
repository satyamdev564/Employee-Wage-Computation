#!/bin/bash -x

#Welcome to the employee wage computation problem statement


function attendance(){

	var=$((RANDOM%2))

	if (( var  == 1 ))
	then
		echo p
	else
		echo a
	fi
}

function dailywage(){
	local result="$(attendance)"
	if [ $result == 'p' ]
	then
		wage=$((20*8))
	elif [ $result == 'a' ]
	then
		wage=0
	fi
	echo $wage
}

function PartTimeWage(){
	local result="$(attendance)"
	if [ $result == 'p' ]
	then
		wage=$((20*8))
	elif [ $result == 'a' ]
	then
		wage=0
	fi
	echo $wage
}

function SwitchCase(){
	local isFullTime=1
	local isPartTime=0
	local empRatePerHr=20
	local empCheck=$((RANDOM%3))
	case $empCheck in
				$isFullTime)
						empHrs=8
						;;
				$isPartTime)
						empHrs=4
						;;
				*)
						empHrs=0
						;;
	esac

	salary=$(( empHrs*empRatePerHr ))
	echo $salary
}

function WagesForMonth(){
	local totalSalary=0
	local isFullTime=1
	local isPartTime=0
	local empRatePerHr=20
	local empCheck=$((RANDOM%3))
	for (( counter=1; counter<=20; counter++ ))
	do
	case $empCheck in
				$isFullTime)
						empHrs=8
						;;
				$isPartTime)
						empHrs=4
						;;
				*)
						empHrs=0
						;;
	esac

	salary=$(( empHrs*empRatePerHr ))
	totalSalary=$(( $salary+$totalSalary ))
	done
	echo $totalSalary
}

result="$(WagesForMonth)"
echo $result
