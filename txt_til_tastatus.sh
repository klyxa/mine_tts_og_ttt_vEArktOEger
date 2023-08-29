#!/bin/bash

# Input file containing the text to convert
input_file="$1"

# Output file for storing the xdotool commands
output_file="commands.txt"

# Function to convert text into xdotool type commands
convert_to_xdotool_commands() {
  local text="$1"
  local commands=""

  # Loop through each character in the text
  for ((i=0; i<${#text}; i++)); do
    local char="${text:i:1}"
    local command="key '${char}'"
    commands+="${command}\n"
  done

  echo -e "${commands}"
}

# Read input file line by line
while IFS= read -r line; do
  # Convert each line to xdotool commands
  commands=$(convert_to_xdotool_commands "$line")
  
  # Append the commands to the output file
  echo -e "${commands}" >> "${output_file}"
done < "${input_file}"

echo "Conversion completed. The xdotool commands are stored in '${output_file}'."
