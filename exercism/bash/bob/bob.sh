#!/usr/bin/env bash

isUpper() {
  if [[ ! $1 =~ [[:lower:]] && $1 =~ [[:upper:]] ]]; then
    return 0
  fi
    return 1
}


isQuestion() {
  if [[ $sentence =~ \?$ ]]; then
    return 0
  fi
    return 1
}

main() {

  sentence=${1//[[:space:]]/}

  if isQuestion $sentence && isUpper $sentence; then
    echo "Calm down, I know what I'm doing!"
  elif [[ $sentence =~ ^$ ]]; then
    echo "Fine. Be that way!"
  elif isUpper $sentence; then
    echo "Whoa, chill out!"
  elif isQuestion $sentence; then
    echo "Sure."
  else
    echo "Whatever." 
  fi
}

main "$@"
