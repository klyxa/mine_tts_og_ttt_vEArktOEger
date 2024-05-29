#!/bin/bash
script_dir="$(cd "$(dirname "$0")" && pwd)"
cd "$script_dir"
aplay ding.wav
rm ./welcome.wav
rm ./welcome.mp3
xsel | /home/klyx/git/piper/piper/piper --model /home/klyx/git/piper/piper/en_US-hfc_male-medium.onnx --output_file welcome.wav && ffmpeg -i welcome.wav -filter:a "atempo=2.2" welcome.mp3 && open welcome.mp3
	#echo 'Welcome to the world of speech synthesis!' | ./piper --model en_US-hfc_male-medium.onnx --output_file welcome.wav
