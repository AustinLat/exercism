#!/usr/bin/env bash

main() {
  # Rmoving whitespace from input
  num=${1//[[:blank:]]/}
  
  # Checking for invalid input.
  if (( ${#num} < 2 )) || ! [[ $num =~ ^[0-9]+$ ]]; then
    echo "false"; exit
  fi
  
  #reversing number
  revnum=""
  for (( i=${#num}-1; i!=-1; i-- )); do
    revnum+=${num:i:1}
  done
  
  # Performing doubling on every other number, and adding to total
  total=0
  for i in $(seq 1 ${#revnum}); do
    if (( (i%2) == 0 )); then
      double=$((${revnum:i-1:1}*2))
      if (( $double > 9 )); then
        double=$((double - 9)) 
      fi
      total=$((total + double))
    else
      total=$((total + ${revnum:i-1:1}))
    fi
  done

  # Echo whether total is divisible by 10
  if (( total % 10 == 0 )); then
    echo "true"
  else
    echo "false"
  fi
}

main "$@"
