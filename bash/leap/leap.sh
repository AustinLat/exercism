#!/usr/bin/env bash

leap() {
  
  # Checking if there is only one argument <year>		
  if [[ $# -ne 1 ]]; then
    echo "Usage: leap.sh <year>";
    exit 1
  fi

  # Checking if the argument is an integer
  if ! [[ "$1" =~ ^[0-9]+$ ]]; then
    echo "Usage: leap.sh <year>"
	exit 1
  fi

  # Running checks if <year> is divisible by 4
  if [[ $(("$1"%4)) = 0 ]]; then
    leap="true"
  fi  

  if [[ $(("$1"%4)) = 0 ]] && [[ $(("$1"%100)) = 0 ]]; then
    leap="false"
  fi

  if [[ "$leap" = "false" ]] && [[ $(("$1"%400)) = 0 ]]; then
    leap="true" 
  fi

  # Outputing results of the above checks
  if [[ -v leap ]]; then
    echo "$leap";
    exit
  fi
  
  # "false" if then provided <year> is not divisible by 4.
  echo "false"
}

leap "$@"
