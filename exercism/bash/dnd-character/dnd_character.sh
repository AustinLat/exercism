#!/usr/bin/env bash


gen_stats() {
  echo "$(( $RANDOM % 7 + 0 ))" "$(( $RANDOM % 7 + 0 ))" "$(( $RANDOM % 7 + 0))" "$(( $RANDOM % 7 + 0 ))"
}

main() {
#  local -a strength=($(gen_stats))
#  local -a dexterity=($(gen_stats))
  local -a constitution=($(gen_stats))
#  local -a intelligence=($(gen_stats))
#  local -a wisdom=($(gen_stats))
#  local -a charisma=($(gen_stats))

  IFS=$'\n'
  sorted_constitution=($(sort -g <<<"${constitution[*]}"))
  unset IFS
  echo constitution numbers: ${sorted_constitution[@]:1:3}
  total=0
  for i in ${sorted_constitution[@]:1:3}; do
    (( total+=$i ))
  done
  total=$(( total + 10 ))
  echo constitution toal: $total
}

main "$@"
