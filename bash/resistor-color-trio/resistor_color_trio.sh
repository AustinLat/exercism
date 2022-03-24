#!/usr/bin/env bash


main() {
  declare -A colors
  colors[black]="0"
  colors[brown]="1"
  colors[red]="2"
  colors[orange]="3"
  colors[yellow]="4"
  colors[green]="5"
  colors[blue]="6"
  colors[violet]="7"
  colors[grey]="8"
  colors[white]="9"

  ohms=""
  count=0
  while (( $count < 2 )); do
    ohms="${ohms}${colors[$1]}"
    let count=$count+1
    shift
  done
  zeros=""
  for i in $(seq ${colors[$1]}); do
    zeros="${zeros}0"
  done
  echo ${zeros}
  ohms="${ohms}${zeros}"
  (( ${#zeros} > 2 )) && echo "${ohms} kiloohms" || echo "${ohms} ohms"
}

main "$@"
