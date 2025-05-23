#!/bin/bash

COMMAND=$1

status=$(xset -q | grep 'DPMS is' | awk '{ print $3 }')

case $COMMAND in
  "status")
    echo $status
    [ "$status" = "Enabled" ] && exit 0 || exit 1
    ;;
  "toggle")
    if [ $status == 'Enabled' ]; then
      xset -dpms
    else
      xset +dpms
    fi
    ;;
  *)
    echo "Usage: $0 {toggle}"
    exit 1
    ;;
esac