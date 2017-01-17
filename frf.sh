#!/bin/sh

# Find and replace text in files

function show_usage {
    echo "Find and replace text in files"
    echo "frf <regex> <directory> <find> <replace>"
    echo "  regex       regular expression used to find text"
    echo "  directory   target directory"
    echo "  find        string to be replaced"
    echo "  replace     replacement string"
    echo ""
    echo "Example:"
    echo "  frf.sh \"^categories: \[press\" ./ \"\[press\" \"\[news, press\""
}

if [ "$#" -eq 0 ]; then
    show_usage
    exit
fi

if [ "$#" -lt 4 ]; then
    show_usage
    exit
fi

if [ "$1" = "--help" ]; then
   show_usage
   exit
fi

grep -lZ -e "$1" "$2"/*.md | xargs -0 sed -i 's/'"$3"'/'"$4"'/g'

