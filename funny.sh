#!/bin/sh
### To print out the script of this is funny or not
if [ $# -eq 0 ]; then
  echo "This is NOT funny";
elif [ $# -eq 1 ]; then
  echo "This is funny"
fi

# The first step is to get the number of arguments via "$#"

# If "$#" is equal to 0 then it prints This is NOT funny

# If "$#" is larger than 0 then it prints This is NOT funny