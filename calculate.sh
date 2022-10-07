#!/usr/bin/env bash

re_exp='^-?([0]|[1-9][0-9]*)(\.[0-9]+)?\s*[+*/^-]\s*-?([0]|[1-9][0-9]*)(\.[0-9]+)?$'

echo "Welcome to the basic calculator!"
echo "Welcome to the basic calculator!" >> operation_history.txt

while [ true ]; do

    echo "Enter an arithmetic operation or type 'quit' to quit:"
    echo "Enter an arithmetic operation or type 'quit' to quit:" >> operation_history.txt

    read exp
    echo "$exp" >> operation_history.txt

    if [[ "$exp" =~ quit ]]; then
        break
    else
        if [[ "$exp" =~ $re_exp ]]; then
            arithmetic_result=$(echo "scale=2; $exp" | bc -l)
            printf "%s\n" "$arithmetic_result"
            printf "%s\n" "$arithmetic_result" >> operation_history.txt
        else
            echo "Operation check failed!"
            echo "Operation check failed!" >> operation_history.txt
        fi
    fi
done
echo "Goodbye!"
echo "Goodbye!" >> operation_history.txt

