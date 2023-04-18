#!/bin/bash

count=1

for file in *.png; do
    new_file="photo${count}.png"
    # Rename the file
    mv "${file}" "${new_file}"
    # Increment the count variable
    ((count++))
done

