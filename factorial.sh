#!/usr/bin/env bash

printf "%s" "Enter a number: " && read -r num

fact=1

while [[ $num -gt 1 ]]; do
    fact=$(( $fact * $num ))
    num=$(( $num - 1 ))
done

printf "%s\n" "$fact"
