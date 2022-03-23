#!/usr/bin/env bash


main() {

  total=0
  length="${#1}"
  for (( i=0; i!="${#1}"; i+=1 )); do
    (( total += ${1:i:1}**length ))
  done
  [[ ${total} -eq "${1}" ]] && echo "true" || echo "false"

}

main "$@"
