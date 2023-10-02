#!/bin/bash

# ./build-db.sh

IMAGE="${IMAGE:-registry.hop.io/robbi5/annosounds}"

datasette package sounds.db \
	-t $IMAGE:latest \
	--static static:static \
	--metadata metadata.yml \
    --extra-options "--cors" \
	--install datasette-block-robots \
	--install datasette-mp3-audio \
	--install datasette-graphql
