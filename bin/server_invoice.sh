#!/bin/bash

Server_name=$(uname -n)
Ip_address=$(ifconfig | grep inet | awk 'NR==1{print $2}')
Os_type=$(uname)
Up_time=$(uptime | awk '{print $3}')

# Creating header in csv file

echo "S_No, Server_Name, Ip_Address, Os_Type, Uptime" >server_info.csv
echo "1, $Server_name, $Ip_address, $Os_type, $Up_time" >>server_info.csv
