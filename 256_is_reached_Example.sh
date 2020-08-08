#!/bin/bash -x

read -p "Enter a number : " num

least=1
power=2
last=256

while [ $least -le $num ]
do
	if [[ $power -le $last ]]
	then
		echo $power
		power=$((2**least))
	fi
	least=$((least+1))
done
