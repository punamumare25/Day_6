#!/bin/bash -x

BET_RUPEES=10
GOAL=200
MIN_RUPEES=0

numbOfBets=0
currentRupees=100
wins=0
lost=0

while [ $currentRupees -lt $GOAL ] && [ $currentRupees -gt $MIN_RUPEES ]
do
	gamble=$((RANDOM%2))
	numbOfBets=$((numbOfBets+1))
	if [[ $gamble -eq 1 ]]
	then
		currentRupees=$(($currentRupees+$BET_RUPEES))
		wins=$((wins+1))
	else
		currentRupees=$(($currentRupees-$BET_RUPEES))
		lost=$((lost+1))
	fi
done

echo "numbOfBets :" $numbOfBets
echo "Number of wins :" $wins 
echo "number of losts :" $lost

if [[ $currentRupees -eq 0 ]]
then
	echo "!!No more money to gamble!! currentBalance :"$currentRupees

elif [[ $currentRupees -eq $GOAL ]]
then
	echo "Hurryy !!You won and reached your goal. CurrentBalance :"$currentRupees
fi
