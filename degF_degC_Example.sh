#!/bin/bash -x

function myFuncOne()
{
	local temp_Degree_C=$1
	if [[ $temp_Degree_C -ge 0 && $temp_Degree_C -le 100 ]]
	then
		degF=$(echo "scale=2;$temp_Degree_C*(9/5)+32" | bc )
		echo "degCelcius to degFharanhite :" $temp_Degree_C "->" $degF
	else
		echo "!!!Invalid Entry!!!"
	fi
}

function myFuncTwo()
{
	local temp_Degree_F=$1
	if [[ $temp_Degree_F -ge 32 && $temp_Degree_F -le 212 ]]
	then
		degC=$(echo "scale=2;($temp_Degree_F-32)*(5/9)" | bc )
		echo "degFharanhite to degCelcius :" $temp_Degree_F "->" $degC
	else
		echo "!!!Invalid Entry !!!"
	fi
}

echo "Press 1 : degCelcius to degFharanhite."
echo "Press 2 : degFharanhite to degCelcius."
read  temp

case $temp in
	1)
		read -p "Enter degCelcius :" degree
		myFuncOne $degree
		;;
	2)
		read -p "Enter degFharanhite :" degree 
		myFuncTwo $degree
		;;
	*)
 		echo "!!Envalid Entry.!!"
		;;
esac
