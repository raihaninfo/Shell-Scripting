#!/bin/bash

#####################################
# Author: RAIHAN
# Version: v1.0.0
# Date: 2018-09-30
# Description: Use the if-then-exit construct.
# Usage: ./if-then-exit.sh
#####################################

<<multilinecomment
FILE=/tmp/random_file.txt
# Check if the file exists.
if [[ ! -f ${FILE} ]]; then
echo "File does not exist, stopping the script!"
exit 1
fi
# Print the file content.
cat ${FILE}
multilinecomment

# Create a new top-level directory.
mkdir /temporary_dir
DIR=$?


# Test if the directory was created successfully.
if [[ ${DIR} -ne 0 ]]; then
echo "mkdir did not successfully complete, stop script execution!"
exit 1
fi
# Create a new file in our temporary directory.
touch tempfile.txt
