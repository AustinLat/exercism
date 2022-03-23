#!/usr/bin/env bash


main() {
  [[ "$#" -ne 1 ]] && echo "Usage: error_handling.sh <person>" && exit 1
  [[ "$1" = "" ]] && echo "Hello, " && exit 0
  echo "Hello, ${1}" && exit 0
}

main "$@"
