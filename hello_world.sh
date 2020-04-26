#!/bin/bash

###########################################
# Author: Theophile leroy <pro@tleroy.me>
# Version: v1.0.0
# Date: 2020-04-26
# Description: Sandbox for bash learning
# Usage: ./hello_world.sh user_name age
###########################################



########## VARIABLES ##########
# No space /!\
text="Hello world"
i=4
FIRST_NAME="theophile"
LAST_NAME="leroy"
age=25
 
#Print text to terminal
echo "Hello ${FIRST_NAME} ${LAST_NAME} !" 
#Print result of i(=4) + 4
echo "In ten yearts you will $(( ${age} + 10 )) years old"

########## INPUTS (ARG)  ##########
user_name=$1	#user_name is a parameter, $1 the passed argument
user_age=$2
#...

echo "Hello there ${user_name}! You are ${user_age} years old."


