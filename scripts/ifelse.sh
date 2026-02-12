#!/bin/bash

# Generate random number between 1 and 1000
secret=$(( RANDOM % 1000 + 1 ))

while true
do
    echo "Enter a number:"
    read number

    # Check if input is a number
    if ! [[ "$number" =~ ^[0-9]+$ ]]; then
        echo "Invalid input. Please enter a valid number."
        continue
    fi

    if [ $number -gt 56 ]; then
        echo "Greater, think lower"

    elif [ $number -eq 56 ]; then
        echo "You won the game"
        break

    else
        echo "Less, think higher"
    fi

done
