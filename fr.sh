#!/bin/sh

# Find and replace text in a specified file.
# The following characters will be replaced by their ASCII equivalents:
#   apostrophe          (U+0027) '  ->  '
#   open single quote   (U+2018) ‘  ->  '
#   close single quote  (U+2019) ’  ->  '
#   open double quote   (U+201C) “  ->  "
#   close double quote  (U+201D) ”  ->  "
#   ellipses            (U+2026) …  ->  ...
#   en dash             (U+2013) –  ->  --
#   em dash             (U+2014) —  ->  ---
#   em dash             (U+2014) —  ->  ---

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

# * Replace non-breaking space 'U+00A0', UTF-8 'C2A0' with space character 'U+0032'
# * Delete trailing whitespace at end of each line.
#   http://vim.wikia.com/wiki/VimTip878
#   's/\s\+$//g'
# * Compress consecutive blank lines into one blank line
#   http://www.unix.com/shell-programming-and-scripting/66836-replacing-multiple-lines-single-line.html
#   '/./,/^$/!d'

sed -in                                                         \
    -e "s/‘/'/g"                                                \
    -e "s/’/'/g"                                                \
    -e 's/“/"/g'                                                \
    -e 's/”/"/g'                                                \
    -e 's/…/.../g'                                              \
    -e 's/–/--/g'                                               \
    -e 's/—/---/g'                                              \
    -e 's/\*\*\*\*\*\*\*\*\*/\\*\\*\\*\\*\\*\\*\\*\\*\\*/g'     \
    -e 's/\*\*\*\*\*\*\*\*/\\*\\*\\*\\*\\*\\*\\*\\*/g'          \
    -e 's/\*\*\*\*\*\*\*/\\*\\*\\*\\*\\*\\*\\*/g'               \
    -e 's/\*\*\*\*\*\*/\\*\\*\\*\\*\\*\\*/g'                    \
    -e 's/\*\*\*\*\*/\\*\\*\\*\\*\\*/g'                         \
    -e 's/\*\*\*\*/\\*\\*\\*\\*/g'                              \
    -e 's/\*\*\*/\\*\\*\\*/g'                                   \
    -e 's/\*\*/\\*\\*/g'                                        \
    -e 's/\xC2\xA0/ /g'                                         \
    -e 's/\xA0/ /g'                                             \
    -e 's/\s*$//g'                                              \
    -e '/./,/^$/!d' "$filename"

# Delete trailing blank lines
# http://stackoverflow.com/a/7359879/6091491
#
# If combined with the above command, there are instances that
# empty lines are deleted.
sed -in -e :a -e '/^\n*$/{$d;N;};/\n$/ba' "$filename"

echo "Done."
