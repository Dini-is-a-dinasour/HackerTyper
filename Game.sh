#!/bin/bash
echo -e "choose two options: \n 1) Code \n 2) important docs \n input a number."
read cios
case $cios in 
	1)
      echo "start typing:"
      stty -echo
      trap 'stty echo; echo' EXIT

      fake=$(cat Code.txt)
      count=0
    ;;

    2)
      echo "start typing:"
      stty -echo
      trap 'stty echo; echo' EXIT

      fake=$(cat Text.txt)
      count=0
    ;;

    *)
    	echo "not an option, reloading"
    	source Game.sh 
    	exit 0
    ;;
esac

echo "Choose a speed: [type a number from 1-10"
read Num
clear

echo "WorkFlow+:"

while IFS= read -r -n 1 key 
do
	printf "%s" "${fake:$count:$Num}"
	((count+=$Num))

	if (( count >= ${#fake} )); then
		count=0
	fi
done