#!/usr/bin/env bash

printf "Enter numerator 1: " && read -r num1
printf "Enter denominator 1: " && read -r denom1
printf "Enter numerator 2: " && read -r num2
printf "Enter denominator 2: " && read -r denom2

if [[ $denom2 -gt $denom1 ]]; then
    temp=$num2
    num2=$num1
    num1=$temp
    temp=$denom2
    denom2=$denom1
    denom1=$temp
fi

divis=$denom2
divid=$denom1

hcf=$denom1

while [[ $divis -gt 0 ]]; do
    new_divid=$divis
    divis=$(( $divid % $divis ))
    divid=$new_divid
    [[ $divis == 0 ]] && hcf=$divid
done

lcd=$(( ( $denom1 * $denom2 ) / $hcf ))

printf "%s\n" "LCD of $num1/$denom1 and $num2/$denom2 is $lcd"
