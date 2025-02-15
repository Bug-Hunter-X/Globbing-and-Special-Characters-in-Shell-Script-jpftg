#!/bin/bash

# This script provides a solution to the globbing issue.
# It uses 'find' to process files, correctly handling filenames with special characters.

input_dir="/tmp/test_dir"

# Create a directory and some files for testing (same as in bug.sh)
mkdir -p "$input_dir"
touch "$input_dir/file1.txt"
touch "$input_dir/file?.txt"
touch "$input_dir/file[1].txt"

# The improved way: use find to list files safely
find "$input_dir" -maxdepth 1 -name "file*.txt" -print0 | while IFS= read -r -d $'\0' file; do
  echo "Processing: $file"
  # ... further processing ...
done

# cleanup
rm -rf "$input_dir"