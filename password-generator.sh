#! /usr/bin/bash
#! /bin/bash

# Programed by Ankit

red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`


echo "${red}Programed by:" 
echo "RISHAV KUMAR ${reset}"
echo "Random Password Generator"

echo "............................................."
echo "Enter the length of password:${green}"
read passlen
echo "${reset}"
# here the password sequence is set, quantity
for p in $(seq 1 5);
do
	openssl rand -base64 48 | cut -c1-$passlen
done
