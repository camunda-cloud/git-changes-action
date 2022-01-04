#!/bin/bash

set -euo pipefail

output="$(git -c color.status=always status --short)"

if [ -n "$output" ]; then
  echo "== git status =="
  echo -e "$output"
  echo "================"
fi

git diff --color=always --exit-code

if [ -n "$output" ]; then
  echo
  echo -e "\e[31;1mThere are pending changes!\e[0m"
  exit 1
fi
