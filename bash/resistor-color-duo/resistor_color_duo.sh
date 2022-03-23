#!/usr/bin/env bash

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

resist() {
number=""
for i in "$@"; do
  # Running checks on input
  if [ ${#number} -eq 2 ]; then
    echo "$number";
	exit 0
  fi
  if [ ! -v colors[$i] ]; then
    echo "invalid color";
    exit 1
  fi
  # If checks passed, add inputs value to ${number} string.
  number="${number}${colors[$i]}"
done
echo "$number"
}

resist "$@"
