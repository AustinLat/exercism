#!/usr/bin/env bash


gen_stats() {
  echo "$(( $RANDOM % 7 + 0 ))" "$(( $RANDOM % 7 + 0 ))" "$(( $RANDOM % 7 + 0))" "$(( $RANDOM % 7 + 0 ))"
}


main() {
  declare -a abilities=("strength" "dexterity" "constitution" "intelligence"
  "wisdom" "charisma")

  for ((i=0; i<=6; i++)); do
    declare -a $(abilities[i])=($(gen_stats))
  done

  echo ${strength[@]}
#  declare -a strength=($(gen_stats))
#  declare -a dexterity=($(gen_stats))
#  declare -a constitution=($(gen_stats))
#  declare -a intelligence=($(gen_stats))
#  declare -a wisdom=($(gen_stats))
#  declare -a charisma=($(gen_stats))
#  IFS=$'\n' sorted=($(sort <<<"${constitution[*]}")); unset IFS
#  total=0
#  for i in ${sorted[@]:1:3}; do
#    (( total+=$i ))
#  done
#  total=$(( total + 10 ))
#  echo "$total"
}

main "$@"
