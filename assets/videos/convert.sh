#!/usr/bin/env bash
# Converts every .mp4 file in the current directory to .webm (VP9 + Opus)
# using ffmpeg.exe. Run this from a shell that can see ffmpeg.exe on PATH
# (e.g. Git Bash / WSL on Windows), with ffmpeg.exe placed in this folder
# or available on PATH.
 
set -euo pipefail
 
FFMPEG="./ffmpeg.exe"
if ! command -v "$FFMPEG" >/dev/null 2>&1; then
    FFMPEG="ffmpeg.exe"  # fall back to PATH
fi
 
shopt -s nullglob nocaseglob
mp4_files=(*.mp4)
shopt -u nocaseglob
 
if [ ${#mp4_files[@]} -eq 0 ]; then
    echo "No .mp4 files found in the current directory."
    exit 0
fi
 
for f in "${mp4_files[@]}"; do
    out="${f%.*}.webm"
    if [ -f "$out" ]; then
        echo "Skipping '$f' -> '$out' already exists."
        continue
    fi
 
    echo "Converting '$f' -> '$out'..."
    "$FFMPEG" -i "$f" \
        -c:v libvpx-vp9 -crf 32 -b:v 0 -deadline good -cpu-used 2 \
        -c:a libopus -b:a 128k \
        "$out"
done
 
echo "Done."
