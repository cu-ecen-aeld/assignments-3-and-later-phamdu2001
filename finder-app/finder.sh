#!/bin/bash

if [ $# -lt 2 ]; then
    echo "Error: Both parameters must be specified"
    exit 1
fi

filesdir="$1"
searchstr="$2"

if [ ! -d "$filesdir" ]
then
    echo "$filesdir is not directory"
    exit 1
fi

file_count=$(find "$filesdir" -type f | wc -l)

line_count=$(grep -r -c "$searchstr" "$filesdir" | awk -F: '{sum += $2} END {print sum}')

echo "The number of files are $file_count and the number of matching lines are ${line_count:-0}"
