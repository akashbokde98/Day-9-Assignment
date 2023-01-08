#!/bin/bash -x

fullDay=2
halfDay=1
wagePerHr=20
monthDay=20
totalEmpWage=0
totalEmpHours=0
day=1
absDay=0
preDay=0

function employeeHours(){
        case $1 in
                $fullDay)
                        empHrs=8;;

                $halfDay)
                        empHrs=4;;

                *)
                        empHrs=0;;
        esac
        echo $empHrs
}

while [[ $day -le $monthDay && $totalEmpHours -le 100 ]]
do
        empHrsPerDay=$( employeeHours $((RANDOM%3)) )
        totalEmpHours=$(( $totalEmpHours + $empHrsPerDay ))

	if [ $empHrsPerDay -eq 0 ]
	then
		((absDay++))
	else
		((preDay++))
	fi
	empPresentDay=$preDay
	empAbsentDay=$absDay
        dailyEmpWage=$(($wagePerHr*$empHrsPerDay))
        totalEmpWage=$(($totalEmpWage+$dailyEmpWage))
        ((day++))

done
