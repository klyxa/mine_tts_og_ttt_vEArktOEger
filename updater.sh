#!/bin/bash

git pull
git submodule update --remote whisper.cpp
gcc ./filter_2.c -o filter_2
gcc ./tryg_komandoer.c -o tryg_komandoer

cd whisper.cpp/
##make large
make base.en

cd ..
cd piper
make


