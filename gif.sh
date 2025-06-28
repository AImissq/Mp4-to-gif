#!/bin/bash

INPUT=$(zenity --file-selection --title="Select MP4 Video")
if [ -z "$INPUT" ]; then exit; fi

OUTPUT=$(zenity --entry --title="Output GIF" --text="Enter output filename (e.g., output.gif):")
if [ -z "$OUTPUT" ]; then exit; fi

ffmpeg -i "$INPUT" "$OUTPUT"

zenity --info --text="Conversion complete!"
