#!/usr/bin/env bash

printf "The number of users logged in right now are: \n$(who)"
printf "\n\n%s\n" "Total users: $(users | wc -l)"
