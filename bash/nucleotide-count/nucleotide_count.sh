#!/usr/bin/env bash

main () {
  declare -A nucs
  declare -A counts
  nucs=(["A"]=0 ["C"]=0 ["G"]=0 ["T"]=0)
  for i in $(seq 0 1 $((${#1}-1))); do
    if [[ -v nucs[${1:$i:1}] ]]; then
      if [[ -v counts[${1:$i:1}] ]]; then
        counts[${1:$i:1}]=$(( counts[${1:$i:1}]+1 ))
      else
        counts[${1:$i:1}]=1
      fi
    else
      echo "Invalid nucleotide in strand" && exit 0
    fi
  done
  for i in $(seq 0 1 $((${#1}-1))); do
    echo "${1:$i:1}: ${counts[${1:$i:1}]}" 
  done
}

main "$@"
