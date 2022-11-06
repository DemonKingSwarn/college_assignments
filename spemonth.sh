#!/usr/bin/env bash

printf "%s" "Enter the month to display calendar (ex: April): " && read -r month
cal $month
