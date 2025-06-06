#!/bin/bash

aplay duk.wav

#./whisper.cpp/stream -m ./whisper.cpp/models/ggml-base.en.bin -t 12 --step 500 --length 5000 | tee >(./filter_2 | ./tryg_komandoer | ./koer.sh)
./whisper.cpp/stream -m ./whisper.cpp/models/ggml-large-v3.bin -t 12 --step 500 --length 5000 | tee >(./tryg_komandoer | ./koer.sh)

aplay ding.wav
