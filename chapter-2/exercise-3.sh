#!/bin/bash

echo "Starting program at $(date)"

echo "Running program $0 with pid $$"

rm -f ./stdout.txt
rm -f ./stderr.txt

touch ./stdout.txt
touch ./stderr.txt

count=0
# shellcheck disable=SC2181
while [[ $? -eq 0 ]];
do
	count=$((count+1))
    ./error_generation.sh >>~/stdout.txt 2>>~/stderr.txt
done
echo "It ran $count times"
cat stdout.txt
cat stderr.txt
