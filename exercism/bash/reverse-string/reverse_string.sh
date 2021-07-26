#!/usr/bin/env bash

word="$1"
reverse=""

reverse() {
  for i in $(seq 0 ${#word});
	do reverse="${word:$i:1}${reverse}"
  done
  echo "${reverse}"
}

reverse "$@"
