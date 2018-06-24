#/bin/bash

folder=$1

for file in CV*
do
    echo mv "$file" "${file/CV*/BD{1..10}}"
done
