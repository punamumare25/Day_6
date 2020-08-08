#!/bin/bash -x

function isPalindrome()
{
	local realNumber=$1
	tempNumber=$realNumber
	revNumber=0
	
	while [[ $tempNumber -gt 0 ]]
	do
		reminder=$((tempNumber%10))
		revNumber=$((revNumber*10+reminder))
		tempNumber=$((tempNumber/10))
	done

	if [[ $realNumber -eq $revNumber ]]
	then
   	echo "$num1 is Palindrome."
	else
   	echo "$num1 is not Palindrome."
	fi

}


read -p "Enter a number: " num1
isPalindrome $num1

read -p "Enter another number: " num2
isPalindrome $num2
