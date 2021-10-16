# !/bin/bash

system_number=$RANDOM
no_chances=1
for (( ; ; ))
 do

    read -p "This is your chance no $no_chances , Guess My Number : " number

    if [ $number -eq $system_number ]; then
        echo "Your Guess is currect"
        break
    else
        echo "Your Guess is wrong"
        if [ $number -ge $system_number ]; then
            echo "Please Select some lower value than $number"
        else
            echo "Please Select some heigher value than $number"
        fi
    fi
    no_chances=$((no_chances + 1))
done
echo "your are fail"
