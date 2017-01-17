#!/bin/sh

# Find and move files

function show_usage {
    echo "Find and move files"
    echo "fm <regex> <directory>"
    echo "  regex           regular expression used to find text"
    #echo "  directory       files where to find the specified text"
    echo "  destination     move target directory"
    echo ""
    echo "Example:"
    echo "  fm.sh \"^categories: \[press\" . ../../_posts/news/press/"
}

if [ "$#" -eq 0 ]; then
    show_usage
    exit
fi

if [ "$#" -lt 2 ]; then
    show_usage
    exit
fi

grep -ilZ -e "$1" "$2"/*.md | xargs -0 -I '{}' mv '{}' $3