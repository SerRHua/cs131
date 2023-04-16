#!/bin/bash

# Get total number of lines (excluding header)
num_lines=$(cat winequality-red.csv | sed '1d' | wc -l)

# Calculate number of lines for train and test datasets
train_lines=$(echo "scale=0; 0.8*$num_lines" | bc)
train_lines=${train_lines%.*}   # convert to integer by removing decimal part
test_lines=$((num_lines - train_lines))

# Copy header to train and test datasets
head -n 1 winequality-red.csv > train/data.csv
head -n 1 winequality-red.csv > test/data.csv

# Split dataset into train and test
cat winequality-red.csv | sed '1d' | shuf > temp.csv
head -n $train_lines temp.csv >> train/data.csv
tail -n $test_lines temp.csv >> test/data.csv

# Replace separator with commas if necessary
if grep -q ";" winequality-red.csv; then
  sed -i 's/;/,/g' train/data.csv
  sed -i 's/;/,/g' test/data.csv
fi

# Clean up
rm temp.csv

