#!/bin/sh

# Create a post file at current directory
# File format: YYYY-MM-DD-title.md

current=`date -u`
current_date=`date -u --date="$current" +'%Y-%m-%d'`
current_iso8601=`date -u --date="$current" +'%Y-%m-%dT%H:%M:%S%Z'`
current_iso8601_short=`date -u --date="$current" +'%Y-%m-%dT%H%M%S%Z'`

# hashids.org
# hashids C implementation https://github.com/tzvetkoff/hashids.c

current_seconds=`date -u +%s`
hashid=`hashids --salt "dutertetimes" --min-length 15 $current_seconds`
filename="$current_iso8601_short-title".md


function show_usage {
    echo "create_post"
    echo "  Create file in current directory in 'YYYY-MM-DD-YYYYMMDDThhmmss.md' format."
    echo "Usage: create_post [option]"
    echo ""
    echo "Options:"
    echo "  -a              Announcement file"
    echo "  -i, --info      Informational post file"
    echo "  -nb             News bit file"
    echo "  -n, --news      News post file"
    echo "  -o, --opinion   Opinion post file"
    echo "  -s, --story     Story post file"
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
    echo "Malacañan" >> $filename
    echo "   dash-" >> $filename
    echo "en dash–" >> $filename
    echo "em dash—" >> $filename
    echo " open single quote ‘" >> $filename
    echo "close single quote ’" >> $filename
    echo " open double quote “" >> $filename
    echo "close double quote ”" >> $filename
    echo "ellipses …" >> $filename
    echo "Empty." >> $filename
    echo "&#x25cf;" >> $filename
}

