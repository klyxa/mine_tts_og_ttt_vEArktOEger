#!/bin/bash
script_dir="$(cd "$(dirname "$0")" && pwd)"
cd "$script_dir"
xsel | ./filter_2 | espeak-ng -v da
