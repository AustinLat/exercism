#!/usr/bin/env bash

declare -A rhyme=([1]="This is the horse and the hound and the horn"
[2]="that belonged to the farmer sowing his corn"
[3]="that kept the rooster that crowed in the morn"
[4]="that woke the priest all shaven and shorn"
[5]="that married the man all tattered and torn"
[6]="that kissed the maiden all forlorn"
[7]="that milked the cow with the crumpled horn"
[8]="that tossed the dog"
[9]="that worried the cat"
[10]="that killed the rat"
[11]="that ate the malt"
[12]="that lay in the house that Jack built.")






main () {
    echo ${rhyme[1]}
}

main "$@"
