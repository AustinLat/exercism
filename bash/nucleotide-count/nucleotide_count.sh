#!/usr/bin/env bash

main () {
  declare -A nucs
  nucs=(["A"]=0 ["C"]=0 ["G"]=0 ["T"]=0)
  for i in $(seq 0 1 $((${#1}-1))); do
    if [[ -v nucs[${1:$i:1}] ]]; then
      nucs[${1:$i:1}]=$(( nucs[${1:$i:1}]+1 ))
   else
      echo "Invalid nucleotide in strand" && exit 1
    fi
  done
  for i in "${!nucs[@]}"; do
    echo "${i}: ${nucs[$i]}" 
  done | tac
}

main "$@"
