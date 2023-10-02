#!/bin/bash

for I in *.wav; do 
	echo $I; 
	ffmpeg -i $I -vn -ar 22050 -ac 1 ${I%.*}.mp3;
	echo ""; 
done
