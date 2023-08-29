#!/bin/bash

git pull
git submodule update --remote whisper.cpp
cd whisper.cpp/
##make large
make base.en


