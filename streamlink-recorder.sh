#!/bin/bash

# For more information visit: https://github.com/downthecrop/TwitchVOD

echo "Argument 1: $streamOptions"
echo "Argument 2: $streamLink"
echo "Argument 3: $streamQuality"
echo "Argument 4: $streamName"

IFS=';' read -r -a args <<< "$streamOptions"

while [ true ]; do
	Date=$(date +'%Y-%m-%d %Hh-%Mm-%Ss')
	streamlink "${args[@]}" "$streamLink" "$streamQuality" -o /home/download/"$streamName"/"$streamName"-"$Date".ts
	sleep 10s
done
