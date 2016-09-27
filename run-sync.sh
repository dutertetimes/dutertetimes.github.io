#!/bin/sh

# sync

current=`date -u`
current_short=`date -u --date="$current" +'%Y%m%dT%H%M%S'`

directory=dutertetimes.github.io
source=/mnt/tmpfs/$directory
dest=/mnt/work/projects/_github/dutertetimes

if [ -e $source ]; then
    mkdir $dest/$directory-$current_short
    rsync -avzutXrq $dest/$directory $dest/$directory-$current_short
    rsync -avzutXr --stats $source $dest --exclude _site --exclude news/.sass-cache/
else
    echo "Failed: Directory ($source/$directory) does not exist."
fi
