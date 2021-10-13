#!/bin/bash

# echo > output command
# read > input command

# systemctl status nginx | awk  'NR==3 {print $2}'
# systemctl status nginx | awk  'NR==3'

# status=$(systemctl status nginx | awk  'NR==3')

read -p "Enter your web server name: " web_server

# echo "$web_server"

nginx_status=$(systemctl status $web_server | awk  'NR==3 {print $2}')

# echo "$status"

echo "The current status of $web_server is: $nginx_status"