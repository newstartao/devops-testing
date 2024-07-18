#!/bin/bash

# Split the NAMES environment variable into an array
IFS=',' read -r -a names_array <<< "$NAMES"

# Initialize the output string
output="["

# Loop through all the names in the array
for name in "${names_array[@]}"; do
 # trimmed_name=$(echo "$name" | sed -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//')
 # output+="$trimmed_name, "
  output+="\"$name\" "
done

# Remove the trailing comma and space, and add the closing bracket
output="${output%, }]"
echo "$output"
