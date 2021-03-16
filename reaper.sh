#!/bin/bash

cd $TMPDIR
for f in $(find . -maxdepth 1 -mtime +7 -print); do # find files older than 7 days
    if [ -O "$f" ]; then # we own the file
        chmod -R 777 $f && rm -rf $f
    fi
done
