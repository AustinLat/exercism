#!/usr/bin/env bash

two() {
  echo "One for ${1:-"you"}, one for me."
}

two "$@"
