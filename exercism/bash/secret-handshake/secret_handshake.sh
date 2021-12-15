#!/usr/bin/bash


set -x

binary=$(echo "obase=2;$1" | bc)
declare -a actions
declare -a binarray

main() {
  echo $binary
  for ((i = 0 ; i < ${#binary} ; i++)); do
#    echo ${binary:i:${#binary}}
    [[ $((${binary:i:${#binary}} % 10000)) -eq 0 ]] && echo reversed
  done
}


main "$@"
