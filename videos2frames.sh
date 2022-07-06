#!/bin/bash

for f in ./*.webm
do
  echo "Processing $f file..."
  # take action on each file. $f store current file name\
  basename=$(ff=${f%.ext} ; echo ${ff##*/})
  name=$(echo $basename | cut -d'.' --complement -f2-)
  echo $f
 ffmpeg -i "$f" -f image2 frames/"$name"/%6d.jpg
done

