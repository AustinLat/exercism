#!/usr/bin/bash

gen_stats() {
  echo "${RANDOM:1:1}" "${RANDOM:1:1}" "${RANDOM:1:1}" "${RANDOM:1:1}"
}

main() {
  local -a strength=($(gen_stats))
  local -a dexterity=($(gen_stats))
  local -a constitution=($(gen_stats))
  local -a intelligence=($(gen_stats))
  local -a wisdom=($(gen_stats))
  local -a charisma=($(gen_stats))
  sorted_strength=($(sort -g <<<"${strength[*]}"))
  #echo strength: ${sorted_strength[@]}
  echo ${sorted_strength[*]}
}

main "$@"
