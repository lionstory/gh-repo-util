#!/bin/bash

PAGENUM=8
for ((i=1;i<=$PAGENUM;i++)); 
do
    echo "Get repo $repName projects list, page $i "
    curl  https://api.github.com/users/lionstory/repos?page=`$i`  |grep full_name  | awk -F/'' '{print $2}' | awk -F'"' '{print $1}'  >> repo.txt
done
