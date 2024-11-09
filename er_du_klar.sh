#!/bin/bash
script_dir="$(cd "$(dirname "$0")" && pwd)"
cd "$script_dir"

git pull
git submodule update --init --recursive

# List of programs/dependencies to check
dependencies=("xsel" "festival" "aplay" "whisper.cpp" "ffmpeg" "arecord" "espeak-ng" "xclip")

# ANSI color codes
RED='\033[0;31m'
NC='\033[0m'

# Function to check if a program is installed
check_dependency() {
    if command -v "$1" >/dev/null 2>&1; then
        echo "$1 is installed."
    else
        echo -e "${RED}$1 is not installed${NC}."
    fi
}

# Loop through the list of dependencies and check if each is installed
for dependency in "${dependencies[@]}"; do
    check_dependency "$dependency"
done

