#!/bin/bash

# Specify your directory here
dir="/home/charlie_babelcast_com/dataset/VCTK-Corpus/wav48"

# Find all .wav files in the directory and its subdirectories
find "$dir" -type f -name "*.wav" | while read file; do
  # Get the directory of the current file
  dir=$(dirname "$file")
  # Create a 'wavs' subdirectory if it doesn't exist
  mkdir -p "$dir/wavs"
  # Move the file into the 'wavs' subdirectory
  mv "$file" "$dir/wavs/"
done
