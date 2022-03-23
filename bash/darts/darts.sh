#!/usr/bin/env bash


main() {
  #Checking input for errors.
  (( ${#@} != 2 )) && echo "Two arguments needed" && exit 1 
  [[ ! $1 =~ [0-9] ]] || [[ ! $2 =~ [0-9] ]] && echo "Numeric only" && exit 1
 
  #Finding distance from center of board.
  sq=$(echo "scale=2; sqrt($(echo "$1^2 + $2^2" | bc))" | bc)

  #Returning score.
  (( $(echo "$sq > 10" | bc) == 1 )) && echo 0 && exit
  (( $(echo "$sq > 5" | bc) == 1 )) && echo 1 && exit
  (( $(echo "$sq > 1" | bc) == 1 )) && echo 5 && exit
  echo 10 && exit  
}

main "$@"
