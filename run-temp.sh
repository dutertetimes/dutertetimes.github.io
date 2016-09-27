#!/bin/sh

# Copy dutertetimes files to ramdisk

directory=dutertetimes.github.io
source=/mnt/work/projects/_github/dutertetimes/$directory
dest=/mnt/tmpfs

rsync -avzutXr --stats $source $dest --exclude .git --exclude _site --exclude news/.sass-cache/
