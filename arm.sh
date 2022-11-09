#!/usr/bin/env bash

printf "%s" "Enter a number: " && read -r num

check() {
    t=$num
    s=0
    b=0
    c=10

    while [[ $num -gt $b ]]; do
        r=$(( $num % $c ))
        i=$(( $r * $r * $r ))
        s=$(( $s + $i ))
        num=$(( $num / $c ))
    done

    #printf "%s\n" "$s"
    if [[ $s == $t ]]; then
        printf "%s\n" "Armstrong number"
    else
        printf "%s\n" "Not an armstrong number"
    fi
}

result=$(check $num)
printf "%s\n" "$result"
