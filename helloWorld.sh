echo "Welcome to empWage"

isPresent=1;
isabsent=0;
randomChek=$((RANDOM%2));

if [ $isPresent -eq $randomChek ];
then
        echo "emp is present"
else
        echo "emp is absent"

fi
