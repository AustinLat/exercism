#!/usr/bin/env bash

main () {
  declare -A nucs
  nucs=(["A"]=0 ["C"]=0 ["G"]=0 ["T"]=0)
  for i in $(seq 0 1 $((${#1}-1))); do
    echo ${nucs[${1:$i:1}]}
  done
#  echo ${nucs["C"]}
}

main "$@"
