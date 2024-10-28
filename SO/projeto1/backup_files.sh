#!/bin/bash

_c=0 #checking opt
_files=""

while getopts "cb" flag #Parse through all the options
do
    case $flag in
    c)
        echo "Checking mode"
        _c=1
    ;;
    b)
        _files=$b
        echo $_files   
    ;;
    \?)
        echo "Invalid options"
        exit 1;
    ;;
    esac
done

exit 0
