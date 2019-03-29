#!/bin/bash
set -euo pipefail

vol_name=$1

docker run --rm -v ${vol_name}:/volume alpine tar -c -C /volume . > ${vol_name}.tar

