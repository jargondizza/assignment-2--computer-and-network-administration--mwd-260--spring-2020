#!/bin/bash

echo "Checking for access.log"

if access.log > access.log.backup 2>&1
then
  echo "Content reset to empty"
exit 0
fi

if access.log > /dev/null 2>&1
then
  echo $?
exit 1
fi
