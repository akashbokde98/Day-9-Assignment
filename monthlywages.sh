#!/bin/bash -x

fullDay=2
halfDay=1
wagePerHr=20
monthDay=20
totalEmpWage=0

for (( day=1; $day<=$monthDay; day++ ))
do
	checkAttnd=$(( RANDOM % 3 ))
	case $checkAttnd in
		$fullDay)
                	empHrs=8;;

        	$halfDay)
                	empHrs=4;;

        	*)
        	empHrs=0;;
	esac
	dailyEmpWage=$(( $wagePerHr * $empHrs ))
	totalEmpWage=$(( $totalEmpWage + $dailyEmpWage ))

done

echo "totalMonthWage=$totalEmpWage"
