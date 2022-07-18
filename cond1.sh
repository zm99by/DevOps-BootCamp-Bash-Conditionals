#!/bin/bash
#set -x

IFS=',' read -r -a array <<< "$1"

if [[ -z "$1" ]]; then

echo "0" 

else 
for i in "${array[@]}"
do
    
    if [[ $(($i%2)) == 0 ]]; then
        
        (( SUM += $i ))

    fi
    
done

echo $SUM   

fi 