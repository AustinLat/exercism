#!/usr/bin/env bash


main() {
    declare -A wordCount
    words=${1,,}

    for i in ${words[@]}; do
        [[ ! -v wordCount[$i] ]] && wordCount[$i]=1 ||
            wordCount[$i]=$(( ${wordCount[$i]} + 1 ))
    done 

    for i in ${!wordCount[@]}; do
        echo $i: ${wordCount[$i]}
    done
}

main "$@"
