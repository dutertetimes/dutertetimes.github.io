#!/bin/sh

# Find and replace text in a specified file.
# The following characters will be replaced by their ASCII equivalents:
#   apostrophe          (U+0027) '  ->  '
#   open single quote   (U+2018) ‘  ->  '
#   close single quote  (U+2019) ’  ->  '
#   open double quote   (U+201C) “  ->  "
#   close double quote  (U+201D) ”  ->  "
#   ellipses            (U+2026) …  ->  ...

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
sed -i -e 's/\*\*\+/——/g' "$filename"

echo "Done."
