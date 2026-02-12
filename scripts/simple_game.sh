#!/bin/bash

total_attempts=0
round=1

echo "🎯 Welcome to the Guessing Game!"

while true
do
    echo ""
    echo "🔁 Round $round"
    secret=$(( RANDOM % 100 + 1 ))
    attempts=0

    while true
    do
        echo "Guess a number between 1 and 100:"
        read number

        # Validate input
        if ! [[ "$number" =~ ^[0-9]+$ ]]; then
            echo "Invalid input. Enter a number."
            continue
        fi

        attempts=$((attempts + 1))

        if [ $number -gt $secret ]; then
            echo "Too high!"
        elif [ $number -lt $secret ]; then
            echo "Too low!"
        else
            echo "✅ Correct! The number was $secret"
            echo "Attempts this round: $attempts"
            total_attempts=$((total_attempts + attempts))
            break
        fi
    done

    echo "Play again? (yes/no)"
    read answer

    if [ "$answer" != "yes" ]; then
        break
    fi

    round=$((round + 1))
done

echo ""
echo "🏁 Game Over!"
echo "Total rounds played: $round"
echo "Total attempts: $total_attempts"

