#!/bin/bash

echo "Loading system ..."
sleep 4
echo "clearing"
sleep 2

clear 

echo "HACKERTYPER \n please input username:"

read Username
sleep 1

echo "Hello $Username \n please now type out your password"
 sed -i "s/^Username:.*/Username: $Username/" Logininfo.txt

 sleep 1
 echo "username saved!"
 sleep 1
echo "Please input your Password:"

 stty -echo 
 #turns off terminal echoing

 read Password
 sed -i "s/^Password:.*/Password: $Password/" Logininfo.txt

 stty echo 
 #turns it back on

 echo ""
 #4 new line

echo "nice! /n this will definitely not come to harrass you later :)"
sleep 2
clear

echo "ANNNNNYWAYS"
echo ""