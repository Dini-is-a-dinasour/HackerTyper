#!/bin/bash
echo -e "choose two options: \n 1) updating computer \n 2) RECOVE glitch \n input a number."
read cios
case $cios in 
	1)
      echo ""
      stty -echo
      trap 'stty echo; echo' EXIT

      fake=$(cat ACode.txt)
      count=0
    ;;

    2)
      echo ""
      stty -echo
      trap 'stty echo; echo' EXIT

      fake=$(cat AText.txt)
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

while true;
do
	printf "%s" "${fake:$count:$Num}"
	((count+=$Num))

	if (( count >= ${#fake} )); then
		count=0
	fi
  sleep 0.1
done