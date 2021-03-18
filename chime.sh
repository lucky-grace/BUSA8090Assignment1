#!/bin/bash

# Write a shell script that
# • no chime if the time lies between 0 minute and 20 minutes past the hour
# • one chime if the time lies between 20 minutes and 40 minutes past the hour
# • two chimes if the time lies between 40 minutes and 60 minutes past the hour,
# between the two chimes, sleep 1 second.

# The first step is to get the minutes of current time
minutes=$(date +"%M")

# The second step is to judge how many chimes are there.
if [ "$minutes" -ge 0 ] && [ "$minutes" -lt 20 ] 
    then
    true
    # If the minutes are less than 20 minutes, we do not need to do anything.
elif [ "$minutes" -ge 20 ] && [ "$minutes" -lt 40 ] 
    then
    # If the minutes are larger than 20 minutes and less than 40 minutes, 
    # we have one chime.
    echo -e "\a"
elif [ "$minutes" -ge 40 ] && [ "$minutes" -lt 60 ] 
    then
    # If the minutes are larger than 40 minutes and less than 60 minutes, 
    # we have two chimes and it sleeps one second in the middle.
    echo -e "\a"
    sleep 1
    echo -e "\a"
fi