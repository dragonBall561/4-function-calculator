#!/bin/bash
echo '     ____               ____                    ________  ____       ____'
echo '    /     /|     /     /      /    /  /     /|     /     /    |     /   |'
echo '   /     / |    /     /      /    /  /     / |    /     /     |    /    /' 
echo '  /     /__|   /     /      /    /  /     /__|   /     |      /   /____/'
echo ' /     /   |  /     /      /    /  /     /   |  /      |     /   /     |'
echo '/____ /    | /____ /____  /____/  /____ /    | /       |____/   /      | '


split_ex(){
	export ex1=$1
	export ex2=$2
	export ex3=$3
}


echo This is a Four-Function Calculator
echo Insert Your Number, Followed by a '/', '*', '+', or '-', then another number
echo For example, '3 - 4' or '3 * 4'
echo Please use spaces in between the number\(s\) and the symbols
echo DISCLAIMER! Division will round DOWN to a WHOLE NUMBER!
echo DISCLAIMER II! NO DECIMALS ALLOWED
read -p 'Please Write Your Equation Here: ' to_calc
split_ex $to_calc

if [ $ex2 = 'Calc.sh' ]; then
	expr $1 \* $3
else
	expr $ex1 $ex2 $ex3
	exit 0
fi