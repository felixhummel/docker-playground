#!/bin/bash
set -euo pipefail
# Mission: stupid volume backup (without minding corner-cases)
#
# Status: draft

PS4="\n\[\e[0;32m\]▬ \[\e[0m\]"
set -x

vol_name=volume-backup-restore

_run_app="docker run --rm -v $vol_name:/vol debian:stretch"

$_run_app bash -c 'echo hello > /vol/hello'
$_run_app cat /vol/hello

# create backup
./backup.sh $vol_name
# list backup files
tar -tf $vol_name.tar

# the volume is lost! oh no!
docker volume rm $vol_name
$_run_app ls -la /vol

# restore the backup
./restore.sh $vol_name
$_run_app ls -la /vol

# clean up
docker volume rm $vol_name

