#!/usr/bin/env bash

#declare -A counts

#main() {
#  local IFS="${IFS}," 
#  for word in $1; do
#    counts[$word]=$((${counts[$word]}+1))
#  done
#  for i in ${!counts[*]}; do
#    echo $i: ${counts[$i]}
#  done
#}

#main "$@"
         

#=================================================================

remove_quotes() {
  [[ "$1" == \'*\' ]] && echo "${1:1:-1}" || echo "$1"
}
word_count() {
  local words="${1,,}"
  local cleaned
  cleaned="${words//\\n/ }"
  cleaned="${cleaned//[[:space:]]/ }"
  cleaned="${cleaned//[^[:alnum:]\']/ }"
  local -A -i counts
  
  for w in $cleaned; do
    w=$(remove_quotes "$w")
    ((counts['"$w"'] += 1)) # second expansion suppressed because of apostrophe
  done

  for k in "${!counts[@]}"; do
    echo "$k: ${counts[$k]}"
  done
}

word_count "$@"
