#!/usr/bin/env bash

#Need to make these "dice" six sided.
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
  
  IFS=$'\n'
  sorted_strength=($(sort -g <<<"${strength[*]}"))
  unset IFS
  echo ${sorted_strength[@]:1:3}
}

main "$@"
