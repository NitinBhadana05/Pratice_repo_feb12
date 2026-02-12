#!/bin/bash

# Check if file argument is provided
if [ -z "$1" ]; then
    echo "Usage: $0 log.txt"
    exit 1
fi

LOGFILE=$1

grep -i "error" "$LOGFILE" \
| awk '{print $3}' \
| sort \
| uniq -c \
| sort -nr \
| awk '{print $2 " -> " $1 " times"}'
