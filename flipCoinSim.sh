#! /bin/bash -x
function flipCoin() {
	echo $(( RANDOM%2 ))
}
isHeads=1
coinToss="$( flipCoin )"
if [ $coinToss -eq $isHeads ]
then
	echo "Heads Won"
else
	echo "Tails Won"
fi
