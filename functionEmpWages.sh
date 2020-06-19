#!/bin/bash -x

IS_PART_TIME=1;
IS_FULL_TIME=2;
MAX_HRS_IN_MONTH=100;
EMP_RATE_PER_HR=20;
NUM_WORKING_DAYS=20;

totalWorkingDays=0;
totalWorkingHours=0;

function getWorkingHours(){
	case $1 in
		$IS_FULL_TIME)
			workHours=8;
			;;
		$IS_PART_TIME)
			workHours=4;
			;;
		*)
			workHours=0;
			;;
	esac
}

while [[ $totalWorkingHours -lt $MAX_HRS_IN_MONTH && $totalWorkingDays -lt $NUM_WORKING_DAYS ]]
do
	totalWorkingDays=$((totalWorkingDays + 1))
	getWorkingHours $((RANDOM%3))
	totalWorkingHours=$((totalWorkingHours + workHours));
done

totalSalary=$(($totalWorkingHours*$EMP_RATE_PER_HR));
