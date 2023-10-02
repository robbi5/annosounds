#!/bin/bash

for I in *.wav; do 
	echo -n "$I: "; 
	vosk-transcriber -n vosk-model-de-0.21 -i $I --log-level ERROR -t txt -o $I.txt 2>/dev/null; 
	cat $I.txt; 
done
