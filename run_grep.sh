#!/bin/bash
pattern=$1
dirs=$GREP_DIRS
if [ -z "${dirs}" ]; then
  echo "No GREP_DIRS"
  exit 1
fi
exec rg --vimgrep -uu "${pattern}" ${dirs}
