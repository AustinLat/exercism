#!/usr/bin/env bash

match(){
  declare -a left
  declare -a right
  left=("(""[""{")
  right=(")""]""}")
  for (( i=0; i<=${#left}; i++ )); do
     echo ${left:$i:1}
  done
}

match "$@"
