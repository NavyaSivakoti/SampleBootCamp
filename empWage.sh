#!/bin/bash -x

isPresent=1;
randomCheck=$((RANDOM%2));

if [ $isPresent -eq $randomCheck ]
then
	empRatePerHr=20;
	empHours=8;
	salary=$(($empHours*$empRatePerHr));
else
	salary=0;
fi
