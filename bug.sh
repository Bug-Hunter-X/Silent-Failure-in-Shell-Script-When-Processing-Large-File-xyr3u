#!/bin/bash

# This script attempts to process a large file, but fails due to exceeding the system's
# maximum open file descriptor limit.  The error is not immediately obvious, because 
# the script runs for a while before failing.

# This can be reproduced on systems with a relatively low ulimit -n value.

while IFS= read -r line; do
  # Process each line (replace with your actual processing logic)
  echo "Processing: $line"
done < large_file.txt