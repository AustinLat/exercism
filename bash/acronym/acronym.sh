#!/usr/bin/env bash


main() {

  set -o noglob
  IFS='- ' 
  acro='' 

  for i in ${1}; do
    [[ ${i} =~ [[:alnum:]] ]] && acro+=${BASH_REMATCH}
  done

  echo "${acro^^}"
}

main "$@"
