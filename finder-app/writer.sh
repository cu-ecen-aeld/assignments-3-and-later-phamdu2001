#!/bin/bash

if [ $# -lt 2 ]; then
    echo "Error: Both parameters must be specified"
    exit 1
fi

writefile="$1"
writestr="$2"

mkdir -p "$(dirname "$writefile")"

echo "$writestr" > "$writefile"

if [ $? -ne 0 ]
then
    echo "Could not create or write to '$writefile'"
    exit 1
fi
