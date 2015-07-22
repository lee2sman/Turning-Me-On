#!/bin/bash
# batch rename all items in a folder regardless of title into sequential number order
# warning: will throw an error if you have any 

cd ~/Documents/code/github\ projects/Turning-Me-On/sounds-organized/TEST # move to folder you wanna work in
i=1
for f in * # Caution: Will throw error with directories
    do
    mv "$f" "$( printf "%02d" $i )" # the 02d means generate file numbers 00-99. use 3d for 000-999. 
    sox -t mp3 $f ./$(basename $f)
    ((i++))
done