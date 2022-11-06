#!/usr/bin/env bash

printf "%s" "Enter the file names you want to compare (ex: file1 file2): "
read -r file1 file2
uwu=$(find $HOME -iname "$file1" | head -n 1)
owo=$(find $HOME -iname "$file2" | head -n 1)
compare=$(diff $uwu $owo)
if [[ -z "$compare" ]]; then
    printf "%s\n" "Duplicate file found!"
    printf "%s" "Do you want to remove it (y/N): " && read -r reply
    if [[ "$reply" == "y" ]] || [[ "$reply" == "Y" ]]; then
        rm $file2
        printf "%s\n" "Duplicate file removed!"
    else
        printf "%s\n" "User chose not to delete the duplicate!"
    fi
else
    printf "%s\n" "The files arent same!"
fi
