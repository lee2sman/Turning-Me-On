#!/bin/bash
# lee tusman workflow to convert all audio to wav
# dependencies: flac, sox, lame

# CHECK DEPENDENCIES

if which flac >/dev/null; then
	echo We have flac..continuing
else
	echo Exiting..please install sox.
	exit 1
fi

if which sox >/dev/null; then
	echo We have sox..continuing
else
	echo Exiting..please install sox.
	exit 1
fi

if which lame >/dev/null; then
	echo We have lame..continuing
else
	echo Exiting..please install lame.
	exit 1
fi

# CONVERT FLAC TO WAV
flac -d *.flac

# CONVERT MP3 TO WAV

EXT=".wav"
EXT1=".mp3"
EXT2=".aif"
for file in *
do
  case "$file" in

       *"$EXT" ) echo "$file is already a wav file" ;;

       *"$EXT1") `sox $file $file.wav` ;;
       *"$EXT2") `sox $file $file.wav` ;;

  esac
done
for n in `find -type f -name '*.wav'`;
do mv $n `basename $n .mp3.wav`.wav;
done

# REMOVE ALL ORIGINAL FILES
rm *.aif
rm *.flac
rm *.mp3
