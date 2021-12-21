#!/usr/bin/env bash
declare -A counts

main() {
  local IFS=", "
  for word in $1; do
    counts[$word]=$((${counts[$word]}+1))
  done
  for i in ${!counts[*]}; do
    echo $i: ${counts[$i]}
  done
}



main "$@"
