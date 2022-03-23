#!/usr/bin/env bash


main() {

  declare -a factors=( [3]="Pling" [5]="Plang" [7]="Plong" )

  drops=""

  for num in "${!factors[@]}"; do
    (( $1 % num == 0 )) && drops+="${factors[num]}"
  done

  echo "${drops:-$1}"
}

main "$@"
