#!/bin/bash

###########################################
# Author: Theophile leroy <pro@tleroy.me>
# Version: v1.0.0
# Date: 2020-04-26 
# Description: Get input in bash, check is empty
# Usage: ./input.sh country city
###########################################

echo "Welcome to my form."

user_country=$1
user_city=$2

# Check for empty args
if test -z ${user_country}; then
	read -p "Which country do you leave in? " user_country;
fi

if test -z ${user_city}; then
	read -p "Which city do you leave in? " user_city;
fi

# Do
echo "Display information:"
printf "Country: ${user_country}\nCity :${user_city}\n"

