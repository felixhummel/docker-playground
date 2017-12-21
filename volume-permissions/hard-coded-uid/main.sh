#!/bin/sh
set -euo pipefail

control_c() {
    echo  # new line for ^C character that is printed
    echo "Exiting."
    exit 1
}
trap control_c SIGINT

while true; do
  ls -la /var/local/data
  date > /var/local/data/hello
  sleep 1
done
