#!/bin/bash

read -p "Enter a number:" NUM
echo

if [ $NUM -gt 100 ]
then
  echo "We have entered in if block."
  sleep 3
  echo "Your number is Greater than 100"
  date
else 
echo "You have entered number less than 100."
fi

echo "Script Excution Compleated Successfully"
