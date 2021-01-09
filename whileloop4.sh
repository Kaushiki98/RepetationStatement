#!/bin/bash -x
echo "Enter number of trials: "
read trials
stake=100
goal=200
bets=0
wins=0

for ((i=0; i<$trials; i++))
do
        cash=$stake
        while [[ "$cash" -gt "0" && "$cash" -lt "$goal" ]]
        do
                bets=$(($bets+1))

                if [ $(($RANDOM%2)) -lt 1 ]
                then
                        cash=$(($cash+1))
                        echo "cash incresed: "$cash
                else
                        cash=$(($cash-1))
                        echo "cash reduced: "$cash
                fi
        if [ "$cash" -eq "$goal" ]
        then
                win=$(($wins+1))
                echo "win count: " $win
        fi
        done
done
