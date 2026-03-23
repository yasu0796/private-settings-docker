#!/bin/sh
docker compose run --rm -it ffmpeg -stats -i "/MyFiles/Downloads/share/1.ts" \
-ss 0 -c:v libsvtav1 -c:a copy -preset 5 -crf 35 -svtav1-params "tune=0:mbr=12228" -vf "bwdif=0:-1:1" -threads 0 \
"/MyFiles/Downloads/share/1.mp4"
