#!/bin/bash

echo "file,transcription" > speech.csv
for I in *.wav; do
	echo -n "$I," >> speech.csv
	cat $I.txt >> speech.csv
done