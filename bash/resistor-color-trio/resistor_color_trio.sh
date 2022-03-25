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

  # Checking for valid input
  for color in "$@"; do
    if [[ ! ${colors[$color]+_} ]]; then
      echo "Invalid color" && exit 1
    fi
  done
  
  zeros=""
  ohms=""
  count=0
  
  # Skipping first color if it is black 0
  [[ $1 == "black" ]] && count=1 && shift

  while (( count < 2 )); do
    ohms="${ohms}${colors[$1]}"
    count=$count+1
    shift
    # Adjusting trailing zeros if second color is black 0
    (( count == 1 )) && [[ $1 == "black" ]] && zeros="0" && shift && break
  done

  # Building trailing zeros
  for _ in $(seq ${colors[$1]}); do
    zeros="${zeros}0"
  done
 
  ohms="${ohms}${zeros}"
  (( ${#zeros} >= 9 )) && echo "${ohms::-9} gigaohms" && exit 0
  (( ${#zeros} >= 6 )) && echo "${ohms::-6} megaohms" && exit 0
  (( ${#zeros} >= 3 )) && echo "${ohms::-3} kiloohms" && exit 0
  echo "${ohms} ohms" && exit 0

}
main "$@"
