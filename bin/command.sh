#!/bin/bash

<<comment

x=34
echo "The value is : $x"

my_ls_value=$(ls) #my_ls_value=ls
echo "The value is : $my_ls_value"

ls > ls_out_from_shell.txt

comment

todays_date=$(date +"%Y-%m-%d")

# variable value push in other variable
log_file_name=${todays_date}.log

# Create file, file name variable value
touch $log_file_name