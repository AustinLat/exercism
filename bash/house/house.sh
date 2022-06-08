#!/usr/bin/env bash

declare -A rhyme=([12]="this is the horse and the hound and the horn"
[11]="that belonged to the farmer sowing his corn"
[10]="that kept the rooster that crowed in the morn"
[9]="that woke the priest all shaven and shorn"
[8]="that married the man all tattered and torn"
[7]="that kissed the maiden all forlorn"
[6]="that milked the cow with the crumpled horn"
[5]="that tossed the dog"
[4]="that worried the cat"
[3]="that killed the rat"
[2]="that ate the malt"
[1]="that lay in the house that Jack built.")

main () {
  start="$1"
  end=$(( $1 - $(( $2 - 1 )) ))
  
  for ((i=${start}; i>=${end}; i--)); do
    if ${i} == ${start}; then
      echo "This is the ${rhyme[$i]}"
    fi
    echo ${rhyme[$i]}
  done

  (( $1 < 1 )) || (( $1 > 12 )) && echo "invalid" && exit 1
  (( $2 < 1 )) || (( $2 > 12 )) && echo "invalid" && exit 1
}

main "$@"
