#!/usr/bin/env bash

printf "%s" "Enter the number of months you want to show (ex: 2): "
read -r months
cal --months $months
