#!/usr/bin/env bash
set -e
set -u
set -x
set -o pipefail

# Loop through directories in preview
for folder in preview/*; do
        # Only get the directory name, not anything before it
        folder2=${folder##*/}
        # If there isn't a git branch with that name, delete it 
        if ! git branch -r --sort=-committerdate | cut -d "/" -f 2 | grep -q "${folder2}"; then
                rm -rf "${folder}"
        fi
done
