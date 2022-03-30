#!/usr/bin/env bash
echo "$0"


echo "-----------------------------FOR"
for(( i = 0; i < 10; i++)); do
    echo "$i"
done

echo "-----------------------------SEQ"
echo "$(seq 0 9)"

echo "-------------------------------SEQ + FOR"
for i in $(seq 10); do
    echo "${i}"
done

echo "--------------------------ARRAY + FOR"
frutas=('laranja' 'maca' 'caju')

for i in "${frutas[@]}"; do
    echo "${i}"
done

echo "----------------------------WHILE"
i=0
while [[ $i -lt ${#frutas[@]} ]]; do
   echo ${frutas[i]}
i=$(($i+1))
   
done
