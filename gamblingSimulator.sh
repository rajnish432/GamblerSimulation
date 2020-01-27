# !bin/bash

STAKE=100;
BET=1;
cash=$STAKE;

echo "Welcome to Gambler game";
if [[ $((RANDOM%2)) -eq 1 ]]
then
	echo "You won";
	((cash++))
else
	echo "You Loose";
	((cash--))
fi


