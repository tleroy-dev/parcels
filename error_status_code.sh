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

# Return code checking vs Functional testing

mkdir /tmp/temp_dir 2>/dev/null
mkdir_ret=$?

test -d /tmp/temp_dir
test_ret=$?

# On first run, both will return 0 (succeed). After first run, mkdir will
# return an error becasue folder already exist, while test will return 0.
#
# In some case we will require to use functional testing isntead of simple
# return code checking.

printf "mkdir resulted in ${mkdir_ret}, test resulted in ${test_ret}\n"

