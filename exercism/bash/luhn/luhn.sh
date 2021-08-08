#!/usr/bin/env bash

main() {
  num=${1//[[:blank:]]/}
  revnum=""
  for (( i=${#num}-1; i!=-1; i-- )); do
    revnum+=${num:i:1}
  done
  total=0
  for i in $(seq 1 ${#revnum}); do
    if [[ i%2 -eq 0 ]]; then
      double=$((${revnum:i-1:1}*2))
      doubsum=0
      for d in $(seq 1 ${#double}); do
        doubsum=$((doubsum + ${double:d-1:1}))
      done
      total=$((total + doubsum))
    else
      total=$((total + ${revnum:i-1:1}))
    fi
  done
  mod=$((total % 10))
  echo $mod


}

main "$@"
