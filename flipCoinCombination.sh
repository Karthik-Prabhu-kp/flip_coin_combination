#!/bin/bash -x

isheads=0
istails=1

toss=$(( RANDOM%3 ))

if [ $toss -eq 0 ]
then
	echo "heads win"
else
	echo "tails win"
fi
