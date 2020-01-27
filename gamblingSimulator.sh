#! /bin/bash

STAKE=100;
BET=1;
cash=$STAKE;
calculativeAmount=$((($STAKE*50)/100));

echo "Welcome to Gambler game";
function bet()
{
if [[ $((RANDOM%2)) -eq 1 ]]
then
	cash=$((cash+$BET))
else
	cash=$((cash-$BET))
fi
}

while [[ $cash -lt $(($STAKE+$calculativeAmount)) && $cash -gt $(($STAKE-$calculativeAmount)) ]]
do
	bet
done
   echo "Cash for the day: "$cash
