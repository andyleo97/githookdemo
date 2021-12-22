#!/bin/sh

MSG_PATH=$(cat $1)
MSG_FIRST=$(echo $MSG_PATH | awk '{print $1;}')

if [[ "$MSG_FIRST" =~ ^SCC-[0-9]+$ ]]; then
  echo "Commit message is in the correct format"
  exit 0
else
  echo 'Failed: Please include SCC-"JIRA ID here" at the beginning of the commit message'
  exit 1
fi
