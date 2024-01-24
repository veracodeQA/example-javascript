#!/bin/bash

# Check if the number of arguments is correct
if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <number_of_files>"
  exit 1
fi

# Assign the input number to a variable
num_files=$1

# Loop to create JSON files
for ((i=1; i<=num_files; i++)); do
  filename="file_test11_$i.json"
  echo "{\"file\": \"$filename\", \"content\": \"Sample content for $filename\"}" > "$filename"
  echo "Created $filename"
done

echo "JSON files created successfully!"
