#!/usr/bin/env bash




gen_stats() {
  echo "$(( $RANDOM % 7 + 0 ))" "$(( $RANDOM % 7 + 0 ))" "$(( $RANDOM % 7 + 0))" "$(( $RANDOM % 7 + 0 ))"
}

sort_chop() {
  IFS=$'\n'
  sorted=($(sort -g <<<"$1"))
  unset IFS
  echo sorted: ${sorted[@]}
  total=0
  for i in ${sorted[@]:1:3}; do
    (( total+=$i ))
  done
#  echo $total
}

main() {
  declare -a strength=($(gen_stats))
  declare -a dexterity=($(gen_stats))
  declare -a constitution=($(gen_stats))
  declare -a intelligence=($(gen_stats))
  declare -a wisdom=($(gen_stats))
  declare -a charisma=($(gen_stats))

#  IFS=$'\n'
#  sorted_constitution=($(sort -g <<<"${constitution[*]}"))
#  unset IFS
#  total=0
#  for i in ${sorted_constitution[@]:1:3}; do
#    (( total+=$i ))
#  done
#  total=$(( total + 10 ))
#  echo ${strength[*]}
   echo "strength $(sort_chop "${strength[@]}")"

}

main "$@"
