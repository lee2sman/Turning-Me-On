#!/bin/bash
# play a random file

sound=$(( RANDOM % 133))
afplay $sound.wav