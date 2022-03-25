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

  # Returning 0 ohms
  [[ $1 == "black" ]] && [[ $2 == "black" ]] && echo 0 ohms && exit 0

  # Testing for invalid input
  for i in "$@"; do
    if [[ ! ${colors[$i]+_} ]]; then
      echo invalid color && exit 1
    fi
  done

  ohms=""
  count=0
  [[ $1 == "black" ]] && count=1 && shift
  while (( count < 2 )); do
    ohms="${ohms}${colors[$1]}"
    let count=$count+1
    shift
#    (( count == 1 )) && [[ $1 == "black" ]] && shift && break
  done

#  zeros=""
#  for i in $(seq ${colors[$1]}); do
#    zeros="${zeros}0"
#  done

  [[ $1 == "black" ]] && echo "${ohms} ohms" && exit 0
  [[ $1 == "brown" ]] && echo "${ohms}0 ohms" && exit 0
  [[ $1 == "red" ]] && echo "${ohms}00 ohms" && exit 0
  [[ $1 == "orange" ]] && echo "${ohms} kiloohms" && exit 0
  [[ $1 == "yellow" ]] && echo "${ohms}0 kiloohms" && exit 0
  [[ $1 == "green" ]] && echo "${ohms}00 kiloohms" && exit 0
  [[ $1 == "blue" ]] && echo "${ohms} megaohms" && exit 0
  [[ $1 == "violet" ]] && echo "${ohms}0 megaohms" && exit 0
  [[ $1 == "grey" ]] && echo "${ohms}00 megaohms" && exit 0
  [[ $1 == "white" ]] && echo "${ohms} gigaohms" && exit 0

  
}
main "$@"
