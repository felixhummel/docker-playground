#!/bin/bash
set -euo pipefail

vol_name=$1

docker run -i --rm -v ${vol_name}:/volume alpine tar -x -C /volume < ${vol_name}.tar

