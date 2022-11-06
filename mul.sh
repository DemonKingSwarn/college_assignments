#!/usr/bin/env bash

printf "%s" "Enter a number: " && read -r num

printf "%s\n" "Multiplication table of $num:"

i=1

while [[ "$i" -le 10 ]]; do
    printf "%s\n" "$num x $i = $(( $num * $i ))"
    (( i ++ ))
done
