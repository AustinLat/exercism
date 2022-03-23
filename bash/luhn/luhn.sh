#!/usr/bin/env bash

main() {
  # Removing whitespace from input and storing length of number
  num=${1//[[:blank:]]/}
  numlen=${#num}

  # Checking for invalid input.
  if (( numlen < 2 )) || ! [[ $num =~ ^[0-9]+$ ]]; then
    echo "false"; exit
  fi
  
  #reversing number
  declare -a revnumber
  for (( i=numlen-1; i!=-1; i-- )); do
    revnum+=${num:i:1}
  done

  # Performing doubling on every other digit, and adding to total
  total=0
  for i in $(seq 1 $numlen); do
    digit=${revnum:i-1:1}
    if (( (i % 2) == 0 )); then
      (( digit *= 2 ))
      (( digit > 9 )) && (( digit -= 9 ))
    fi  
    (( total += digit ))
  done

  # Echo whether total is divisible by 10
  (( total % 10 == 0 )) && echo "true" || echo "false"
}

main "$@"
