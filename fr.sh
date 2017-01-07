#!/bin/sh

# Find and replace text in a specified file.
# The following characters will be replaced by their ASCII equivalent.
# open single quote     ‘   ->  '
# close single quote    ’   ->  '
# open double quote     “   ->  "
# close double quote    ”   ->  "
# ellipses              …   ->  ...

filename=""

function show_usage {
    echo "fr"
    echo "  Find and replace text in a specified file."
    echo "Usage: fr <file>"
    echo ""
    echo "  -h, --help      Show usage"
}

if [ $# -eq 0 ]; then
    show_usage
    exit
fi

case $1 in
    -h | --help )       show_usage
                        exit
                        ;;
esac

filename="$1"
cp "$filename" "$filename".bak
echo "Processing $filename..."

sed -i -e "s/‘/'/g" "$filename"
sed -i -e "s/’/'/g" "$filename"
sed -i -e 's/“/"/g' "$filename"
sed -i -e 's/”/"/g' "$filename"
sed -i -e 's/…/.../g' "$filename"

echo "Done."
