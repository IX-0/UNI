function returnX ()
{
    return $1
}

for i in $(seq 1 300)
do
    returnX $i
    echo $?
done
