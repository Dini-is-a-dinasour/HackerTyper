#!/bin/bash

echo "Loading system ..."
sleep 4
clear

echo -e "welcome to HackerTyper \n This game is a recreation from the website hackertyper.net in a vm!"
sleep 1
echo ""
echo "If youd like the explanation of this press 1, else press 2 (then hit enter)"
read input 

case $input in 
   1)
   	echo "hackertyper.net is a game for users to pretend to hack. Its a game that has been in the internet since 2011"
   	sleep 1
   	echo ""
   	echo "This script aims to recreate the feeling and simplicity that the game has"
   	echo "thats all there is! :)"
   	sleep 2
   	echo "once typing in your username, when it says start typing, just type"
   	echo "without regard of anything, and it will automatically give you the words!"
   	sleep 4

   	;;

   2)
   	echo "alr bet"
   	;;

   *)
   	echo "Unfortunatly you have chosen an answer that wasnt part of the options, it will automatically continue"
   	;;
esac

echo "clearing"
sleep 3
clear 

echo -e "HACKERTYPER \n please input username:"

read Username
sleep 1
 sed -i "s/^Username:.*/Username: $Username/" Logininfo.txt

 sleep 1
 echo "username saved!"

 sleep 2
echo "Please input your Password:"

 stty -echo 
 #turns off terminal echoing

 read Password
 sed -i "s/^Password:.*/Password: $Password/" Logininfo.txt

 stty echo 
 #turns it back on

 echo ""
 #4 new line

echo -e "nice! \n this will definitely not come to harrass you later :)"
sleep 2
clear

echo "ANNNNNYWAYS"
sleep 1
echo "starting boot up..."
sleep 2
clear

source Game.sh 
exit 0

