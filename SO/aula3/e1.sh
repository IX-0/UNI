#!/bin/bash

{
    i=0
    while read -r line; do
        echo $i: $line
        i=$(($i+1))
    done
} < $1
