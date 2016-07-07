#!/bin/sh

# Create a post file at current directory
# File format: YYYY-MM-DD-YYYYMMDDThhmmss.md

#current=$(date -u +"%Y-%m-%d-%Y%m%dT%H%M%S")
current=`date -u`
current_date=`date --date="$current" +'%Y-%m-%d'`
current_iso8601=`date --date="$current" +'%Y-%m-%dT%H:%M:%S%Z'`
current_short=`date --date="$current" +'%Y%m%dT%H%M%S'`
filename=`date --date="$current" +'%Y-%m-%d-%Y%m%dT%H%M%S'`.md



function show_usage {
    echo "create_post"
    echo "  Create file in current directory in 'YYYY-MM-DD-YYYYMMDDThhmmss.md' format."
    echo "Usage: create_post [option]"
    echo ""
    echo "Options:"
    echo "  -a              Announcement file"
    echo "  -d, --draft     Draft news post file"
    echo "  -f, --feature   Feature post file"
    echo "  -nb             News bit file"
    echo "  -p              News post file"
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
    echo "date: $current_iso8601" >> $filename
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
        add_default "Post"
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
        echo "image:"
        echo "  layout: auto_width" >> $filename
        echo "  source: " >> $filename
        echo "  attribution: " >> $filename
        add_yaml_bar
        add_empty

        echo "Post file created: $filename"
    fi
}

function create_feature_post {
    if [ -e $filename ]; then
        echo "File ($(filename)) already exists."
    else
        touch $filename

        add_yaml_bar
        add_default "Feature Post"
        echo "excerpt: " >> $filename
        echo "layout: post" >> $filename
        echo "datestart:  $current_date" >> $filename
        echo "dateend:    $current_date" >> $filename
        echo "style: blank | horizontal" >> $filename
        echo "categories: [info_feature | info_schedule | info_fallback]" >> $filename
        echo "tags: " >> $filename
        if [ $# -eq 0 ]; then
            echo "published: true" >> $filename
        fi
        if [ "$1" = "draft" ]; then
            echo "published: false" >> $filename
        else
            echo "published: true" >> $filename
        fi
        echo "image:"
        echo "  layout: auto_width" >> $filename
        echo "  source: " >> $filename
        echo "  attribution: " >> $filename
        echo "permalink: /feature/$current_short" >> $filename
        echo "link: $current_short" >> $filename
        add_yaml_bar
        add_empty

        echo "Feature post file created: $filename"
    fi
}

function create_newsbit {
    if [ $# -eq 0 ]; then
        echo "News bit text not supplied."
        exit
    fi
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
        echo "datestart:      $current_date" >> $filename
        echo "dateend:        $current_date" >> $filename
        echo "eventdatestart: $current_date" >> $filename
        echo "eventdateend:   $current_date" >> $filename
        echo "categories: [announcement]" >> $filename
        echo "published: true" >> $filename
        echo "image:"
        echo "  source: " >> $filename
        echo "  attribution: " >> $filename
        echo "link: " >> $filename
        add_yaml_bar
        echo "" >> $filename

        echo "Announcement file created: $filename"
    fi
}

##########
if [ $# -eq 0 ]; then
    show_usage
    exit
fi

case $1 in
    -a )                create_announcement
                        exit
                        ;;
    -d | --draft )      create_post draft
                        exit
                        ;;
    -f | --feature )    create_feature_post draft
                        exit
                        ;;
    -nb )               create_newsbit "$2"
                        exit
                        ;;
    -p )                create_post
                        exit
                        ;;
    -h | --help )       show_usage
                        exit
                        ;;
esac
