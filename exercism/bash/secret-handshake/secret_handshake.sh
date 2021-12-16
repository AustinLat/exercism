#!/usr/bin/bash


#set -x

binary=$(echo "obase=2;$1" | bc)
declare -a actions

main() {
  echo $binary
  for ((i = 0 ; i < ${#binary} ; i++)); do
    number=${binary:i:${#binary}}
    
    [[ ${#number} -eq 5 ]] && [[ ${binary:i:1} -eq 1 ]] && actions+=("reversed")
    [[ ${#number} -eq 4 ]] && [[ ${binary:i:1} -eq 1 ]] && actions+=("jump")
    [[ ${#number} -eq 3 ]] && [[ ${binary:i:1} -eq 1 ]] && actions+=("close your eyes")
    [[ ${#number} -eq 2 ]] && [[ ${binary:i:1} -eq 1 ]] && actions+=("double blink")
    [[ ${#number} -eq 1 ]] && [[ ${binary:i:1} -eq 1 ]] && actions+=("wink")
  done
  echo ${actions[*]}
}


main "$@"
