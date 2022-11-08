#!/usr/bin/env bash

menu() {
    printf "[a] addition\n"
    printf "[s] subtraction\n"
    printf "[m] multiplication\n"
    printf "[d] division\n"
    printf "[q] quit\n"
}

calc() {
    echo "$2 $1 $3" > sum
    bc sum
}

num1=$1
num2=$2

[ -z $1 ] && printf "Usage: $0 num1 num2\n" && exit 1

menu

printf "%s" ": " && read -r ch

case $ch in
    a)
        calc "+" $num1 $num2
        ;;
    s)
        calc "-" $num1 $num2
        ;;
    m)
        calc "*" $num1 $num2
        ;;
    d)
        calc "/" $num1 $num2
        ;;
    *)
        exit 0
        ;;
esac
