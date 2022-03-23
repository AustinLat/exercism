#!/usr/bin/env bash

counter=1

proverb() {
for i in "$@"; do
  if [[ ${#@} -eq ${counter} ]]; then
    echo "And all for the want of a $1.";
	exit 0
  fi 
  let counter=counter+1
  echo "For want of a "$i" the "${!counter}" was lost."
done
}


proverb "$@"
