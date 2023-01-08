#!/bin/bash -x

fullDay=2
halfDay=1
wagePerHr=20
monthDay=20
totalEmpWage=0
totalEmpHours=0
day=1

while [[ $day -le $monthDay && $totalEmpHours -le 100 ]]
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
	totalEmpHours=$(( $totalEmpHours + $empHrs ))
        dailyEmpWage=$(( $wagePerHr * $empHrs ))
        totalEmpWage=$(( $totalEmpWage + $dailyEmpWage ))
	((day++))

done
