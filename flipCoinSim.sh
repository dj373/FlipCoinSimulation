#! /bin/bash -x
function flipCoin() {
	echo $(( RANDOM%2 ))
}
isHeads=1
tailsWon=0
headsWon=0
for (( ctr=1; ctr<=10; ctr++ ))
do
	coinToss="$( flipCoin )"
	if [ $coinToss -eq $isHeads ]
	then
		(( headsWon++ ))
	else
		(( tailsWon++ ))
	fi
done
echo "Tails won "$tailsWon" number of times"
echo "Heads won "$headsWon" number of times"
