#Simple Ping script to validate network health. 
#Simply add all your hosts you want to ping with their  Name and IP  ~SV

##################################################################
#  ____  _                 _            ____  _             
# / ___|(_)_ __ ___  _ __ | | ___      |  _ \(_)_ __   __ _ 
# \___ \| | '_ ` _ \| '_ \| |/ _ \_____| |_) | | '_ \ / _` |
#  ___) | | | | | | | |_) | |  __|_____|  __/| | | | | (_| |
# |____/|_|_| |_| |_| .__/|_|\___|     |_|   |_|_| |_|\__, |
#                  |_|                               |___/ 
#################################################################
#!/bin/bash

# you will need dialog package to run the following apt install dialog
# IP addresses to test
addresses=(
    "NewYork1:172.36.128.1"
    "NewYorkClient1:172.36.128.2"
    "NewYork2:172.46.128.1"
    "NewYorkClient2:172.46.128.2"
    "AtlantaLan1:192.168.90.1"
    "DenverLan1:192.168.92.1"
    "DenverLan2:192.168.93.1"
    "DenverLan3:192.168.91.1"
    "DenverClient1:192.168.92.2"
    "DenverClient2:192.168.93.2"
    "DenverClient3:192.168.91.2"
    "SanFranClient1:172.56.128.2"
    "SanFranLan1:172.56.128.1"
    "SanFranClient2:172.66.128.2"
    "SanFranLan2:172.66.128.1"
    "PhoenixLan1:192.168.94.1"
    "PhoenixClient1:192.168.94.2"
    "PhoenixClient2:192.168.95.3"
    "PhoenixLan2:192.168.95.1"
    "MinneapolisLan2:192.168.98.1"
    "MinneapolisLan1:192.168.97.1"
    "MinneapolisClien2:192.168.98.2"
    "MinneapolisClien1:192.168.97.2"
    "InternetTest:8.8.8.8"
)

# Function to perform ping test and return result
perform_ping() {
    destination_name=$1
    destination_ip=$2
    if ping -c 1 -W 2 $destination_ip > /dev/null 2>&1; then
        echo -e "Success \033[32m✔\033[0m $destination_name: $destination_ip"
    else
        echo -e "Failure \033[31m✘\033[0m $destination_name: $destination_ip"
    fi
}

# Display results
for address in "${addresses[@]}"; do
    address_parts=(${address//:/ })
    destination_name=${address_parts[0]}
    destination_ip=${address_parts[1]}
    perform_ping "$destination_name" "$destination_ip"
done

# Prompt user to press Enter to return to CLI
#read -p "Press Enter to continue..."
