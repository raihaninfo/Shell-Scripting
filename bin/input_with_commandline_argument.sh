#!/bin/bash

# input 1

# read -p "Enter num1 : " a

# input 2

# read -p "Enter num2 : " b

a=$1
b=$2

# addition 2 number
result=`expr "$a +$b" | bc`

# Print result
echo "The addition of $a and $b is : $result"