#!/bin/bash

# This script attempts to process files in a directory,
# but it has a subtle bug related to globbing and special characters.

input_dir="/tmp/test_dir"

# Create a directory and some files for testing
mkdir -p "$input_dir"
touch "$input_dir/file1.txt"
touch "$input_dir/file?.txt"
touch "$input_dir/file[1].txt"

# The problematic part: processing files with special characters in their names
for file in "$input_dir/file*.txt"; do
  echo "Processing: $file"
  # ... further processing ...
done