#!/bin/sh
MONITORDIR1="/media/film-in/"
MONITORDIR2="/media/tv-in/"

inotifywait -re close_write,moved_to -m --excludei '.*sample\.(avi|mkv|mp4)|.*NORMALIZED\.mkv|.*_unpack.*' --format '%w%f' $MONITORDIR1 $MONITORDIR2 |
    while read NEWFILE; do
        if [[ "$NEWFILE" =~ '.*\.(avi|AVI|MKV|mkv|mp4|MP4)' ]]; then # Does the file end with .xml?
            su-exec 1000:1000 pwsh /config/normalize.ps1 "$NEWFILE" &
        fi
    done

