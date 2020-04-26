#!/bin/bash

###########################################
# Author: Theophile leroy <pro@tleroy.me>
# Version: v1.0.0
# Date: 2020-04-26 
# Description: Get input in bash
# Usage: ./input.sh
###########################################

echo "Welcome to my form."

read -p "Which country do you leave in? " user_country
read -p "Which city do you leave in? " user_city

echo "Display information:"
printf "Country: ${user_country}\nCity ${user_city}\n"

