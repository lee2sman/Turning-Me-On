#!/bin/bash
# play a random file

sound=$(( RANDOM % 133))
echo $sound.wav
afplay "$sound.wav"
