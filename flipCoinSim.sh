#! /bin/bash -x
function flipCoin() {
	echo $(( RANDOM%2 ))
}
isHeads=1
tailWin=0
headWin=0
while [ $headWin -le 21 ] && [ $tailWin -le 21 ]
do
	if [ $headWin -eq 21 ] && [ $tailWin -eq 21 ]
	then
		while [ $(( $headWin-$tailWin )) -lt 2 ] && [ $(( $tailWin-$headWin )) -lt 2 ]
		do
			coinToss="$( flipCoin )"
		        if [ $coinToss -eq $isHeads ]
        		then
                		(( headWin++ ))
        		else
                		(( tailWin++ ))
        		fi

		done
		break
	fi
        coinToss="$( flipCoin )"
        if [ $coinToss -eq $isHeads ]
        then
                (( headWin++ ))
        else
                (( tailWin++ ))
        fi
done
if [ $headWin -gt $tailWin ]
then
	echo "Head won by "$(( $headWin-$tailWin ))
else
	echo "Tail won by "$(( $tailWin-$headWin ))
fi

