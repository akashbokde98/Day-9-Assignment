#!/bin/bash -x

checkAttnd=$(( RANDOM % 3 ))
fullDay=2
halfDay=1
absDay=0
wagePerHr=20

if [ $checkAttnd -eq $fullDay ]
then
        fullTimeHr=8
	dailyEmpWage=$(( $fullTimeHr*$wagePerHr ))

elif [ $checkAttnd -eq $halfDay ]
then
	partTimeHr=4
	dailyEmpWage=$(( $partTimeHr*$wagePerHr ))

else
        echo "Employee is Absent: $absDay"
fi

