#!/bin/sh

# Q1 write a script called older.sh that returns the oldest file
### Testing env
# touch -t 202103081800 foo
# touch -t 202103081801 goo
# touch -t 202103081802 hoo

### Running code
ls -tr | head -n 1
## The first of code 'ls -tr' is to get the files list of current location and the list is sorted by time.
## The second of code 'head -n 1' is to get the first file in the list generated from previous code.