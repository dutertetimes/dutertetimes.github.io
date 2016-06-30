#!/bin/sh

# Create a post file at current directory
# File format: YYYY-MM-DD-YYYYMMDDThhmmss.md

current_time=$(date -u +"%Y-%m-%d-%Y%m%dT%H%M%S")
filename=$current_time.md


function show_usage {
    echo "create_post"
    echo "  Create file in current directory in 'YYYY-MM-DD-YYYYMMDDThhmmss.md' format."
    echo "Usage: create_post [option]"
    echo ""
    echo "Options:"
    echo "  -a              Announcement file"
    echo "  -d, --draft     Draft post file"
    echo "  -nb             News bit file"
    echo "  -p              Post file"
    echo "  -h, --help      Show usage"
}

function add_yaml_bar {
    echo "---" >> $filename
}

function add_default {
    if [ $# -eq 0 ]; then
        echo "title: " >> $filename
    else
        echo "title: $1" >> $filename
    fi
    echo "date: $(date -u +'%Y-%m-%dT%H:%M:%S%Z')" >> $filename
}

function add_empty {
    echo >> $filename
    echo "Empty.&nbsp;&#x25cf;" >> $filename
}

function add_content {
    if [ $# -gt 0 ]; then
        echo >> $filename
        echo "$1" >> $filename
    fi
}

function create_post {
    if [ -e $filename ]; then
        echo "File ($(filename)) already exists."
    else
        touch $filename

        add_yaml_bar
        add_default
        echo "excerpt: " >> $filename
        echo "layout: post" >> $filename
        echo "categories: [post]" >> $filename
        echo "tags: " >> $filename
        if [ $# -eq 0 ]; then
            echo "published: true" >> $filename
        fi
        if [ "$1" = "draft" ]; then
            echo "published: false" >> $filename
        else
            echo "published: true" >> $filename
        fi
        add_yaml_bar
        add_empty

        echo "Post file created: $filename"
    fi
}

function create_newsbit {
    if [ $# -gt 0 ]; then
        if [ ${#1} -gt 140 ]; then
            echo "News bit text is more than 140 character. Aborting..."
            exit
        fi
    fi
    
    if [ -e $filename ]; then
        echo "File ($(filename)) already exists."
    else
        touch $filename

        add_yaml_bar
        add_default "News Bit"
        echo "categories: [newsbit]" >> $filename
        if [ $# -gt 0 ]; then
            echo "published: true" >> $filename
        else
            echo "published: false" >> $filename
        fi
        echo "reference: " >> $filename
        add_yaml_bar
        if [ $# -gt 0 ]; then
            add_content "$1"
            # Twitter client t does not allow tweets with more than 140 characters.
            # Truncation for now does nothing because of the check above which
            # does not allow messages with more than 140 characters.
            #
            # https://github.com/sferik/t
            if [ ${#1} -gt 140 ]; then
                echo "News bit text with ${#1} character(s) truncated."
                t update "${1:0:137}..."
            else
                t update "$1"
            fi
            git add $filename
            git commit -m "Add news bit"
            git push origin
        else
            add_empty
        fi
        
        echo "News bit file created: $filename"
    fi
}

function create_announcement {
    if [ -e $filename ]; then
        echo "File ($(filename)) already exists."
    else
        touch $filename
        
        add_yaml_bar
        add_default "Announcement"
        echo "datestart:      $(date -u +'%Y-%m-%d')" >> $filename
        echo "dateend:        $(date -u +'%Y-%m-%d')" >> $filename
        echo "eventdatestart: $(date -u +'%Y-%m-%d')" >> $filename
        echo "eventdateend:   $(date -u +'%Y-%m-%d')" >> $filename
        echo "categories: [announcement]" >> $filename
        echo "published: true" >> $filename
        echo "permalink: " >> $filename
        echo "link: " >> $filename
        add_yaml_bar
        echo "" >> $filename
        echo "<a href='/post/{{ page.link }}.html'>[read more...]</a> &#x25cf;" >> $filename;

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
    -d | --draft )  create_post draft
                    exit
                    ;;
    -nb )           create_newsbit "$2"
                    exit
                    ;;
    -p )            create_post
                    exit
                    ;;
    -h | --help )   show_usage
                    exit
                    ;;
esac