function add_content {
    if [ $# -gt 0 ]; then
        echo >> $filename
        echo "$1" >> $filename
    fi
}

function create_news_post {
    if [ -e $filename ]; then
        echo "File ($filename) already exists."
    else
        touch $filename

        add_yaml_bar
        add_default "News"
        echo "excerpt: " >> $filename
        echo "layout: post" >> $filename
        echo "categories: [ governance | business | mining | manufacturing | services | agrarian | agriculture | agrarian reform | environment | transport | scitech | foreign_affairs | culture | peace_process | insurgency | cpp | mnlf | milf | senate | criminality | military | pnp | pcg | ofw | press_briefing ]" >> $filename
        echo "tags: []" >> $filename
        if [ $# -eq 0 ]; then
            echo "published: true" >> $filename
        else
            if [ "$1" = "draft" ]; then
                echo "published: false" >> $filename
            else
                echo "published: true" >> $filename
            fi
        fi
        echo "permalink: /news/$hashid" >> $filename
        echo "image:" >> $filename
        echo "  layout: auto_width" >> $filename
        echo "  source: " >> $filename
        echo "  attribution: " >> $filename
        echo "video:" >> $filename
        echo "  layout: [top | bottom]" >> $filename
        echo "  source: " >> $filename
        echo "  attribution: " >> $filename
        echo "sources:" >> $filename
        echo "  - label:" >> $filename
        echo "    link:" >> $filename
        add_yaml_bar
        add_empty

        echo "News post file created: $filename"
    fi
}

function create_story_post {
    if [ -e $filename ]; then
        echo "File ($filename) already exists."
    else
        touch $filename

        add_yaml_bar
        add_default "Story"
        echo "excerpt: " >> $filename
        echo "layout: post" >> $filename
        echo "categories: [ [headline | top] | governance | business | mining | manufacturing | services | agrarian | agriculture | agrarian reform | environment | transport | scitech | foreign_affairs | culture | peace_process | insurgency | cpp | mnlf | milf | senate | criminality | military | pnp | pcg | ofw | press_briefing ]" >> $filename
        echo "tags: []" >> $filename
        if [ $# -eq 0 ]; then
            echo "published: true" >> $filename
        else
            if [ "$1" = "draft" ]; then
                echo "published: false" >> $filename
            else
                echo "published: true" >> $filename
            fi
        fi
        echo "permalink: /stories/$hashid" >> $filename
        echo "image:" >> $filename
        echo "  layout: auto_width" >> $filename
        echo "  source: " >> $filename
        echo "  attribution: " >> $filename
        echo "video:" >> $filename
        echo "  layout: [top | bottom]" >> $filename
        echo "  source: " >> $filename
        echo "  attribution: " >> $filename
        echo "sources:" >> $filename
        echo "  - label:" >> $filename
        echo "    link:" >> $filename
        add_yaml_bar
        add_empty

        echo "Story post file created: $filename"
    fi
}

function create_opinion_post {
    filename="$hashid-title".md
    if [ -e $filename ]; then
        echo "File ($filename) already exists."
    else
        touch $filename

        add_yaml_bar
        add_default "Opinion"
        echo "excerpt: " >> $filename
        echo "layout: post" >> $filename
        echo "categories: [opinion]" >> $filename
        echo "tags: []" >> $filename
        if [ $# -eq 0 ]; then
            echo "published: true" >> $filename
        else
            if [ "$1" = "draft" ]; then
                echo "published: false" >> $filename
            else
                echo "published: true" >> $filename
            fi
        fi
        echo "permalink: /opinion/$hashid" >> $filename
        echo "image:" >> $filename
        echo "  layout: auto_width" >> $filename
        echo "  source: " >> $filename
        echo "  attribution: " >> $filename
        echo "video:" >> $filename
        echo "  layout: [top | bottom]" >> $filename
        echo "  source: " >> $filename
        echo "  attribution: " >> $filename
        echo "sources:" >> $filename
        echo "  - label:" >> $filename
        echo "    link:" >> $filename
        add_yaml_bar
        add_empty

        echo "Opinion post file created: $filename"
    fi
}

function create_info_post {
    filename="$hashid-title".md
    if [ -e $filename ]; then
        echo "File ($filename) already exists."
    else
        touch $filename

        add_yaml_bar
        echo "title: Info Post" >> $filename
        echo "excerpt: " >> $filename
        echo "layout: post" >> $filename
        echo "categories: [gov | law | company | org | people | place | doc | others]" >> $filename
        echo "tags: []" >> $filename
        if [ $# -eq 0 ]; then
            echo "published: true" >> $filename
        fi
        if [ "$1" = "draft" ]; then
            echo "published: false" >> $filename
        else
            echo "published: true" >> $filename
        fi
        echo "permalink: /info/.../$hashid" >> $filename
        #echo "link: /info/.../$hashid" >> $filename
        echo "image:" >> $filename
        echo "  layout: auto_width" >> $filename
        echo "  source: " >> $filename
        echo "  attribution: " >> $filename
        echo "sources:" >> $filename
        echo "  - label:" >> $filename
        echo "    link:" >> $filename
        add_yaml_bar
        add_empty

        echo "Information post file created: $filename"
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
        echo "File ($filename) already exists."
    else
        touch $filename

        add_yaml_bar
        add_default "News Bit"
        echo "categories: [ newsbit | governance | business | mining | manufacturing | services | agrarian | agriculture | agrarian reform | environment | transport | scitech | foreign_affairs | culture | peace_process | insurgency | cpp | mnlf | milf | senate | criminality | military | pnp | pcg | ofw | press_briefing ]" >> $filename
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
        echo "File ($filename) already exists."
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
        echo "link: " >> $filename
        echo "image:" >> $filename
        echo "  source: " >> $filename
        echo "  attribution: " >> $filename
        echo "sources:" >> $filename
        echo "  - label:" >> $filename
        echo "    link:" >> $filename
        add_yaml_bar
        add_empty

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
    -i | --info )       create_info_post draft
                        exit
                        ;;
    -nb | --newsbit)    create_newsbit "$2"
                        exit
                        ;;
    -n | --news )       create_news_post draft
                        exit
                        ;;
    -o | --opinion )    create_opinion_post draft
                        exit
                        ;;
    -s | --story )      create_story_post draft
                        exit
                        ;;
    -h | --help )       show_usage
                        exit
                        ;;
    * )                 show_usage
                        exit
                        ;;
esac
