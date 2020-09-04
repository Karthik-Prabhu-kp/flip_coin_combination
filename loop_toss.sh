#!/bin/bash -x

isheads=0
istails=1

Head=0
Tail=0

read -p "range" range


function flip(){
	flipcheck=$(( RANDOM%2 ))
	echo "$flipcheck"

}


declare -A singlet
for (( i=0 ; i<=range ; i++ ))
do
	toss=$(flip $flipcheck)

	if [ $toss -eq 0 ]
	then
		((Head++))
		singlet[$i]=H
		echo "heads win"
	else
		((Tail++))
		singlet[$i]=T
		echo "tails win"
	fi
done
 
echo ${singlet[@]}
Headpercentage=$(( $Head/$range*100 ))
Tailpercentage=$(( $Tail/$range*100 ))
