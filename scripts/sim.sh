#!/bin/bash

echo "enter a file name"

read fl

grep -i "error" "$fl"
