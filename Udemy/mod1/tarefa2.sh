#!/usr/bin/env bash

echo "$0"

for((i=0;i<11;i++)); do
    GUARDAn=$(( $i % 2 ))
    if [ $GUARDAn -eq 0 ]; then
        echo "$i é divisivel por 2!"    
    fi   
done

echo "------------------------"

for((i=0;i<11;i++)); do
    [ $(( $i % 2 )) -eq 0 ] && echo "$i é divisivel por 2!"
done