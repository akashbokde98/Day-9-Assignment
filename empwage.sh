#!/bin/bash -x

checkAttnd=$(( RANDOM % 3 ))
fullDay=2
halfDay=1
absDay=0
wagePerHr=20

case $checkAttnd in
	$fullDay)
		empHrs=8
		dailyEmpWage=$(( $empHrs*$wagePerHr ));;

	$halfDay)
		empHrs=4
		dailyEmpWage=$(( $empHrs*$wagePerHr ));;
	*)
	empHrs=0
	dailyEmpWage=$(( $empHrs*$wagePerHr ));;

esac
