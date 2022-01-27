#!/usr/bin/env bash

#* If the dart lands outside the target, player earns no points (0 points).
#* If the dart lands in the outer circle of the target, player earns 1 point.
#* If the dart lands in the middle circle of the target, player earns 5 points.
#* If the dart lands in the inner circle of the target, player earns 10 points.

#The outer circle has a radius of 10 units (This is equivalent to the total
#radius for the entire target), the middle circle a radius of 5 units, and the
#inner circle a radius of 1.

main() {
  (( ${#@} != 2 )) && echo "Invalid arguments" && exit 1 
  #echo "arguments valid"
  (( $(echo "$1 < 0" | bc) )) && lat=$(echo "$1 * -1" | bc) || lat=$1
  (( $(echo "$2 < 0" | bc) )) && lon=$(echo "$2 * -1" | bc) || lon=$2
  #echo $lat $lon
  double=$(echo "$lat^2 + $lon^2" | bc)
  #echo "after double calculation $double"
  sq=$(echo "scale=1;sqrt($double)" | bc)
  #echo $sq
  (( $(echo "$sq > 10" | bc) == 1 )) && echo 0 && exit
  (( $(echo "$sq > 5" | bc) == 1 )) && echo 1 && exit
  (( $(echo "$sq > 1" | bc) == 1 )) && echo 5 && exit
  echo 10 && exit
  
}

main "$@"