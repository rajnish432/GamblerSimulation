#! /bin/bash

STAKE=100;
BET=1;
cash=$STAKE;
calculativeAmount=$((($STAKE*50)/100));
MONTH_DAYS=20;
declare -A days
totalAmount=0

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

for (( i=1; i<=20; i++ ))
do
	cash=$STAKE
	dailyAmount=0;
	while [[ $cash -lt $(($STAKE+$calculativeAmount)) && $cash -gt $(($STAKE-$calculativeAmount)) ]]
	do
		bet
	done
		dailyAmount=$(( $cash-$STAKE ))
		days[day$i]=$dailyAmount;
		totalAmount=$((totalAmount+${days[day$i]}));
	echo day$i":"${days[day$i]}
done
echo "Total Amount Won/Loose after 20 days: "$totalAmount


