#!/bin/bash

echo "Please enter city name"

read cityName
echo -e "\n"
cityName="$(tr '[:lower:]' '[:upper:]' <<< ${cityName:0:1})${cityName:1}"

echo "1) Show current forcast"
echo "2) Show entire day's forcast"

read choice

echo -e "\n"
if [ $choice -eq 1 ]; then
    curl -s wttr.in/$cityName | head -7
elif [ $choice -eq 2 ]; then
    curl -s wttr.in/$cityName | head -17 | tail -10
fi
