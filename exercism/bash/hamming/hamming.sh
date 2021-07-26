#!/usr/bin/env bash

# Kill function for error handling.
die() {
  echo "$*" >&2
  exit 1
}

main() {
  # Error checking
  (( $# != 2 )) && die "Usage: hamming.sh <string1> <string2>"
  (( ${#1} != ${#2} )) && die "left and right strands must be of equal length"

  # Looping through both strings and looking for differences
  diff=0
  for (( i=0; i!=${#1}; i+=1 )); do
    [[ "${1:${i}:1}" != "${2:${i}:1}" ]] && (( diff+=1 ))
  done
  echo "${diff}"
}

main "$@"
