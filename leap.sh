#!/bin/bash
echo "Enter a year:"
read n

# Check if the year is divisible by 4
if [ $((n % 4)) -eq 0 ]; then
  # If divisible by 100, check if it is also divisible by 400
  if [ $((n % 100)) -eq 0 ]; then
    if [ $((n % 400)) -eq 0 ]; then
      echo "$n is a leap year"
    else
      echo "$n is not a leap year"
    fi
  else
    echo "$n is a leap year"
  fi
else
  echo "$n is not a leap year"
fi

