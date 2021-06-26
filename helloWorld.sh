#!/bin/bash -x

echo "Welcome Message"

isPartTime=1;
isFullTime=2;
totalSalary=0;
empRatePerHr=20;
WorkingDays=20;
maxHrsInMonth=100;
totalEmpHrs=0;
totalWorkingDays=0;

while [[ $totalEmpHrs -lt $maxHrsInMonth &&
         $totalWorkingDays -lt $WorkingDays ]]
do
        ((totalWorkingDays++))
        empCheck=$((RANDOM%3));
        case $empCheck in
                $isFullTime)
                       empHrs=8
                       ;;
                $isPartTime)
                       empHrs=8
                       ;;
                *)
                       empHrs=0
                       ;;
         esac
         totalEmpHrs=$(($totalEmpHrs+$empHrs));

done

totalMonthlySalary=$(($totalEmpHrs*$empRatePerHr));
