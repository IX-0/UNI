#!/bin/bash

PS3="Bruh"

select arg in $@; do
    echo "You picked $arg ($REPLY)."
done
