#!/usr/bin/env bash

printf "%s" "Enter a number: " && read -r num

g=$num
s=0

while [[ $num -gt 0 ]]; do
    k=$(( $num % 10 ))
    num=$(( $num / 10 ))
    s=$(( $s + $k ))
done

printf "%s\n" "sum of digits of $g = $s"
