#!/usr/bin/env bash


main() {

  sentence=${1//[[:space:]]/}
 
  if [[ $sentence =~ \?$ ]] && [[ ! $1 =~ [[:lower:]] ]]; then
    echo "Calm down, I know what I'm doing!"
    exit
  elif [[ ! $sentence =~ [[:lower:]] ]]; then
    echo "Whoa, chill out!"
    exit
  elif [[ $sentence =~ \?$ ]]; then
    echo "Sure."
    exit
  elif [[ $sentence =~ ^$ ]]; then
    echo "Fine. Be that way!"
    exit
  else
    echo "Whatever." 
  fi
}

main "$@"
