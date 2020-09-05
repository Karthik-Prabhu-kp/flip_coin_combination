#!/bin/bash -x

isheads=0
istails=1

Head=0
Tail=0
double=2

read -p "range" range


function flip(){
	flipcheck=$(( RANDOM%2 ))
	echo "$flipcheck"

}


declare -A singlet
declare -A doublet

for (( j=0; j<=range ; j++ ))
do
	for (( i=1 ; i<=double ; i++ ))
	do
		toss=$(flip $flipcheck)

		if [ $toss -eq 0 ]
		then
			((Head++))
			singlet[$i]=H
			coin+=H
			echo "heads win"
		else
			((Tail++))
			singlet[$i]=T
			coin+=T
			echo "tails win"
		fi
	done
		((doublet[$coin]++))
		coin=""
done

echo ${singlet[@]}
echo ${doublet[@]}
Headpercentage=$(( $Head/$range*100 ))
Tailpercentage=$(( $Tail/$range*100 ))
