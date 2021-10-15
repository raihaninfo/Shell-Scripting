#!/bin/bash

# The select loop provides an easy way to create a numbered menu from which users can select options.
# It is useful when you need to ask the user to choose one or more items from a list of choices.

select opt in Addition Subtraction Multiplication Division Exit

do
    case $opt in
    Addition)
        read -p "Enter number 1 : " num1
        read -p "Enter number 2 : " num2
        echo "The additon of $num1 and $num2 is : $((num1 + num2))"
        ;;
    Subtraction)
        read -p "Enter number 1 : " num1
        read -p "Enter number 2 : " num2
        echo "The Subtraction of $num1 and $num2 is : $((num1 - num2))"
        ;;
    Multiplication)
        echo "You selected Multiplcation"
        ;;
    Division)
        echo "You selected division"
        ;;
    Exit)
        exit 0
        ;;
    *)
        echo "invalid option"
        ;;
    esac
done
