#!/bin/bash

starttime="$2"
step="$3"

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
