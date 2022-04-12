#!/usr/bin/env bash


declare -A colors=( [black]="0" [brown]="1" [red]="2"
    [orange]="3" [yellow]="4" [green]="5" [blue]="6"
    [violet]="7" [grey]="8" [white]="9" )

ohm_string() {
  (( ${#2} >= 9 )) && echo "${1::-9} gigaohms" && exit 0
  (( ${#2} >= 6 )) && echo "${1::-6} megaohms" && exit 0
  (( ${#2} >= 3 )) && echo "${1::-3} kiloohms" && exit 0
  echo "${1} ohms" && exit 0
}

validate_input() {
  [[ ! -v colors[$1] ]] && echo "Invalid color" && exit 1
}

main() {
  for color in "$@"; do
      validate_input "$color"
  done
  
  ohms=$(( (10 * colors[$1] + colors[$2]) * 10 ** colors[$3] ))   
  reg="(0*$)"
  [[ $ohms =~ $reg ]]
 
  ohm_string "$ohms" "${BASH_REMATCH[1]}"
}

main "$@"
