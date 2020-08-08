#!/bin/bash -x

function isPrime()
{
	local number=$1
	for (( i=2; i<=$number/2; i++ ))
	do
		if [[ $((number%i)) -eq 0 ]]
		then
			break
		fi
	done

	if [[ $i -eq $((number/2))+1 ]]
	then
		echo "$number is prime"
		isPalindrome $number
	else
		echo "$number is not prime"
	fi

}

function isPalindrome()
{
	local primeNumber=$1
	tempNumber=$primeNumber
	revNumber=0
	
	while [[ $tempNumber -gt 0 ]]
	do
		reminder=$((tempNumber%10))
		revNumber=$((revNumber*10+reminder))
		tempNumber=$((tempNumber/10))
	done

	if [[ $primeNumber -eq $revNumber ]]
	then
		echo "$primeNumber is a Prime and also Palindrome number."
	else
		echo "$primeNumber is not a Palindrome"
		isPrime $revNumber
	fi
}

read -p "Enter a number: " numb
isPrime $numb
