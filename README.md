annosounds
==========

[Anno 1602](https://de.wikipedia.org/wiki/Anno_1602) is a very nice simulation and strategy game. It contains announcements that happen at specific points in the game.

This repository makes these announcements easily accessible by browser, thanks to [datasette](https://github.com/simonw/datasette).

The sqlite database is created with [sqlite-utils](https://github.com/simonw/sqlite-utils) and displayed with [datasette](https://github.com/simonw/datasette), using the following plugins: 

* [datasette-block-robots](https://github.com/simonw/datasette-block-robots)
* [datasette-mp3-audio](https://github.com/simonw/datasette-mp3-audio)
* [datasette-graphql](https://github.com/simonw/datasette-graphql)

creating from scratch
---------------------
Get the Anno1602 Sounds from your _Anno1602: Königs-Edition_ installation by opening the installation folder and navigation to the `Sounds8` folder. Copy the `.wav` files to a new folder and execute `build-transcription.sh`, `build-csv.sh` as well as `build-mp3.sh`. 

Go through the resulting `speech.csv` and fix the automated transcription errors by hand.

Finally build the sqlite database by executing `build-db.sh` and the datasette docker container by `build.sh`.
