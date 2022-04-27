#!/usr/bin/env bash

declare -A rhyme=([12]="the horse and the hound and the horn"
[11]="the farmer sowing his corn"
[10]="the rooster that crowed in the morn"
[9]="the priest all shaven and shorn"
[8]="the man all tattered and torn"
[7]="the maiden all forlorn"
[6]="the cow with the crumpled horn"
[5]="the dog"
[4]="the cat"
[3]="the rat"
[2]="the malt"
[1]="the house that Jack built.")

declare -A prefix=([12]="This is "
[11]="that belonged to"
[10]="that kept "
[9]="that woke "
[8]="that married "
[7]="that kissed "
[6]="that milked "
[3]="that killed "
[2]="that ate "
[1]="that lay in .")



main () {
    linecount = "$1"
    (( $(linecount) == $2 ))

    (( $1 < 1 )) || (( $1 > 12 )) && echo "invalid" && exit 1
    (( $2 < 1 )) || (( $2 > 12 )) && echo "invalid" && exit 1
}

main "$@"
