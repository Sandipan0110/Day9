#! /bin/bash -x

echo "Welcome Message"

isPartTime=1;
isFullTime=2;
maxHrsInMonth=100;
empRatePerHrs=20;
numWorkingDays=20;

totalWorkingHours=0;
totalWorkingDays=0;

function getWorkingHours() {
        case $1 in
                $isFullTime)
                        workHours=8
                        ;;
                $isPartTime)
                        workHours=4
                        ;;
                *)
                        workHours=0
                        ;;
        esac
}
while [[ $totalWOrkingHours -lt $maxHrsInMonth &&
        $totalWorkingHours -lt $numWorkingDays ]]
do
        ((totalWorkingDays++))
        getWorkingHours $((RANDOM%3))
        totalWorkingHours=$(($totalWorkingHours+$workHours));
done

totalsalary=$(($totalWorkingHours*$empRatePerHrs));
