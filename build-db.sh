#!/bin/bash

HOST="${HOST:-https://annosounds.hop.sh}"

sqlite-utils insert sounds.db anno1602 speech.csv --csv -d --pk file
sqlite-utils add-column sounds.db anno1602 mp3
sqlite-utils sounds.db "update anno1602 set mp3 = '$HOST/static/sounds/anno1602/' || REPLACE(file,'.wav','.mp3')"

# enable search
sqlite-utils enable-fts sounds.db anno1602 transcription --tokenize porter
