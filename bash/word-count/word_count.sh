#!/usr/bin/env bash


main() {
    declare -A wordCount
    
    input=${1,,}
    input=${input//\\n/ }
    
    read -ra words <<<"${input}"
    for i in ${words[@]}; do
        [[ ! -v wordCount[$i] ]] && wordCount[$i]=1 ||
            wordCount[$i]=$(( ${wordCount[$i]} + 1 ))
    done 

    for i in ${!wordCount[@]}; do
        echo $i: ${wordCount[$i]}
    done
}

main "$@"
