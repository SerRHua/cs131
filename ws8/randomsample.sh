#!/bin/bash

# Check for two arguments
if [[ -z "$1" || -z "$2" ]]; then
	echo "Usage: ./randomsample.sh x fileinput"
	exit 1
fi

# Check if the input file exists
if ! [[ -f "$2" ]]; then
	echo "Error: fileinput must be a file"
	exit 1
fi

# make arguments be variables
percentage="$1"
input_file="$2"

# Check if percentage between 1 and 99
if [[ "$percentage" -lt 1 || "$percentage" -gt 99 ]]; then
	echo "Error: x must be an integer between 1 and 99 (inclusive)"
	exit 1
fi

# Calculate the number of lines to sample based on the percentage
total_lines=$(wc -l < "$input_file")
lines_to_sample=$(echo "scale=0; $total_lines * $percentage / 100" | bc)

# Sample the lines randomly and print to stdout
shuf "$input_file" | head -n "$lines_to_sample"
