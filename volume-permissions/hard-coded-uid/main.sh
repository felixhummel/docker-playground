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
  ls -la /var/local/data
  date > /var/local/data/hello
  sleep 1
done
