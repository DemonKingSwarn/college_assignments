#!/usr/bin/env bash

file1=$1
file2=$2
file3=$3

[ -z $1 ] && printf "%s\n" "Usage: $0 file1 file2 file3"

output="output.text"

echo "$(basename $0) $file1 $file2 $file3"

cat $file1 $file2 $file3 >> $output
cat $output | sort
