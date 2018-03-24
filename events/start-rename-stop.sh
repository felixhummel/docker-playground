#!/bin/bash
set -euo pipefail

name1=tmp1
name2=tmp2
interval=1

control_c() {
    echo  # new line for ^C character that is printed
    docker rm -f $name1
    docker rm -f $name2
    echo "Exiting."
    exit 1
}
trap control_c SIGINT

while true; do
  docker run -d --name $name1 alpine sh -c 'while true; do sleep 1; done'
  sleep $interval
  docker rename $name1 $name2
  sleep $interval
  docker rm -f $name2
done
