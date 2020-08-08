#!/bin/bash -x

countHeads=0
countTails=0

while( true )
do
	flip=$((RANDOM%2))
	if [[ $flip -eq 0 ]]
	then
		echo "Heads"
		countHeads=$((countHeads+1))
	else
		echo "Tails"
		countTails=$((countTails+1))
	fi
	
	if [[ $countHeads -eq 11 ]]
	then
		echo "Heads 11 times "
		break

	elif [[ $countTails -eq 11 ]]
	then
		echo "Tails 11 times "
		break
	fi

done
