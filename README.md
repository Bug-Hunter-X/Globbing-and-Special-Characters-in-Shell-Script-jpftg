# Shell Script Globbing Bug

This repository demonstrates a common bug in shell scripts related to globbing (filename expansion) and how to fix it.

The `bug.sh` script attempts to process files in a directory. However, it fails to correctly handle filenames that contain special characters like `?` or `[`. This leads to unexpected behavior or errors.

The `bugSolution.sh` script provides a corrected version that uses safer techniques for handling filenames to avoid this issue.

## How to Reproduce the Bug

1. Clone the repository.
2. Run `bug.sh`. Observe that the output is not as expected.
3. Run `bugSolution.sh`. Observe the correct output.

## Bug Explanation

The main problem in the original script lies in the use of wildcard characters (`*`, `?`, `[]`) in the `for` loop. The shell's globbing mechanism expands these wildcards before the loop is executed. If the filenames contain characters that have special meaning in globbing (e.g., `?`, `*`, `[`, `]`), they may not be correctly handled, leading to incorrect results or errors.

## Solution

The solution employs a safer method using `find` to locate files, ensuring correct handling of special characters and special cases.