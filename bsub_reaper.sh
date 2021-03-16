#!/bin/bash

cd $(dirname $0)
for host in $(bhosts | grep -E "pennsive|silver|amber" | cut -d" " -f1);
do
    bsub -m $host -o /dev/null ./reaper.sh
done
