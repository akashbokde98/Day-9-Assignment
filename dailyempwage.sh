#!/bin/bash -x

checkAttnd=$(( RANDOM % 2 ))
preDay=1
absDay=0
wagePerHr=20

if [ $checkAttnd -eq $preDay ]
then
	fullDayHr=8
else
        echo "Employee is Absent: $absDay"
fi

dailyEmpWage=$(( $fullDayHr*$wagePerHr ))
