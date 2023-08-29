#!/bin/bash

aplay ding.wav
#cd /home/klyx/git/whisper.cpp/
beep
bash record.sh
ffmpeg -i recording.wav recording_2.wav
aplay duk.wav

echo ""
echo ""

#./whisper.cpp/main -m ./whisper.cpp/models/for-tests-ggml-large.bin -f recording_2.wav -otxt
./whisper.cpp/main -m ./whisper.cpp/models/ggml-base.en.bin -f recording_2.wav -otxt

#cat recording_2.wav.txt
#rm recording_2.wav.txt recording_2.wav recording.wav
rm recording_2.wav recording.wav
#rm commands.txt
echo ""
echo ""

echo "#!/bin/bash" > mid.sh
cat ./recording_2.wav.txt | ./filter_2 | ./tryg_komandoer >> mid.sh
#cat mid.sh
bash mid.sh
#bash txt_til_tastatus.sh recording.wav.txt
echo ""
echo ""

copy_to_clipboard() {
  local text="$1"
  echo -n "${text}" | xclip -selection clipboard
}

text=$(cat "recording_2.wav.txt")

copy_to_clipboard "${text}"
aplay ding.wav
