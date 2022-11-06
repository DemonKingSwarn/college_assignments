#!/usr/bin/env bash

printf "%s" "Enter a number: " && read -r num

i=2
flag=0

while test $i -le $(( $num / 2 )); do
    if test $(( $num % $i )) -eq 0; then
        flag=1
    fi
    i=$(( $i + 1 ))
done

if test $flag -eq 1; then
    printf "%s\n" "The number is not prime"
else
    printf "%s\n" "The number is prime"
fi
