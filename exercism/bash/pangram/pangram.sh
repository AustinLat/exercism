#!/usr/bin/env bash

main() {

  input="${1^^}"
  
  for letter in {A..Z}; do
    [[ ! ${input} =~ ${letter} ]] && echo "false" && exit
  done 

  echo "true"
}

main "$@"
