#!/usr/bin/env bash

match(){
for i in "${#1}"; do
  echo "$i"
done
}

match "$@"
