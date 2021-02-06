#!/bin/bash

starttime="$2"
step="$3"



while read -r line;
do
    timed=$( date -d "+ $step seconds $starttime" +"%Y/%m/%d %H:%M:%S" )
    echo "$timed"
    echo "$timed     $line" >> output.txt
    starttime=$timed
done < "$1"
