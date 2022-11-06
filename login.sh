#!/usr/bin/env bash

user=$(whoami)
hostname=$(cat /etc/hostname)

printf "%s" "$hostname login: " && read -r username

if [[ "$username" != "$user" ]]; then
    printf "%s\n" "Invalid username!"
else
    printf "%s\n" "Login successful!"
fi
