#!/bin/bash

#####################################
# Author: RAihan
# Version: v1.0.0
# Date: 21/10/2021
# Description: Our first script using variables!
# Usage: ./hello-world-variable.sh
#####################################

# input syntax => ./userinput.sh <input>
name=${1}
id=${2}

echo "Hello $name your id $id"

read -p "What day is it? " day_of_week

echo ${day_of_week}
