# !/bin/bash

for each in 1 2 3
do
    system_number=$RANDOM

    read -p "This is your chance no $each , Guess My Number : " number

    if [ $number -eq $system_number ]
    then
        echo "Your Guess is currect"
    else
        echo "Your Guess is wrong"
        if [ $number -ge $system_number ]
        then 
            echo "Please Select some lower value than $number"
        else 
            echo "Please Select some heigher value than $number"
        fi
    fi
done
echo "your are fail"