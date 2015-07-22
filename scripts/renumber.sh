#!/bin/bash
# batch rename all items in a folder regardless of title into sequential number order

i=1
for f in *.wav
    do
    mv "$f" "$( printf "%3d.wav" $i )"
    ((i++))
done