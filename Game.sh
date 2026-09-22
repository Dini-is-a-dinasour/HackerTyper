#!/bin/bash

echo "start typing:"
stty -echo
trap 'stty echo; echo' EXIT

fake=$(cat Code.txt)
count=0

while IFS= read -r -n 1 key 
do
	printf "%s" "${fake:$count:5}"
	((count+=5))

	if (( count >= ${#fake} )); then
		count=0
	fi
done