#!/usr/bin/env bash

# For some reason, using normal bash arithmetic: total=$((total*2)) 
# returns a negative number when the given input is 64.  
# Using bc doesn't return a negative number.

main(){
  if [[ $1 == "total" ]]; then
    echo "18446744073709551615" && exit 
  fi
  if (( $1 < 1 )) || (( $1 > 64 )); then
    echo "Error: invalid input" && exit 1
  fi

  grains=$((2**($1-1)))
  if (( grains > 0 )); then
    echo "$grains"
  else
    echo "2^($1-1)" | bc
  fi
}

main "$@"
