#!/bin/sh

# Create a post file at current directory
# File format: YYYY-MM-DD-hhmmss.md

function show_usage {
    echo "create_post"
    echo "  Create file in current directory in 'YYYY-MM-DD-YYYYMMDDhhmmss.md' format."
    echo "Usage: create_post [option]"
    echo ""
    echo "Options:"
    echo "  -a              Announcement file"
    echo "  -nb             News bit file"
    echo "  -p              Post file"
    echo "  -h, --help      Show usage"
}

function create_post {
    current_time=$(date +"%Y-%m-%d-%Y%m%d%H%M%S")
    filename=$current_time.md

    if [ -e $filename ]; then
        echo "File ($(filename)) already exists."
    else
        touch $filename

        echo "---" >> $filename
        echo "title: " >> $filename
        echo "date: $(date +'%B %d, %Y %I:%M:%S %p')" >> $filename
        echo "category: post" >> $filename
        echo "publish: true" >> $filename
        echo --- >> $filename

        echo "Post file created: $filename"
    fi
}

function create_newsbit {
    current_time=$(date +"%Y-%m-%d-%Y%m%d%H%M%S")
    filename=$current_time.md
    
    if [ -e $filename ]; then
        echo "File ($(filename)) already exists."
    else
        touch $filename

        echo "---" >> $filename
        echo "title: News Bit" >> $filename
        echo "date: $(date +'%B %d, %Y %I:%M:%S %p')" >> $filename
        echo "category: newsbit" >> $filename
        echo "publish: true" >> $filename
        echo "reference: " >> $filename
        echo --- >> $filename

        echo "News bit file created: $filename"
    fi
}

function create_announcement {
    current_time=$(date +"%Y-%m-%d-%Y%m%d%H%M%S")
    filename=$current_time.md

    if [ -e $filename ]; then
        echo "File ($(filename)) already exists."
    else
        touch $filename

        echo "---" >> $filename
        echo "title: Announcement" >> $filename
        echo "date: $(date +'%B %d, %Y %I:%M:%S %p')" >> $filename
        echo "category: announcement" >> $filename
        echo "publish: true" >> $filename
        echo --- >> $filename

        echo "Announcement file created: $filename"
    fi
}

##########
if [ $# -eq 0 ]; then
    show_usage
    exit
fi

case $1 in
    -a )            create_announcement
                    exit
                    ;;
    -nb )           create_newsbit
                    exit
                    ;;
    -p )            create_post
                    exit
                    ;;
    -h | --help )   show_usage
                    exit
                    ;;
esac
