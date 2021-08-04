#!/usr/bin/env bash

#set -x
main(){
  if [[ $1 == "total" ]]; then
    echo "18446744073709551615" && exit 0
  fi
  if [[ $1 < 1 ]] || [[ $1 > 64 ]]; then
    echo "Error: invalid input" && exit 1
  fi

  total=1
  i=1
  while [[ $i -lt $1 ]]; do
    total=$((total * 2)) 
    ((i+=1))
  done 
  echo "$total"
}

main "$@"
