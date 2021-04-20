#!/bin/bash

starttime="$2"
step="$3"

<<<<<<< HEAD
numlines=$( wc -l < $1 )
count=0

while read -r line;
do
    timed=$( date -d "+ $step seconds $starttime" +"%Y/%m/%d %H:%M:%S" )
    echo "$timed     $line" 1>> output.txt
    starttime=$timed
    count=$((count+1))
    echo "Writing line $count/$numlines"
done <$1
=======
while read -r line;
do
    timed=$( date -d "+ $step seconds $starttime" +"%Y/%m/%d %H:%M:%S" ) 2>&1
    echo "$timed     $line" >> output.txt
    starttime=$timed
done < $1
>>>>>>> 72222bbfad050fe4593d0442fe0a87d5043da2b0
