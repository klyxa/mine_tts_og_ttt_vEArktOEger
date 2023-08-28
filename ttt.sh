#!/bin/bash

aplay /home/klyx/ding.wav
cd /home/klyx/git/whisper.cpp/
beep
bash record.sh
ffmpeg -i recording.wav recording_2.wav
aplay /home/klyx/duk.wav
./main -f recording_2.wav -otxt
cat recording_2.wav.txt
#rm recording_2.wav.txt recording_2.wav recording.wav
rm recording_2.wav recording.wav
rm commands.txt
bash txt_til_tastatus.sh recording.wav.txt

copy_to_clipboard() {
  local text="$1"
  echo -n "${text}" | xclip -selection clipboard
}

text=$(cat "recording_2.wav.txt")

copy_to_clipboard "${text}"
aplay /home/klyx/ding.wav
