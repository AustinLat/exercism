#!/usr/bin/bash


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
