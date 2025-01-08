#!/bin/sh

. "$HOME"/.local/bin/restic-env.sh

/usr/bin/restic backup \
    --verbose \
    --exclude-file="$exclude" \
    --files-from-verbatim="$files"

/usr/bin/restic prune \
    --verbose
