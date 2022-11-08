#!/usr/bin/env bash

printf "%s" "Enter a number: " && read -r num
printf "%s" "Enter a power: " && read -r pow
power_of_num=1

x=`awk -v pow=$power -v pow_num=$power_of_num -v n=$num 'BEGIN { for (i=1; i <= pow; i++) pow_num=(pow_num * n) }'`
printf "%s\n" "$num ^ $pow = $x"
