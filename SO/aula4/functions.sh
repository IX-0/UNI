#!/bin/zsh

#Declaração
function print ()
{
  echo "Isto é um print"
  return 0
}

#Chamar a função
print

function numeric_to_string()
{
  case "$1" in
    1)  
      echo "Um" $2 $3
      ;;
    2)
      echo "Dois" $2 $3
      ;;
    3)
      echo "Três" $2 $3
      ;;
    *)
      echo "Outro numero" $2 $3
  esac
  
  return 0
}

numeric_to_string $1 2 3
