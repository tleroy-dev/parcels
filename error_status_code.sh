#!/bin/bash

###########################################
# Author: Theophile leroy <pro@tleroy.me>
# Version: v1.0.0
# Date: 2020-04-26
# Description: Error & status code handling
# Usage: ./error_status_code.sh
###########################################

# Run cmd that should always SUCCEED
ls > /dev/null
ls_ret=$?

# Run cmd that should always FAIL
mkdir /home/ 2>/dev/null
mkdir_ret=$?

printf "'ls' returned ${ls_ret}, while 'mkdir /home/' retruned ${mkdir_ret}\n"
