#!/bin/sh
set -euo pipefail

while true; do
  ls -la /var/local/data
  date > /var/local/data/hello
  sleep 1
done
