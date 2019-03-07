#!/bin/sh
set -euo pipefail

control_c() {
    echo "Exiting."
    exit 1
}
trap control_c SIGINT SIGTERM

id
pwd

while true; do
  date | tee /var/local/data/hello
  echo "Hello $(cat config)"
  sleep 1
done

