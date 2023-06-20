#!/usr/bin/env bash

default_directory="$HOME/Desktop/nerd_font_patcher/source_font/VictorMonoAll/OTF/"
default_output_directory="$HOME/Desktop/nerd_font_patcher/output_font/"

# Set input directory based on command-line argument or default
directory="${1:-$default_directory}"

# Set output directory based on command-line argument or default
output_directory="${2:-$default_output_directory}"

# Check if the directory exists
if [ ! -d "$directory" ]; then
  echo "Directory not found: $directory"
  exit 1
fi

# Check if the output directory exists
if [ ! -d "$output_directory" ]; then
  echo "Output directory not found: $output_directory"
  exit 1
fi

# Loop over files in the directory with .otf or .ttf extensions
for file in "$directory"/*.otf "$directory"/*.ttf; do
  if [ -f "$file" ]; then
    echo "Processing file: $file"
    fontforge --script ./font-patcher --complete "$file" -out "$output_directory"
    echo "Completed processing file: $file"
  fi
done

