function comp() {
    #Returns 
    #0 - equal;
    #1 - less than; 
    #2 - greater than;

    if [[ $1 -gt $2 ]]
    then
        return 2
    elif [[ $1 -lt $2 ]]
    then
        return 1
    else
        return 0
    fi
}
tmp= $(comp $1 $2 ) 
case $? in
    0) echo "They are equal"
    ;;
    2) echo "$1 is greater than $2"
    ;;
    1) echo "$1 is lesser than $2"
    ;;
esac

