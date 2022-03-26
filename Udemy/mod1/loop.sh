#!/usr/bin/env bash

echo "$0"

for(( i = 0; i < 10; i++)); do
    echo "$i"
done


echo "-------------------------------"

echo "$(seq 0 9)
-----------------------------------"

for i in $(seq 10); do
    echo "${i}"
done


