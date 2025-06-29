#!/bin/bash

INPUT=$(zenity --file-selection --title="Select MP4 Video")
if [ -z "$INPUT" ]
then
    return $1
  fi
  
OUTPUT=$(zenity --entry --title="Output GIF" --text="Enter output filename (e.g., output.gif):")
if [ -z "$OUTPUT" ]
then
    return $1
  fi
  
ffmpeg -i "$INPUT" "$OUTPUT"

zenity --info --text="Conversion complete!"
exit
